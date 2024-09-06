<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Exception;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    
    public function categoryListShow(Request $request){
        try{
            $categoryList = Category::get();
            
            return response()->json([
                'status'    => 'success',
                'data'      => $categoryList
            ], 200);

        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ], 200);
        }
    }



}
