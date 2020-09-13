<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slider;
use App\Product;
use App\Category;
use Session;
use App\Cart;
use Stripe\Charge;
use Stripe\Stripe;
use App\Order;
use App\Client;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMail;

class ClientController extends Controller
{
    //
    public function home()
    {
        $sliders = Slider::where('status',1)->get();
        $products = Product::where('status',1)->get();
        return view('client.home')->with('sliders',$sliders)->with('products',$products);
    }
    public function shop()
    {
        $categories = Category::get();
        $products = Product::where('status',1)->paginate(12);
        return view('client.shop')->with('products',$products)->with('categories',$categories);
    }
    
    public function cart()
    {
        if (!Session::has('cart')) {
            
            return view('client.cart');
        }
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        
        return view('client.cart',['products'=>$cart->items]);

    }
    public function updateqty(Request $request)
    {
        // print('id'.$request->id.'qty'.$request->quantity);
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new cart($oldCart);
        $cart->updateQty($request->id,$request->quantity);
        Session::put('cart',$cart);

        return redirect('/cart');
    }
    public function removeitem($id)
    {
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);
        if (count($cart->items)>0) {
            Session::put('cart',$cart);
            
        }else {
            Session::forget('cart');
        }
        // dd(Session::get('cart'));
        return redirect('/cart');
    }
    public function checkout()
    {
        if (!Session::has('client')) {
            return redirect('/loginclient');
        }
        if (!Session::has('cart')) {
            return redirect('/cart');
        }
        return  view('client.checkout');
    }
    public function postcheckout(Request $request)
    {
        if (!Session::has('cart')) {
            return redirect('/cart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);

        Stripe::setApiKey('sk_test_51HQStMKbbimwNOBlLUBj1ereMFyInhi7gM35dm5176wl4CGXKOmEpmhuNMHy2Bwaf9kVkDFIcUB3THYkvUBhMuSO00L7JkzIKc');
        try{
            $charge = Charge::create(array(
                "amount" => Session::get('cart')->totalPrice,
                "currency" => "usd",
                "source" => $request->input('stripeToken'), // obtainded with Stripe.js
                "description" => "Test Charge"
            ));
            $order = new Order();
            $order->name = $request->input('name');
            $order->address = $request->input('address');
            $order->cart = serialize($cart);
            $order->payment_id = $charge->id;
            $order->save();


            $orders = Order::where('payment_id',$charge->id)->get();
            $orders->transform(function ($order,$key)
            {
                $order->cart = unserialize($order->cart);
                return $order;
            });
            $email = Session::get('client')->email;
            Mail::to($email)->send(new SendMail($orders));
        } catch(\Exception $e){
            Session::put('error', $e->getMessage());
            return redirect('/checkout');
        }

        Session::forget('cart');
        Session::put('success', 'Purchase accomplished successfully !');
        return redirect('/');
    }
    public function loginclient()
    {
        # code...
        return view('client.login');
    }
    public function signupclient()
    {
    
        return view('client.signup');
    }
    public function createaccount(Request $request)
    {
        $this->validate($request,[
            'email'=>'email|required|unique:clients',
            'pass'=>'required|min:4',
        ]);
        $client = new Client();
        $client->email = $request->input('email');
        $client->password = bcrypt($request->input('pass'));
        $client->save();
        return back()->with('status','Youe acccount has been created successfully');
    }
    public function assessaccount(Request $request)
    {   
        $this->validate($request,[
                        'email'=>'email|required',
                        'pass'=>'required|min:4',
                        ]);
        
        $client = Client::where('email',$request->input('email'))->first();
        if ($client) {
            
            if (Hash::check($request->input('pass'),$client->password)) {
                
                Session::put('client',$client);
                return redirect('/shop');
            }else {
                return back()->with('error','Wrong password or email');
            }
        
        }else {
            
            return back()->with('error','You dont have account' );
        }

    }
    public function logoutclient()
    {
        Session::forget('client');
        return redirect('/shop');
    }
    public function addtocart($id)
    {
    $product = Product::find($id);
    $oldCart = Session::has('cart')?Session::get('cart'):null;
    $cart = new Cart($oldCart);
    $cart->add($product,$id);
    Session::put('cart',$cart);

    // dd(Session::get('cart'));
    return redirect('/shop');


    }
    
}