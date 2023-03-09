@extends('layout.mainlayout')

@section('title', 'Extracurricular')

@section('content')
    <h1>Halaman Ekskul</h1>

    <div class="my-5">
        <a href="" class="btn btn-primary">Add Data</a>
    </div>

    <h2>Daftar Ekskul</h2>

    <table class="table">
        <thead>
            <tr>
                <th>No.</th>
                <th>Name</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($ekskulList as $data)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{$data->name}}</td>
                    <td><a href="extracurricular-detail/{{$data->id}}">Detail</a></td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection