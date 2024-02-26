@extends('admin.admin_master')
@section('admin')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <div class="page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            <h4 class="card-title">modifier le Clients</h4>
                            <hr>

                            <form method="post" action="{{ route('customer.update') }}" id="myForm"
                            enctype="multipart/form-data">
                                @csrf

                                <input type="hidden" name="id" value="{{ $customer->id }}">

                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">Nom du client</label>
                                    <div class="form-group col-sm-10">
                                        <input class="form-control" name="name" value="{{ $customer->name }}" type="text">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">tel du client</label>
                                    <div class="form-group col-sm-10">
                                        <input class="form-control" name="mobile_no" value="{{ $customer->mobile_no }}" type="text">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">E-mail du client</label>
                                    <div class="form-group col-sm-10">
                                        <input class="form-control" name="email" value="{{ $customer->email }}" type="email">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">Address du client</label>
                                    <div class="form-group col-sm-10">
                                        <input class="form-control" name="address" value="{{ $customer->address }}" type="text">
                                    </div>
                                </div>
                                <!-- end row -->

                                <hr>
                                <input type="submit" class="btn btn-dark btn-rounded waves-effect waves-light" 
                                value="mettre à jour le client">
                        
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
                // name: {
                //     required : true,
                // }, 
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
                // name: {
                //     required : "S'il vous plaît, entrez votre nom",
                // },
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