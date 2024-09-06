<?php
namespace App\Helper;

use Exception;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;

class JWTToken {

    public static function createJWTToken($userEmail, $userId){
        $key = env('JWT_KEY');

        $payload = [
            'iss'=>'multiuser-token',
            'iat'=>time(),
            'exp'=>time()+60*60,
            'userEmail'=>$userEmail,
            'userId'=>$userId
        ];

        return JWT::encode($payload, $key, 'HS256');

    }

    public static function verifyJWTToken($token){
        try{
            if($token == null){
                return 'unauthorized';
            }else{
                $key = env('JWT_KEY');
                $decoded = JWT::decode($token, new Key($key, 'HS256'));
                return $decoded;
            }

        }
        catch(Exception $e){
            return 'unauthorized';
        }

    }


}