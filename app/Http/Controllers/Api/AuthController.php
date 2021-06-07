<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use phpDocumentor\Reflection\Types\Collection;

class AuthController extends Controller
{
    public function register(Request $request)
    {

        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();

        $message = new User();
        if (!$user) {
            $user = new User();
            $user->email = $request->email;
            $user->name = 'username';
            $user->password = Hash::make($request->password);
            if ($user->save()) {
                $message->result = true;
                $message->message = "Register Successfully Done";
                $message->user_id = $user->id;

                return response($message, 200);

            }
        }
        $message->result = false;
        $message->message = "Email Already Exist";
        return response($message, 200);
    }


    public function login(Request $request)
    {
//        return $request;
        $message = new User();
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
        $user = User::where('email', $request->email)->first();


        if (!$user || !Hash::check($request->password, $user->password)) {
            $message->result = false;
            $message->message = 'The provided credentials are incorrect.';
        } else {
            $message->result = true;
            $message->name = $user->name;
            $message->id = $user->id;
            $message->email = $user->email;
            $message->login_time = Carbon::now();
            $message->token = $user->createToken(env('APP_TOKEN'))->accessToken;
        }
        return response($message);
    }

    public function logout(Request $request)
    {
        $result = $request->user()->currentAccessToken()->delete(); //or Auth::user()
        return $result;
    }

    public function products()
    {
        $products = collect();
        $pros = Product::all();
        foreach ($pros as $pro) {
            $product = new  Product();
            $product->title = $pro->title;
            $product->description = $pro->description;
            $product->price = $pro->price;
            $product->image = asset($pro->image);
            $products->push($product);
        }
        return response(['data' => $products], 200);
    }
}
