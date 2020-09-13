<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
class AdminController extends Controller
{
    /**
    * Create a new controller instance.
    *
    * @return void
    */
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function dashboard(Type $var = null)
    {
        # code...
        return view('admin.dashboard');
    }
    
    public function orders(Type $var = null)
    {
        $orders = Order::get();
        $orders->transform(function($order,$key){
            $order->cart = unserialize($order->cart);
            return $order;
        });
        return view('admin.orders')->with('orders',$orders);
    }
}
