<?php

namespace App\Http\Controllers;

use App\Mascota;
use App\Users;
use Illuminate\Http\Request;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class MascotaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $id = $request->get("id");
        return Mascota::where("cms_users_id",$id)->get();
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
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $result = Array(
            "status"=>0
        );

        try {
            $mascota = new Mascota();

            $mascota->cms_users_id = $request->get("id");
            $mascota->nombre = $request->get("nombre");
            $mascota->edad_anios = $request->get("edad_anios");
            $mascota->edad_meses = $request->get("edad_meses");
            $mascota->raza = $request->get("raza");
            $mascota->genero = $request->get("genero");
            $mascota->color = $request->get("color");
            $mascota->alergias = $request->get("alergias");
            $mascota->peso = $request->get("peso");
            $mascota->descripcion = $request->get("descripcion");

            $image = base64_decode($request->get("image"));

            if(!is_null($image)){
                $png_url = "dog-".time().".png";
                $path = public_path().'/img/dogs/' . $png_url;
                $result = file_put_contents($path,$image);
                if($result){
                    $mascota->foto = "img/dogs/".$png_url;
                }
            }

            //crear el codigo QR
            $mascota->save();

            /**
            * QR CODE
             */
            $path2 = 'img/qrs/mascota_'.$mascota->id.'.png';

            QrCode::format('png')->size(200)->generate("http://".env("IP_PETAPP")."/my-pet/".$mascota->id,$path2);

            $mascota->qr_code = $path2;
            $mascota->save();

        }catch(\Exception $e){
            return response()->json(["error"=>true,"msg"=>"Error al guardar datos"]);
        }
        return response()->json(["error"=>false,"msg"=>"Mascota guardada correctamente!","idMascota"=>$mascota->id,"nombre"=>$mascota->nombre]);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return response()->json(Mascota::find($id));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function myPet($id){
        $mascota = Mascota::find($id);
        $user = Users::find($mascota->cms_users_id);
        $data = [
            "propietario"=>$user->name,
            "direccion"=>$user->direccion,
            "mascota"=>$mascota->nombre,
            "latitud"=>$user->latitud,
            "longitud"=>$user->longitud,
            "foto_propietario"=>$user->photo,
            "celular"=>$user->celular,
        ];
        return view("my-pet",compact("data"));
    }
}
