@extends('layouts.app1')
@section('title')
    Checkout
@endsection
@section('content')
    <div class="hero-wrap hero-bread" style="background-image: url('fontend/images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Checkout</span></p>
            <h1 class="mb-0 bread">Checkout</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-7 ftco-animate">
			{!! Form::open(['action'=>'ClientController@postcheckout','method'=>'POST',
			'id'=>'checkout-form','class'=>'billing-form']) !!}
			{{ csrf_field() }}
				<h3 class="mb-4 billing-heading">Billing Details</h3>
				@if (Session::has('error'))
					<div class="alert alert-danger" role="alert">
					  {{Session::get('error')}}
					  {{Session::put('error',null)}}
					</div>
				@endif
	          	<div class="row align-items-end">
	          		<div class="col-md-12">
	                <div class="form-group">
	                	<label for="firstname">Full Name</label>
	                  <input type="text" name="name" class="form-control" placeholder="">
	                </div>
	              </div>
		            <div class="col-md-12">
		            	<div class="form-group">
		            		<label for="postcodezip">Address</label>
	                  		<input type="text" name="address" class="form-control" placeholder="">
	                	</div>
		            </div>
		            <div class="col-md-12">
		            	<div class="form-group">
		            		<label for="postcodezip">Name on card</label>
							<input type="text" id="card-name" name="card_name" class="form-control" placeholder="">
						</div>
		            </div>
		            <div class="col-md-12">
		            	<div class="form-group">
		            		<label for="postcodezip">Number</label>
	                  <input type="text" id="card-number" class="form-control" placeholder="">
	                </div>
		            </div>
		            <div class="w-100"></div>
		            <div class="col-md-6">
	                <div class="form-group">
	                	<label for="phone">Expiration Month</label>
	                  <input type="text" id="card-expiry-month" class="form-control" placeholder="">
	                </div>
	              </div>
	              <div class="col-md-6">
						<div class="form-group">
							<label for="emailaddress">Expiration year</label>
							<input type="text" id="card-expiry-year" class="form-control" placeholder="">
						</div>
  					</div>
                <div class="w-100"></div>
                <div class="col-md-12">
		            <div class="form-group">
		            	<label for="postcodezip">CVC</label>
						<input type="text" id="card-cvc" class="form-control" placeholder="">
	                </div>
				</div>
				<div class="col-md-12">
					<div class="form-group">
						<button type="submit" class="btn btn-primary py-3 px-4">Buy now</button>
					</div>
				</div>
	            </div>
	          {!! Form::close() !!}<!-- END -->
					</div>
					<div class="col-xl-5">
	          <div class="row mt-5 pt-3">
	          	<div class="col-md-12 d-flex mb-5">
	          		<div class="cart-detail cart-total p-3 p-md-4">
						  <h3 class="billing-heading mb-4">Cart Total</h3>
						  <p class="d-flex">
								<span>Name</span>
								<span>Price</span>
								<span>quantity</span>
							</p>
						  @foreach (Session::get('cart')->items as $item)

							<p class="d-flex">
							<span>{{$item['product_name']}}</span>
								<span>${{$item['product_price']}}</span>
								<span>{{$item['qty']}}</span>
							</p>
						  @endforeach
						
						<hr>
						<p class="d-flex total-price">
							<span>Total</span>
							<span>${{Session::get('cart')->totalPrice}}</span>
						</p>
					</div>
	          	</div>
	          	
	          </div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->
@endsection

		
@section('scripts')
<script src="https://js.stripe.com/v2/"></script>
<script src="src/js/checkout.js"></script>
<script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
@endsection
