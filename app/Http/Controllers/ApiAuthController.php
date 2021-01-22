<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Exceptions\JWTException;

class ApiAuthController extends Controller
{
    public function userAuth(Request $request){
        $credentials = $request->only('email','password');

        $token = null;

        try{
            if(!$token = \JWTAuth::attempt($credentials)){
                return response()->json(['error'=>'Credenciales no validas']);
            }
        }catch (JWTException $ex){
            return response()->json(['error'=>'Ups, algo fue mal'], 500);
        }
        $user = \JWTAuth::toUser($token);// con el token busca la clase USER y nos devuelve los datos de usuario
        $user = User::find($user->id);
        $response = [
            "idUsuario"=>$user->id,
            "token"=>$token,
            "nombre"=>$user->name
        ];
        return response()->json($response);
    }
}
