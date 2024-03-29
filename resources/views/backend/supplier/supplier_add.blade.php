@extends('admin.admin_master')
@section('admin')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <div class="page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            <h4 class="card-title">Ajouter un fournisseur</h4>
                            <hr>

                            <form method="post" action="{{ route('supplier.store') }}" id="myForm">
                                @csrf

                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">Nom du fournisseur</label>
                                    <div class="form-group col-sm-10">
                                        <input class="form-control" name="name" type="text">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">fournisseur téléphone</label>
                                    <div class="form-group col-sm-10">
                                        <input class="form-control" name="mobile_no" type="text">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">fournisseur E-mail</label>
                                    <div class="form-group col-sm-10">
                                        <input class="form-control" name="email" type="email">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">fournisseur Addresse</label>
                                    <div class="form-group col-sm-10">
                                        <input class="form-control" name="address" type="text">
                                    </div>
                                </div>
                                <!-- end row -->

                                <hr>
                                <input type="submit" class="btn btn-dark btn-rounded waves-effect waves-light" 
                                value="Ajouter un fournisseur">
                        
                            </form>
                        </div>
                    </div>
                </div> <!-- end col -->
            </div>

        </div>
    </div>

    <script type="text/javascript">
    $(document).ready(function (){
        $('#myForm').validate({
            rules: {
                name: {
                    required : true,
                }, 
                //  mobile_no: {
                //     required : true,
                // },
                //  email: {
                //     required : true,
                // },
                //  address: {
                //     required : true,
                // },
            },
            messages :{
                name: {
                    required : "S'il vous plaît, entrez votre nom",
                },
                // mobile_no: {
                //     required : "S'il vous plaît entrez votre Numero de telephone",
                // },
                // email: {
                //     required : "S'il vous plaît, entrez votre Email",
                // },
                // address: {
                //     required : "S'il vous plaît, entrez votre Addresse",
                // },
            },
            errorElement : 'span', 
            errorPlacement: function (error,element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight : function(element, errorClass, validClass){
                $(element).addClass('is-invalid');
            },
            unhighlight : function(element, errorClass, validClass){
                $(element).removeClass('is-invalid');
            },
        });
    });
    
</script>

@endsection