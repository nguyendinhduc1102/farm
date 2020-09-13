@extends('layouts.app1')
@section('title')
    Cart
@endsection
@section('content')
    

    <div class="hero-wrap hero-bread" style="background-image: url('fontend/images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Cart</span></p>
            <h1 class="mb-0 bread">My Cart</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>&nbsp;</th>
						        <th>Product name</th>
						        <th>Price</th>
						        <th>Quantity</th>
						        <th>Total</th>
						      </tr>
						    </thead>
						    <tbody>
								@if (Session::has('cart'))
								
								@foreach ($products as $product)
									<tr class="text-center">
						        <td class="product-remove">
								<a href="/removeitem/{{$product['product_id']}}">
										<span class="ion-ios-close"></span>
									</a>
								</td>
						        
						        <td class="image-prod"><div class="img" style="background-image:url(storage/product_images/{{$product['product_image']}});"></div></td>
						        
						        <td class="product-name">
								<h3>{{$product['product_name']}}</h3>
						        	{{-- <p>Far far away, behind the word mountains, far from the countries</p> --}}
						        </td>
						        
								<td class="price">${{$product['product_price']}}</td>
								{!! Form::open(['action'=>'ClientController@updateqty','method'=>'post']) !!}
								{{ csrf_field() }}
									<td class="quantity">
										<div class="input-group mb-3">
											<input type="number" name="quantity" class="quantity form-control input-number" value="{{$product['qty']}}" min="1" max="100">
											{{-- {!! Form::hidden('id',$product['product_id']) !!} --}}
											<input type="hidden" name="id" class="quantity form-control input-number" value="{{$product['product_id']}}" min="1" max="100">
										</div>
										{!! Form::submit('Update', ['class'=>'btn btn-success']) !!}
									</td>
								{!! Form::close() !!}

						        <td class="total">${{$product['product_price']*$product['qty']}}</td>
						      </tr><!-- END TR-->
								@endforeach
								@else
							  		@if (Session::has('success'))
										<div class="aler alert-success">
											{{Session::get('success')}}
										</div>
									@endif
								@endif
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		<div class="row justify-content-end">
    			    				<p><a href="/checkout" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>

    		</div>
    		</div>
			</div>
		</section>

		
@endsection
@section('scripts')
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