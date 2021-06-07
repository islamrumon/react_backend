@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Update product</div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('product.update') }}" enctype="multipart/form-data">
                            @csrf
<input type="hidden" name="id" value="{{$product->id}}">
                            <div class="form-group row">
                                <label for="email"
                                       class="col-md-4 col-form-label text-md-right">Title</label>

                                <div class="col-md-6">
                                    <input id="title" type="text"
                                           class="form-control @error('title') is-invalid @enderror" name="title"
                                           value="{{$product->title}}" required autocomplete="email" autofocus>

                                    @error('title')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="email"
                                       class="col-md-4 col-form-label text-md-right">Description</label>

                                <div class="col-md-6">
                                    <textarea  required class="form-control @error('description') is-invalid @enderror" name="description">{{$product->description}}</textarea>

                                    @error('description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="email"
                                       class="col-md-4 col-form-label text-md-right">Price</label>

                                <div class="col-md-6">
                                    <input id="title" type="number" min="1"
                                           class="form-control @error('price') is-invalid @enderror" name="price"
                                           value="{{$product->price}}" required autocomplete="email" autofocus>

                                    @error('price')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <hr>
                            @if($product->image != null)
                                <img src="{{asset($product->image)}}"
                                     class="img-thumbnail table-avatar">
                            @endif
                            <div class="form-group row">
                                <label for="email"
                                       class="col-md-4 col-form-label text-md-right">image</label>

                                <div class="col-md-6">
                                    <input id="title" type="file" min="1"
                                           class="form-control-file @error('image') is-invalid @enderror" name="image"
                                           value="{{ old('price') }}" required >

                                    @error('image')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>



                            <div class="form-group row mb-0">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        Save
                                    </button>

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
