<?php

namespace App\Http\Controllers;

use App\Models\CustomerProfile;
use Exception;
use App\Models\Product;
use App\Models\ProductCart;
use Illuminate\Http\Request;
use App\Models\ProductDetail;
use App\Models\ProductReview;
use App\Models\ProductSlider;
use App\Models\ProductWish;

class ProductController extends Controller
{
    

    public function productListShow(Request $request){
        try{
            $productList = Product::get();

            return response()->json([
                'status'    => 'success',
                'data'   => $productList
            ], 200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'success',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ], 401);
        }
    }


    public function productByBrandShow(Request $request){
        try{
            $brandProducts = Product::where('brand_id', '=', $request->id)->with('brand', 'category')->get();

            return response()->json([
                'status'    => 'success',
                'data'      => $brandProducts
            ],200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ],401);
        }
    }

    public function productByCategoryShow(Request $request){
        try{
            $categoryProducts = Product::where('category_id', '=', $request->id)->with('brand', 'category')->get();

            return response()->json([
                'status'    => 'success',
                'data'      => $categoryProducts
            ],200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ],401);
        }
    }

    public function productByRemarkShow(Request $request){
        try{
            $remarkProducts = Product::where('remark', '=', $request->remark)->with('brand', 'category')->get();

            return response()->json([
                'status'    => 'success',
                'data'      => $remarkProducts
            ],200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ],401);
        }
    }


    public function productDetailsShow(Request $request){
        try{
            $productDetails = ProductDetail::where('product_id', '=', $request->id)->with('product', 'product.brand', 'product.category')->first();

            return response()->json([
                'status'    => 'success',
                'data'      => $productDetails
            ],200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ],401);
        }
    }


    public function productSliiderShow(Request $request){
        try{
            $productSlider = ProductSlider::all();

            return response()->json([
                'status' => 'success',
                'data'   => $productSlider
            ],200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ],401);
        }
    }


    public function productReviewShow(Request $request){
        try{
            $productReview = ProductReview::where('product_id', '=', $request->product_id)->with(['customer'=>function($query){
                $query->select('id', 'cus_nam');
            }])->get();

            return response()->json([
                'status'    => 'success',
                'data'      => $productReview
            ], 200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'success',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ], 401);
        }
    }


    public function createProductReview(Request $request){
        try{
            $userId = $request->header('id');
            $request->merge(['user_id'=>$userId]);
            $productId = $request->input('product_id');

            $customer = CustomerProfile::where('user_id', '=', $userId)->first();
            

            if($customer){
                $review = ProductReview::updateOrCreate(
                    ['product_id'=>$productId, 'customer_id'=>$customer->id],
                    $request->input()
                );
            }

            return response()->json([
                'status'    => 'success',
                'message'   => 'You have left review successfully',
                'data'      => $review
            ]);

        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail to leave review',
                'error'     => $e->getMessage()
            ]);
        }
    }


    public function productCartListShow(Request $request){
        try{
            $userId = $request->header('id');
            $cartList = ProductCart::where('user_id', '=', $userId)->with('product')->get();

            return response()->json([
                'status'    => 'success',
                'data'      => $cartList
            ], 200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ], 401);
        }
    }


    public function createProductCartList(Request $request){
        try{
            $userId     = $request->header('id');
            $productId  = $request->input('product_id');
            $color      = $request->input('color');
            $size       = $request->input('size');
            $qty        = $request->input('qty');
            $unitPrice  = 0;

            $productDetails = Product::where('id', '=', $productId)->first();

            if($productDetails->discount == 1){
                $unitPrice = $productDetails->discount_price;
            }else{
                $unitPrice = $productDetails->price;
            }

            $totalPrice = $unitPrice*$qty;

            $cartProduct = ProductCart::updateOrCreate(
                ['user_id'=>$userId, 'product_id'=>$productId],
                [
                    'user_id' => $userId,
                    'product_id' => $productId,
                    'color' => $color,
                    'size' => $size,
                    'qty' => $qty,
                    'price' => $totalPrice
                ]
            );

            return response()->json([
                'status'    => 'success',
                'message'   => "Product has been added to cart list successfully",
                'list'      => $cartProduct
            ], 201);


        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => "Request fail to add product to cart list",
                'list'      => $e->getMessage()
            ], 401);
        }
    }


    public function deleteCartProduct(Request $request){
        try{
            $userId     = $request->header('id');
            $productId  = $request->product_id;

            ProductCart::where('user_id', '=', $userId)->where('product_id', '=', $productId)->delete();

            return response()->json([
                'status'    => 'success',
                'message'   => 'Product deleted from cart list successfully'
            ]);


        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request failed to delete product from cart list',
                'error'     => $e->getMessage()
            ]);
        }
    }

    public function countCartProduct(Request $request){
        try{
            $userId = $request->header('id');

            $countP = ProductCart::where('user_id', '=', $userId)->count();

            return response()->json([
                'status'    => 'success',
                'count'     => $countP
            ], 200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ], 401);
        }
    }


    public function productWishListShow(Request $request){
        try{
            $userId = $request->header('id');

            $wishProduct = ProductWish::where('user_id', '=', $userId)->with('product')->get();

            return response()->json([
                'status'    => 'success',
                'count'     => $wishProduct
            ], 200);
        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'     => $e->getMessage()
            ], 401);
        }
    }

    public function createWishProduct(Request $request){
        try{
            $userId = $request->header('id');
            $productId = $request->product_id;

            $wishP = ProductWish::updateOrCreate(
                ['user_id'=>$userId, 'product_id'=>$productId],
                ['user_id'=>$userId, 'product_id'=>$productId]
            );

            return response()->json([
                'status'    => 'success',
                'message'   => 'Product has been added to wish list',
                'count'     => $wishP
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


    public function deleteWishProduct(Request $request){
        try{
            $userId = $request->header('id');
            $productId = $request->product_id;

            ProductWish::where('user_id', '=', $userId)->where('product_id', '=', $productId)->delete();

            return response()->json([
                'status'    => 'success',
                'message'   => 'Product has been deleted to wish list',
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



    




}



