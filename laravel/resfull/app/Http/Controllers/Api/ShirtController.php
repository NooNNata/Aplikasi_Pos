<?php

namespace App\Http\Controllers\Api;

use App\Models\Shirt;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\ShirtResource;
use Illuminate\Support\Facades\Validator;

class ShirtController extends Controller
{
    
    public function index(){
         //get posts
         $shirt = Shirt::latest()->paginate(5);

         //return collection of posts as a resource
         return new ShirtResource(true, 'List Data Baju', $shirt);
    }

    public function store(Request $request)
    {
        //define validation rules |image|mimes:jpeg,png,jpg,gif,svg|max:2048
        $validator = Validator::make($request->all(), [
            'image'     => 'required',
            'title'     => 'required',
            'description'   => 'required',
            'price'=>'required',
        ]);

        //check if validation fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //upload image
        // $image = $request->File('image');
        // $image->storeAs('public/posts', $image->hashName());

        //create post
        $shirt = Shirt::create([
            'image'     => $request->image,
            'title'     => $request->title,
            'description'   => $request->description,
            'price' => $request->price
        ]);

        //return response
        return new ShirtResource(true, 'Data Shirt Berhasil Ditambahkan!', $shirt);
    }
}
