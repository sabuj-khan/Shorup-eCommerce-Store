<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Exception;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function brandListShow(Request $request){
        try{
            $brandList = Brand::get();

            return response()->json([
                'status'    => 'success',
                'data'      => $brandList
            ], 200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'success',
                'data'      => 'Request fail',
                'error'     => $e->getMessage()
            ], 401);
        }
    }



}
