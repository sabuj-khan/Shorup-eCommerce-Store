<?php

namespace App\Http\Controllers;

use App\Helper\SSLCommerz;
use Exception;
use App\Models\Invoice;
use App\Models\ProductCart;
use Illuminate\Http\Request;
use App\Models\InvoiceProduct;
use App\Models\CustomerProfile;
use Illuminate\Support\Facades\DB;

class InvoiceController extends Controller
{
    
    public function invoiceListShow(Request $request){
        try{
            $userId = $request->header('id');

            $invoices = Invoice::where('user_id', '=', $userId)->get();

            return response()->json([
                'status'    => 'success',
                'data'      => $invoices
            ], 200);

            

        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail',
                'error'      => $e->getMessage()
            ], 401);
        }
    }

    public function invoiceCreation(Request $request){
        DB::beginTransaction();

        try{
            $userId          = $request->header('id');
            $userEmail       = $request->header('email');
            $tran_id         = uniqid();
            $delivery_status = 'Pending';
            $payment_status  = 'Pending';
            $total           = 0;

            $profile = CustomerProfile::where('user_id', '=', $userId)->first();

            $cus_details = "Name:$profile->cus_nam,Address:$profile->cus_add, City:$profile->cus_city,PostCode:$profile->cus_postcode,State:$profile->cus_state,Country:$profile->cus_country,Phone:$profile->cus_phone, Fax:$profile->cus_fax";

            $ship_details = "Name:$profile->ship_name, Address:$profile->ship_add, City:$profile->ship_city, PostCode:$profile->ship_postcode, State:$profile->ship_state, Country:$profile->ship_country, Phone:$profile->ship_phone";

            $cartList = ProductCart::where('user_id', '=', $userId)->get();

            foreach($cartList as $cartSingle){
                $total = $total + $cartSingle->price;
            }
            $vat = ($total*5)/100; // Vat 5% fixed, for example
            $payable = $total + $vat;

            $invoices = Invoice::create([
                'total'           => $total,
                'vat'             => $vat,
                'payable'         => $payable,
                'cus_details'     => $cus_details,
                'ship_details'    => $ship_details,
                'tran_id'         => $tran_id,
                'delivery_status' => $delivery_status,
                'payment_status'  => $payment_status,
                'user_id'         => $userId
            ]);

            $invoiceId = $invoices->id;

            foreach($cartList as $singleItem){
                InvoiceProduct::create([
                    'invoice_id' => $invoiceId,
                    'product_id' => $singleItem['product_id'],
                    'user_id'    => $userId,
                    'qty'        => $singleItem['qty'],
                    'sale_price' => $singleItem['price'],

                ]);
            }

            $paymentMethod = SSLCommerz::InitiatePayment($profile, $payable, $tran_id, $userEmail);
           
            DB::commit();

            return response()->json([
                'status'=>'success',
                'data'=>[
                    'paymentMethod'=>$paymentMethod,
                    'payable'=>$payable,
                    'vat'=>$vat,
                    'total'=>$total
                ],
            ], 201);
            

        }
        catch(Exception $e){
            DB::rollBack();
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request fail to create invoice',
                'error'      => $e->getMessage()
            ], 401);
        }
    }


    public function invoiceProductList(Request $request){
        try{
            $userId    = $request->header('id');
            $invoiceId = $request->invoice_id;

            $invo_product = InvoiceProduct::where('user_id', '=', $userId)->where('invoice_id', '=', $invoiceId)->with('product')->get();

            return response()->json([
                'status' => 'success',
                'data'   => $invo_product
            ], 200);


        }
        catch(Exception $e){
            return response()->json([
                'status'    => 'fail',
                'message'   => 'Request Fail',
                'error'     => $e->getMessage()
            ], 401);
        }
    }


    function PaymentSuccess(Request $request){
        SSLCommerz::InitiateSuccess($request->query('tran_id'));
        return redirect('/profile');
    }

    function PaymentFail(Request $request){
        SSLCommerz::InitiateSuccess($request->query('tran_id'));
        return redirect('/profile');
    }

    function PaymentCancel(Request $request){
        SSLCommerz::InitiateSuccess($request->query('tran_id'));
        return redirect('/profile');
    }


    function PaymentIPN(Request $request){
        SSLCommerz::PaymentIPN($request->input('tran_id'),$request->input('status'),$request->input('val_id'));
    }
    

}
