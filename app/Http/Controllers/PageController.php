<?php

namespace App\Http\Controllers;

use App\Models\Policy;
use Illuminate\Http\Request;

class PageController extends Controller
{
    

    public function homePage(Request $request){
        return view('pages.home-page');
    }


    public function userLoginPage(Request $request){
        return view('pages.login-page');
    }

    public function verifyOTPPage(Request $request){
        return view('pages.OTPVerify-page');
    }


    public function userlogoutAction(Request $request){
        return redirect('/userLogin')->cookie('token', '', -1);
    }


    public function policyPageAction(Request $request){
        return view('pages.policy-page');
    }

    public function categoryPageAction(Request $request){
        return view('pages.category-product');
    }

    public function brandPageAction(Request $request){
        return view('pages.brand-product');
    }



    public function detailProductAction(Request $request){
        return view('pages.product-details-page');
    }

    public function cartPageAction(Request $request){
        return view('pages.cart-page');
    }

    public function wishPageAction(Request $request){
        return view('pages.wish-page');
    }

    
    public function profilePageAction(Request $request){
        return view('pages.profile-page');
    }


    public function productPageAction(Request $request){
        return view('pages.product-page');
    }



    public function policyPageShow(Request $request){
        $policy = Policy::where('type', '=', $request->type)->first();

        return response()->json([
            'status' => 'success',
            'data'   => $policy
        ], 200);
    }


}
