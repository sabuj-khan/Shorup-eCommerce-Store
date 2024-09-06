<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CategoryController;
use App\Http\Middleware\TokenAuthentication;

// Route::get('/', function () {
//     return view('welcome');
// });



// All front page APIs
Route::get('/', [PageController::class, 'homePage']);
Route::get('/userLogin', [PageController::class, 'userLoginPage']);
Route::get('/verifyOTP', [PageController::class, 'verifyOTPPage']);
Route::get('/userlogout', [PageController::class, 'userlogoutAction']);
Route::get('/policyPage', [PageController::class, 'policyPageAction']);
Route::get('/categoryPage', [PageController::class, 'categoryPageAction']);
Route::get('/brandPage', [PageController::class, 'brandPageAction']);
Route::get('/detailProduct', [PageController::class, 'detailProductAction']);
Route::get('/productPage', [PageController::class, 'productPageAction']);

Route::get('/cartPage', [PageController::class, 'cartPageAction'])->middleware([TokenAuthentication::class]);
Route::get('/wishList', [PageController::class, 'wishPageAction'])->middleware([TokenAuthentication::class]);
Route::get('/profile', [PageController::class, 'profilePageAction'])->middleware([TokenAuthentication::class]);




// User authentication APIs
Route::get('/user-login/{userEmail}', [UserController::class, 'userLoginAction']);
Route::get('/otp-verify/{userEmail}/{otp}', [UserController::class, 'otpVerifyAction']);

// Customer profile APIs
Route::post('/profile-create', [ProfileController::class, 'profileCreateAction'])->middleware([TokenAuthentication::class]);
Route::get('/profile-info', [ProfileController::class, 'profileInfoShow'])->middleware([TokenAuthentication::class]);

// Brand APIs
Route::get('/brand-list', [BrandController::class, 'brandListShow']);

// Category APIs
Route::get('/category-list', [CategoryController::class, 'categoryListShow']);

// Product APIs
Route::get('/product-list', [ProductController::class, 'productListShow']);
Route::get('/product-by-brand/{id}', [ProductController::class, 'productByBrandShow']);
Route::get('/product-by-category/{id}', [ProductController::class, 'productByCategoryShow']);
Route::get('/product-by-remark/{remark}', [ProductController::class, 'productByRemarkShow']);
Route::get('/product-details/{id}', [ProductController::class, 'productDetailsShow']);

// Slider APIs
Route::get('/product-slider', [ProductController::class, 'productSliiderShow']);

// Product Review APIs
Route::get('/product-review/{product_id}', [ProductController::class, 'productReviewShow']);
ROute::post('/create-product-review', [ProductController::class, 'createProductReview'])->middleware([TokenAuthentication::class]);

// Policy APIs
Route::get('/policy/{type}', [PageController::class, 'policyPageShow']);

// Product Cart APIs
Route::get('/product-cart-list', [ProductController::class, 'productCartListShow'])->middleware([TokenAuthentication::class]);
Route::post('/create-cart-list', [ProductController::class, 'createProductCartList'])->middleware([TokenAuthentication::class]);
Route::get('/delete-cart-product/{product_id}', [ProductController::class, 'deleteCartProduct'])->middleware([TokenAuthentication::class]);
Route::get('/count-cart-product', [ProductController::class, 'countCartProduct'])->middleware([TokenAuthentication::class]);

// Product Wish List APIs
Route::get('/product-wish-list', [ProductController::class, 'productWishListShow'])->middleware([TokenAuthentication::class]);
Route::get('/create-wish-list/{product_id}', [ProductController::class, 'createWishProduct'])->middleware([TokenAuthentication::class]);
Route::get('/delete-wish-list/{product_id}', [ProductController::class, 'deleteWishProduct'])->middleware([TokenAuthentication::class]);

// Invoice APIs
Route::get('/invoice-list', [InvoiceController::class, 'invoiceListShow'])->middleware([TokenAuthentication::class]);
Route::post('/invoice-create', [InvoiceController::class, 'invoiceCreation'])->middleware([TokenAuthentication::class]);
Route::get('/invoice-product-list/{invoice_id}', [InvoiceController::class, 'invoiceProductList'])->middleware([TokenAuthentication::class]);



// Payment APIs
Route::post('/PaymentSuccess', [InvoiceController::class, 'PaymentSuccess']);
Route::post('/PaymentFail', [InvoiceController::class, 'PaymentFail']);
Route::post('/PaymentCancel', [InvoiceController::class, 'PaymentCancel']);







