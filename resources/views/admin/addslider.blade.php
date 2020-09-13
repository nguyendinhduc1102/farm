
@extends('layouts.appadmin')
@section('title')
    Add slider
@endsection
@section('content')
    <div class="row grid-margin">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Create slider</h4>
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
                {!! Form::open(['action'=>'SliderController@saveslider','method'=>'POST','class'=>'cmxform','id'=>'commentForm','enctype'=>'multipart/form-data']) !!}
                    {{ csrf_field() }}  
                    <div class="form-group">
                        {!! Form::label('', 'Description one') !!}
                        {!! Form::text('description_one', '', ['class'=>'form-control','minlength'=>'2']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::label('', 'Description Two') !!}
                        {!! Form::text('description_two', '', ['class'=>'form-control','minlength'=>'2']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::label('', 'Product Image') !!}
                        {!! Form::file('slider_image', ['class'=>'form-control','minlength'=>'2']) !!}
                    </div>
                    
                    <div class="form-group">
                        {!! Form::label('', 'Product status') !!}
                        {!! Form::checkbox('slider_status', 'Status', 'true', ['class'=>'form-control']) !!}
                    </div>
                    
                
                        {!! Form::submit('Save', ['class'=>'btn btn-primary']) !!}
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
    <script src="{{asset('backend/js/bt-maxLength.js')}}"></script>
@endsection