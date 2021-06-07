@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Products</div>

                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Image</th>
                            <th scope="col">Title</th>
                            <th scope="col">Description</th>
                            <th scope="col">Price</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($products as $product)
                        <tr>
                            <td>{{ ($loop->index+1)}}</td>
                            <td>
                            @if($product->image != null)
                                <img src="{{asset($product->image)}}" width="80" height="80"
                                     class="img-thumbnail table-avatar">
                            @endif
                            </td>
                            <td>{{$product->title}}</td>
                            <td>{{$product->description}}</td>
                            <td>{{$product->price}}</td>
                            <td>
                                <a href="{{route('product.edit',$product->id)}}">Edit</a> |
                                <a href="{{route('product.destroy',$product->id)}}">Remove</a>

                            </td>
                        </tr>
                        @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
