@extends('layouts.appadmin')
@section('title')
    Edit product
@endsection
@section('content')
    <div class="row grid-margin">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Edit product</h4>
                 @if (Session::has('status'))
                    <div class="alert alert-success">
                      {{Session::get('status')}}
                    </div>   
                @endif
                @if (Session::has('status1'))
                    <div class="alert alert-danger">
                      {{Session::get('status1')}}
                    </div>   
                @endif
                {!! Form::open(['action'=>'ProductController@updateproduct','method'=>'POST','class'=>'cmxform','id'=>'commentForm','enctype'=>'multipart/form-data']) !!}
                    {{ csrf_field() }}  
                    <div class="form-group">
                        {!! Form::hidden('id', $product->id) !!}
                        {!! Form::label('', 'Product Name') !!}
                        {!! Form::text('product_name',$product->product_name, ['class'=>'form-control','minlength'=>'2']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::label('', 'Product Price') !!}
                        {!! Form::number('product_price',$product->product_price, ['class'=>'form-control','minlength'=>'2']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::label('', 'Product Category') !!}
                        {!! Form::select('product_category',$categories,$product->product_category, ['class'=>'form-control','placeholder'=>'Select']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::label('', 'Product Image') !!}
                        {!! Form::file('product_image', ['class'=>'form-control','minlength'=>'2']) !!}
                    </div>
                    
                    
                        {!! Form::submit('Update', ['class'=>'btn btn-primary']) !!}
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
    <script src="{{asset('backend/js/bt-maxLength.js')}}"></script>
@endsection