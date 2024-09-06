<?php

namespace App\Http\Controllers;

use App\Models\CustomerProfile;
use Exception;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function profileCreateAction(Request $request){
        try{
            $userId = $request->header('id');
            $request->merge(['user_id'=>$userId]);

            $profileInfo = CustomerProfile::updateOrCreate(
                ['user_id'=>$userId],
                [
                    'cus_nam'       => $request->input('cus_nam'),
                    'cus_add'       => $request->input('cus_add'),
                    'cus_city'      =>$request->input('cus_city'),
                    'cus_state'     => $request->input('cus_state'),
                    'cus_postcode'  => $request->input('cus_postcode'),
                    'cus_country'   => $request->input('cus_country'),
                    'cus_phone'     => $request->input('cus_phone'),
                    'cus_fax'       => $request->input('cus_fax'),
                    'ship_name'     => $request->input('ship_name'),
                    'ship_add'      => $request->input('ship_add'),
                    'ship_city'     => $request->input('ship_city'),
                    'ship_state'    => $request->input('ship_state'),
                    'ship_postcode' => $request->input('ship_postcode'),
                    'ship_country'  => $request->input('ship_country'),
                    'ship_phone'    => $request->input('ship_phone'),
                    'user_id'       => $userId
                ]
            );

            return response()->json([
                'status'    => 'success',
                'message'   => 'Profile created successfully',
                'info'      => $profileInfo
            ], 201);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ], 401);
        }
    }


    public function profileInfoShow(Request $request){
        try{
            $userId = $request->header('id');
            $profileInfo = CustomerProfile::where('user_id', '=', $userId)->first();
            
            return response()->json([
                'status'    => 'success',
                'info'      => $profileInfo
            ], 200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ]);
        }
    }












}
