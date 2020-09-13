@extends('layouts.appadmin')
@section('title')
    Products
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
              <h4 class="card-title">Products</h4>
              <div class="row">
                <div class="col-12">
                  <div class="table-responsive">
                    <table id="order-listing" class="table">
                      <thead>
                        <tr>
                            <th>Order #</th>
                            <th>Product name</th>
                            <th>Product price</th>
                            <th>Product category</th>
                            <th>Product image</th>
                            <th>Status</th>
                            
                            <th>Actions</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach ($products as $product) 
                          <tr>
                              <td>{{$incriment}}</td>
                              <td>{{$product->product_name}}</td>
                              <td>{{$product->product_price}}</td>
                              <td>{{$product->product_category}}</td>
                              <td><img src="/storage/product_images/{{$product->product_image}}" alt="product image"/></td>
                              
                              <td>
                                @if ($product->status == 1)
                                    <label class="badge badge-success">Astivated</label>
                                  
                                @else
                                  
                                  <label class="badge badge-danger">Unactivited</label>

                                @endif
                              </td>
                              <td>
                                <button class="btn btn-outline-primary" 
                                onclick="window.location='{{url('/editproduct/'.$product->id)}}'">Edit</button>
                                <a class="btn btn-outline-danger" id="delete"
                                href="/deleteproduct/{{$product->id}}">Delete</a>
                                 @if($product->status == 1)
                                  <button type="button" class="btn btn-outline-warning"
                                  onclick="window.location='{{url('/unactivateproduct/'.$product->id)}}'">Unactivated</button>
                                @else
                                  <button type="button" class="btn btn-outline-success"
                                  onclick="window.location='{{url('/activateproduct/'.$product->id)}}'">Activated</button>    
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