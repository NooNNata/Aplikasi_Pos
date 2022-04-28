@extends('layouts.app-admin')

@section('content')
    <div class="row mt-5 mb-5">
        <div class="col-lg-12 margin-tb">
            <div class="float-left">
                <h2>Toko Baju</h2>
            </div>
            <div class="float-right">
                <a class="btn btn-success" href="{{ route('cost.create') }}"> Input Costumer</a>
            </div>
        </div>
    </div>

    @if ($message = Session::get('succes'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
    @endif

    <table class="table table-bordered">
        <tr>
            <th width="20px" class="text-center">No</th>
            <th width="280px"class="text-center">Nama</th>
            <th width="280px"class="text-center">Email</th>
            <th width="280px"class="text-center">Telepon</th>
            <th width="280px"class="text-center">Action</th>
        </tr>
        @foreach ($cost as $costumer)
        <tr>
            <td class="text-center">{{ ++$i }}</td>
            <td>{{ $costumer->nama_costumer }}</td>
            <td>{{ $costumer->email_costumer }}</td>
            <td>{{ $costumer->telepon_costumer }}</td>
            <td class="text-center">
                <form action="{{ route('cost.destroy',$costumer->id) }}" method="POST">

                   <a class="btn btn-info btn-sm" href="{{ route('cost.show',$costumer->id) }}">Show</a>

                    <a class="btn btn-primary btn-sm" href="{{ route('cost.edit',$costumer->id) }}">Edit</a>

                    @csrf
                    @method('DELETE')

                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </table>

    {!! $cost->links() !!}

@endsection