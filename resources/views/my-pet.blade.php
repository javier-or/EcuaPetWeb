<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset("css/bootstrap.min.css")}}">
    <title>Mascota perdida</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12 col-md-3">
            <div class="card">
                <img src="{{asset($data['foto_propietario'])}}" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">{{$data['propietario']}}</h5>
                    <p class="card-text"><b>Dirección</b>: {{$data['direccion']}}</p>
                    <a href="tel:{{$data['celular']}}" class="btn btn-primary">Llamar: {{$data['celular']}}</a>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-6">
            <div class="card" >
                <div class="card-body">
                    <h5 class="card-title">Mascota: {{$data['mascota']}}</h5>
                    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                    <p class="card-text">
                        <iframe class="iframe col-12" src="https://maps.google.com/maps?q={{$data['latitud']}},{{$data['longitud']}}&z=15&t=m&output=embed" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </p>
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>