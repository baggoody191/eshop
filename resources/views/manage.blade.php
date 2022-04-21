@extends('layout')

@section('side')



<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Bordered Table</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Details</th>
                            <th>Image</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>

                        @foreach($products as $product)
                        <tr>
                            <td>{{ $product->id}}</td>
                            <td>{{ $product->name}}</td>
                            <td>{{ $product->price}}</td>
                            <td>{{ $product->details}}</td>
                            <td><a href="{{ $product->image}}">{{ $product->image}}</a></td>
                            <td><a href="{{ route('edit', $product->id )}}" class="btn btn-primary btn-sm">Edit</a></td>
                            <td><a href="{{ route('delete', $product->id )}}" class="btn btn-danger btn-sm">Delete</a></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /.card ---->
    </div>
</div>


@endsection