@extends('layout.mainlayout')

@section('title', 'Students')

@section('content')
    <h1>List data siswa yang sudah terhapus</h1>

    <div class="my-5">
        <a href="/students" class="btn btn-primary">Back</a>
    </div>

    <div class="mt-5">
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nama</th>
                    <th>Jenis Kelamin</th>
                    <th>NIS</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($student as $data)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$data->name}}</td>
                        <td>{{$data->gender}}</td>
                        <td>{{$data->nis}}</td>
                        <td>
                            <a href="/student/{{$data->id}}/restore" class="btn btn-dark">Pulihkan</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection