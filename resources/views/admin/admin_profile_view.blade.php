@extends('admin.admin_master')
@section('admin')


    <div class="page-content">
        <div class="container-fluid">
            <div class="row">

                <div class="col-lg-6">
                    <div class="card">
                        <br>
                        <center>
                        <!-- img-thumbnail rounded-circle avatar-xl -->
                            <img class="img-thumbnail rounded-circle avatar-xl" src="{{ (!empty($adminData->profile_image))? url('upload/admin_images/'
                            .$adminData->profile_image):url('upload/no_profile.png') }}"  alt="Card image cap">
                        </center>
                        <!-- <hr> -->
                        <!-- <br> -->
                        <center>
                            <div class="card-body">
                                <h4 class="card-title"> Nom et Prénom : {{ $adminData->name }}</h4>
                                <h4 class="card-title"> Nom d'utilisateur : {{ $adminData->username }}</h4>
                                <!-- <hr> -->
                                <h4 class="card-title"> E-mail d'utilisateur : {{ $adminData->email }}</h4>
                                <hr>
                                <a href="{{ route ('edit.profile') }}" class="btn btn-warning btn-rounded waves-effect waves-light">Editer le profil</a>
                                <!-- <h4 class="card-title">User : {{ $adminData->name }}</h4> -->
                                <!-- <p class="card-text">This is a wider card with supporting text below as a
                                    natural lead-in to additional content. This content is a little bit
                                    longer.</p>
                                <p class="card-text">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </p> -->
                            </div>
                        </center>
                    </div>
                </div>
        
            </div>
        </div>
    </div>





@endsection