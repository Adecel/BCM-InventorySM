@extends('admin.admin_master')
@section('admin')

    <div class="page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            <h4 class="card-title">Modifie le mot de passe</h4>
                            <hr>

                            <form method="post" action="{{ route('update.password') }}">
                                @csrf

                                @if(count($errors))
                                    @foreach ($errors->all() as $error)
                                        <p class="alert alert-danger">
                                            {{ $error }}
                                        </p>
                                    @endforeach
                                @endif

                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">Ancien mot de passe</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="oldpassword" type="password" id="oldpassword">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">Nouveau mot de passe</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="newpassword" type="password" id="newpassword">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">Confirmez le mot de passe</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" name="confirm_password" type="password" id="confirm_password">
                                    </div>
                                </div>
                                <!-- end row -->

                                <hr>
                                <input type="submit" class="btn btn-warning btn-rounded waves-effect waves-light" 
                                value="Changer le mot de passe">
                        
                            </form>
                        </div>
                    </div>
                </div> <!-- end col -->
            </div>

        </div>
    </div>


@endsection