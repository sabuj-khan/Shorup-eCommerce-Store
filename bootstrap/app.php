<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        api: __DIR__.'/../routes/api.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        $middleware->validateCsrfTokens(except: [
            'http://127.0.0.1:8000/profile-create',
            'http://127.0.0.1:8000/create-product-review',
            'http://127.0.0.1:8000/create-cart-list',
            'http://127.0.0.1:8000/invoice-create'
        ]);
    })
    ->withExceptions(function (Exceptions $exceptions) {
        //
    })->create();
