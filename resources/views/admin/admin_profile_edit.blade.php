@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <div class="page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            <h4 class="card-title">Editer le profil</h4>
                            <hr>

                            <form method="post" action="{{ route('store.profile') }}" enctype="multipart/form-data">
                                @csrf

                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">Nom et Prénom</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="name" type="text" value="{{ $editData->name }}" id="example-text-input">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">Nom d'utilisation</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="username" type="text" value="{{ $editData->username }}" id="example-text-input">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">E-mail d'utilisateur</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="email" type="text" value="{{ $editData->email }}" id="example-text-input">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">photo de profil</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="profile_image" type="file" id="image">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label"></label>
                                    <div class="col-sm-10">
                                        <img id="showImage" class="rounded-circle avatar-xl" src="{{ (!empty($editData->profile_image))? url('upload/admin_images/'
                                            .$editData->profile_image):url('upload/no_profile.png') }}"  alt="Card image cap" alt="Card image cap">
                                    </div>
                                </div>
                                <!-- end row -->
                                <hr>
                                <input type="submit" class="btn btn-warning btn-rounded waves-effect waves-light" value="Mettre le profil à jour">
                        
                            </form>
                        </div>
                    </div>
                </div> <!-- end col -->
            </div>

        </div>
    </div>

<script type="text/javascript">

    $(document).ready(function(){
        $('#image').change(function(e){
            var reader = new FileReader();
            reader.onload = function(e){
                $('#showImage').attr('src',e.target.result);
            }
            reader.readAsDataURL(e.target.files['0']);
        });
    });

</script>

@endsection