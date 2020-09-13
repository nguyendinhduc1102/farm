@extends('layouts.appadmin')
@section('title')
    Orders
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
              <h4 class="card-title">Orders</h4>
              <div class="row">
                <div class="col-12">
                  <div class="table-responsive">
                    <table id="order-listing" class="table">
                      <thead>
                        <tr>
                            <th>Order #</th>
                            <th>Client name</th>
                            <th>Address</th>
                            <th>Cart</th>
                            <th>Payment_id</th>
                            
                            <th>Actions</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach ($orders as $order)
                            
                        <tr>
                          <td>{{$incriment}}</td>
                            <td>{{$order->name}}</td>
                            <td>{{$order->address}}</td>
                            <td>
                              @foreach ($order->cart->items as $item)
                                {{$item['product_name'],', '}}    
                              @endforeach
                              
                            </td>
                            <td>{{$order->payment_id}}</td>
                            
                            <td>
                              <button class="btn btn-outline-primary"
                               onclick="window.location='{{url('/viewpdf/'.$order->id)}}'">
                                View
                              </button>
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
    <script src="b{{asset('ackend/js/data-table.js')}}"></script>
@endsection