<?php

namespace App\Http\Controllers;

use App\Helper\JWTToken;
use Exception;
use App\Models\User;
use App\Mail\OTPMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class UserController extends Controller
{
    
    public function userLoginAction(Request $request){
        try{
            $userEmail = $request->userEmail;
            $otp       = rand(000000, 999999);
            $details   = ['code'=>$otp];

            // OTP code send to email
           // Mail::to($userEmail)->send(new OTPMail($details));
            
            // update otp code to database
            User::updateOrcreate(
                ['email' => $userEmail],
                ['email' => $userEmail, 'otp'=>$otp]
                
            );

            return response()->json([
                'status'    => 'success',
                'message'   => '6 digit OTP code has been sent successfully',
                'otp'       => $otp
            ]);
            

        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail to send OTP code',
                'error'     => $e->getMessage()
            ]);
        }
    }

    public function otpVerifyAction(Request $request){
        try{
            $userEmail = $request->userEmail;
            $otp       = $request->otp;

            $verification = User::where('email', '=', $userEmail)->where('otp', '=', $otp)->first();

            if($verification){
                User::where('email', '=', $userEmail)->update(['otp'=>1]);

                $token = JWTToken::createJWTToken($userEmail, $verification->id);

                return response()->json([
                    'status'    => 'success',
                    'message'   => 'OTP code has been verified successfully',
                    'token'     => $token,
                    'id'        => $verification->id
                ], 200)->cookie('token', $token, 60*24*30);
            }else{
                return response()->json([
                    'status'    => 'fail',
                    'message'   => 'OTP code is oncorrect'
                ]);
            }

        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'OTP code is oncorrect',
                'error'     => $e->getMessage()
            ], 401);
        }

    }




}
