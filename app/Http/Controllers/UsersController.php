<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Users;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //insertar en la base de datos
        $result = Array(
            "status"=>0
        );

        try{
            $user = new Users();
            $user->name = $request->get("name");
            $user->email = $request->get("email");
            $user->password = bcrypt($request->get("password"));
            $user->id_cms_privileges = 2;
            $user->status= $request->get("status");
            $user->direccion = $request->get("direccion");
            $user->telefono = $request->get("telefono");
            $user->celular = $request->get("celular");
            $user->latitud = $request->get("latitud");
            $user->longitud = $request->get("longitud");

            $user->save();
            $result["status"] = 1;
            $result["message"] = "Usuario guardado correctamente";

        }catch(\Exception $e){
            $result["status"] = 0;
            $result["message"] = $e->getMessage();
        }

        return response()->json(compact("result","user"));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return response()->json(Users::find($id));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = Users::find($id);
        $user->name = $request->get("nombre");
        $user->direccion = $request->get("direccion");
        $user->telefono = $request->get("telefono");
        $user->celular = $request->get("celular");
        $user->latitud = $request->get("latitud");
        $user->longitud = $request->get("longitud");

        $image = $request->get("image");

        try{
            if(!is_null($image)){
                $image = base64_decode($image);
                $png_url = "profile-".time().".png";
                $path = public_path().'/img/' . $png_url;

                $result = file_put_contents($path,$image);
                if($result){
                    $user->photo = "img/".$png_url;
                }
            }

            $user->save();
        }catch (\Exception $e){
            return response()->json(["error"=>true,"msg"=>"Error al guardar datos"]);
        }
        return response()->json(["error"=>false,"msg"=>"Perfil guardado correctamente!","nombre"=>$user->name]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

}
