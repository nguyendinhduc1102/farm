<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Product;
use App\Category;
use Session;
use App\cart;

class ProductController extends Controller
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
    public function addproduct()
    {
        $categories = Category::All()->pluck('category_name','category_name');
        return view('admin.addproduct')->with('categories',$categories);
    }
    public function saveproduct(Request $request)
    {
        $this->validate($request,[
            'product_name'=>'required',
            'product_price'=>'required',
            'product_image'=>'image|nullable|max:1999'
        ]);
        if ($request->input('product_category')) {

            if ($request->hasFile('product_image')) {
                //1: get file name with ext
                $fileNameWithExt = $request->file('product_image')->getClientOriginalName();
                //2: get just file name
                $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
                //3: get just extension
                $extension = $request->file('product_image')->getClientOriginalExtension();
                //4: file name to store
                $fileNameToStore = $fileName.'_'.time().'.'.$extension;
                //up load image
                $path = $request->file('product_image')->storeAs('public/product_images',$fileNameToStore);

            }else {
                $fileNameToStore='noimage.jpg';
            }
            $product = new Product();
            $product->product_name = $request->input('product_name');
            $product->product_price = $request->input('product_price');
            $product->product_category = $request->input('product_category');
            $product->product_image = $fileNameToStore;
            $product->status = 1;

            $product->save();

            return redirect('/addproduct')->with('status','The '.$product->product_name.' product has been saved
            successfully');
        }else {
            return redirect('/addproduct')->with('status1','Do select the category please');
        }
        
    }
    public function editproduct($id)
    {
        $categories = Category::All()->pluck('category_name','category_name');
        $product = Product::find($id);
        
        return view('admin.editproduct')->with('product',$product)->with('categories',$categories);
    }
    public function updateproduct(Request $request)
    {
        $this->validate($request,[
                    'product_name'=>'required',
                    'product_price'=>'required',
                    'product_image'=>'image|nullable|max:1999'
                    ]);
        $product = Product::find($request->input('id'));
        
        $product->product_name = $request->input('product_name');
        $product->product_price = $request->input('product_price');
        $product->product_category = $request->input('product_category');
        
        if ($request->hasFile('product_image')) {
            //1: get file name with ext
            $fileNameWithExt = $request->file('product_image')->getClientOriginalName();
            //2: get just file name
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            //3: get just extension
            $extension = $request->file('product_image')->getClientOriginalExtension();
            //4: file name to store
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            //up load image
            $path = $request->file('product_image')->storeAs('public/product_images',$fileNameToStore);
            $oldImage = Product::find($request->input('id'));
            if ($oldImage->product_image != 'noimage.jpg') {
                Storage::delete('public/product_images/'.$oldImage->product_image);
            }
            $product->product_image = $fileNameToStore;
        }
       
        $product->update();

        return redirect('/products')->with('status','The '.$product->product_name.' product has been updated
        successfully');
        
    }
    public function deleteproduct($id)
    {
        $product = Product::find($id);
        
        if ($product->product_image != 'noimage.jpg') {
            Storage::delete('public/product_images/'.$product->product_image);
        }
        $product->delete();

        return redirect('/products')->with('status','The '.$product->product_name.' product has been deleted
        successfully');

    }
    public function activateproduct($id)
    {
        $product = Product::find($id);
        $product->status = 1;
        $product->update();
        return redirect('/products')->with('status','The '.$product->product_name.' product has been activated
        successfully');
    }
    public function unactivateproduct($id)
    {
        $product = Product::find($id);
        $product->status = 0;
        $product->update();
        return redirect('/products')->with('status','The '.$product->product_name.' product has been unactivated
        successfully');
    }
    public function products()
    {   
        $products = Product::get();
    return view('admin.products')->with('products',$products);
    }
      
}
