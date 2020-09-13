<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Slider;


class SliderController extends Controller
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
    public function addslider()
    {
        
        return view('admin.addslider');
    }
    public function saveslider(Request $request)
    {
        $this->validate($request,[
            'description_one'=>'required',
            'description_two'=>'nullable',
            'slider_image'=>'image|nullable|max:1999'
        ]);
        

            if ($request->hasFile('slider_image')) {
                //1: get file name with ext
                $fileNameWithExt = $request->file('slider_image')->getClientOriginalName();
                //2: get just file name
                $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
                //3: get just extension
                $extension = $request->file('slider_image')->getClientOriginalExtension();
                //4: file name to store
                $fileNameToStore = $fileName.'_'.time().'.'.$extension;
                //up load image
                $path = $request->file('slider_image')->storeAs('public/slider_images',$fileNameToStore);

            }else {
                $fileNameToStore='noimage.jpg';
            }
            $slider = new Slider();
            $slider->description1 = $request->input('description_one');
            $slider->description2 = $request->input('description_two');
            $slider->slider_image = $fileNameToStore;
            $slider->status = 1;

            $slider->save();

            return redirect('/addslider')->with('status','The '.$slider->description1.' slider has been saved
            successfully');
        
        
    }
    public function editslider($id)
    {
        
        $slider = Slider::find($id);
        
        return view('admin.editslider')->with('slider',$slider);
    }
    public function updateslider(Request $request)
    {
        $this->validate($request,[
            'description_one'=>'required',
            'description_two'=>'required',
            'slider_image'=>'image|nullable|max:1999'
        ]);
        $slider = Slider::find($request->input('id'));
        
        $slider->description1 = $request->input('description_one');
        $slider->description2 = $request->input('description_two');
        
        if ($request->hasFile('slider_image')) {
            //1: get file name with ext
            $fileNameWithExt = $request->file('slider_image')->getClientOriginalName();
            //2: get just file name
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            //3: get just extension
            $extension = $request->file('slider_image')->getClientOriginalExtension();
            //4: file name to store
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            //up load image
            $path = $request->file('slider_image')->storeAs('public/slider_images',$fileNameToStore);
            $oldImage = Slider::find($request->input('id'));
            if ($oldImage->slider_image != 'noimage.jpg') {
                Storage::delete('public/slider_images/'.$oldImage->slider_image);
            }
            $slider->slider_image = $fileNameToStore;
        }
       
        $slider->update();

        return redirect('/sliders')->with('status','The '.$slider->description1.' slider has been updated
        successfully');
        
    }
    public function deleteslider($id)
    {
        $slider = Slider::find($id);
        
        if ($slider->slider_image != 'noimage.jpg') {
            Storage::delete('public/slider_images/'.$slider->slider_image);
        }
        $slider->delete();

        return redirect('/sliders')->with('status','The '.$slider->description1.' slider has been deleted
        successfully');

    }
    public function activateslider($id)
    {
        $slider = Slider::find($id);
        $slider->status = 1;
        $slider->update();
        return redirect('/sliders')->with('status','The '.$slider->description1.' slider has been activated
        successfully');
    }
    public function unactivateslider($id)
    {
        $slider = Slider::find($id);
        $slider->status = 0;
        $slider->update();
        return redirect('/sliders')->with('status','The '.$slider->description1.' slider has been unactivated
        successfully');
    }
    public function sliders()
    {   
        $sliders = Slider::all();
    return view('admin.sliders')->with('sliders',$sliders);
    }

    
}
