<?php

namespace App\Http\Controllers;

use App\Models\Product;
use File;
use Illuminate\Http\Request;

class ProductController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
        $products = Product::all();
        return view('product.index',compact('products'));
    }

    public function create(){
        return view('product.create');
    }

    public function store(Request $request){
        $request->validate([
            'title'=>'required',
            'description'=>'required',
            'price'=>'required',
            'image'=>'required|mimes:png,jpg,jpeg',
        ],[
            'title.required'=>'Title is required',
            'description.required'=>'Description is required',
            'price.required'=>'Price is required',
            'image.required'=>'Image is required',
            'image.mimes'=>'Image type must be png  jpg and jpeg type',
        ]);
        $product = new Product();
        $product->title = $request->title;
        $product->description = $request->description;
        $product->price = $request->price;
        if($request->hasFile('image')) {
            $name = time().'_'.$request->image->getClientOriginalName();
            $filePath = $request->file('image')->storeAs('uploads', $name, 'public');
            $product->image = $filePath;

        }
        $product->save();

        return back()->with('success','Product is created');
    }

    public function edit($id){
        $product = Product::where('id',$id)->first();
        return view('product.edit',compact('product'));
    }

    public function update(Request $request){
        $request->validate([
            'title'=>'required',
            'description'=>'required',
            'price'=>'required',
            'image'=>'required|mimes:png,jpg,jpeg',
        ],[
            'title.required'=>'Title is required',
            'description.required'=>'Description is required',
            'price.required'=>'Price is required',
            'image.required'=>'Image is required',
            'image.mimes'=>'Image type must be png  jpg and jpeg type',
        ]);
        $product = Product::where('id',$request->id)->first();
        $product->title = $request->title;
        $product->description = $request->description;
        $product->price = $request->price;
        if($request->hasFile('image')) {
            $name = time().'_'.$request->image->getClientOriginalName();
            $filePath = $request->file('image')->storeAs('uploads', $name, 'public');
            $product->image = $filePath;

        }
        $product->save();

        return back()->with('success','Product is update');
    }

    public function show($id){
        $product = Product::where('id',$id)->first();
        return view('product.show',compact('product'));
    }

    public function destroy($id){
        $product = Product::where('id',$id)->first();
        if (File::exists($product->image)) {
            //File::delete($image_path);
            unlink($product->image);
        }
        $product->delete();
        return back()->with('success','Product deleted');
    }
}
