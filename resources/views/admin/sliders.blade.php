@extends('layouts.appadmin')
@section('title')
    Sliders
@endsection
@section('content')
@if (Session::has('status'))
                    <div class="alert alert-success">
                      {{Session::get('status')}}
                    </div>
                
                    
                @endif
{!! Form::hidden('', $incriment=1) !!}
    <div class="card">
            <div class="card-body">
              <h4 class="card-title">Sliders</h4>
              <div class="row">
                <div class="col-12">
                  <div class="table-responsive">
                    <table id="order-listing" class="table">
                      <thead>
                        <tr>
                            <th>Order #</th>
                            <th>Desccription one</th>
                            <th>Desccription one</th>
                            <th>Slider image</th>
                            <th>Status</th>
                            
                            <th>Actions</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach ($sliders as $slider)
                            
                          <tr>
                              <td>{{$incriment}}</td>
                              <td>{{$slider->description1}}</td>
                              <td>{{$slider->description2}}</td>
                              <td><img src="/storage/slider_images/{{$slider->slider_image}}" alt="slider image"/></td>
                              
                              @if ($slider->status == 1)
                                <td>
                                  <label class="badge badge-success">Astivated</label>

                                </td>
                              @else
                                <td>
                                    <label class="badge badge-danger">Unactivited</label>

                                  </td>
                              @endif
                              <td>
                                <button class="btn btn-outline-primary" 
                                onclick="window.location='{{url('/editslider/'.$slider->id)}}'">Edit</button>
                                <a class="btn btn-outline-danger" id="delete"
                                href="/deleteslider/{{$slider->id}}">Delete</a>
                                 @if ($slider->status ==1)
                                    
                                  <button type="button" class="btn btn-outline-warning"
                                  onclick="window.location='{{url('/unactivateslider/'.$slider->id)}}'">Unactivated</button>
                                @else
                                  <button type="button" class="btn btn-outline-success"
                                  onclick="window.location='{{url('/activateslider/'.$slider->id)}}'">Activated</button>
                                    
                                @endif
                                
                              </td>
                          </tr>
                          {!! Form::hidden('', $incriment++) !!}
                        @endforeach
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>

          @endsection
@section('scripts')
    <script src="{{asset('backend/js/data-table.js')}}"></script>
@endsection