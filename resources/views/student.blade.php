@extends('layout.mainlayout')

@section('title', 'Students')

@section('content')
    <h1>Ini Halaman Para Murid</h1>
    
    <div class="my-5 d-flex justify-content-between">
        <a href="student-add" class="btn btn-primary">Add Data</a>
        <a href="students-deleted-student" class="btn btn-secondary">Recycle Bin</a>
    </div>

    @if (Session::has('status'))
       <div class="alert alert-success" role="alert">{{Session::get('message')}}</div> 
    @endif

    <h3>Daftar Murid</h3>

    <div class="my-3 col-12 col-sm8 col-md-5">
        <form action="" method="get">
            <div class="input-group mb-3 col-12 col-sm8 col-md-6">
                <input type="text" class="form-control" name="keyword" placeholder="keyword">
                <button class="input-group-text btn btn-secondary">Cari</button>
            </div>
        </form>
    </div>

    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>Nama</th>
                <th>Jenis Kelamin</th>
                <th>NIS</th>
                <th>Kelas</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($studenList as $data)
            <tr>
                <td>{{$loop->iteration}}</td>
                <td>{{$data->name}}</td>
                <td>{{$data->gender}}</td>
                <td>{{$data->nis}}</td>
                <td>{{$data->class->name}}</td>
                <td>
                    <a href="student/{{$data->id}}" class="btn btn-info">Detail</a>
                    <a href="student-edit/{{$data->id}}" class="btn btn-warning">Edit</a>
                    <a href="student-delete/{{$data->id}}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    
    <div class="my-5">
        {{$studenList->withQueryString()->links()}}
    </div>
@endsection