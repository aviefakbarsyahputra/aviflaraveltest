@extends('layout.mainlayout')

@section('title', 'Add New')

@section('content')
    
    <div class="mt-5 col-8 m-auto">

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{$error}}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form action="student" method="post" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
                <label for="name">Nama</label>
                <input type="text" class="form-control" name="name" id="name">
            </div>

            <div class="mb-3">
                <label for="gender">Jenis Kelamin</label>
                <select name="gender" id="gender" class="form-control">
                    <option value="">Pilih</option>
                    <option value="L">L</option>
                    <option value="P">P</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="nis">NIS</label>
                <input type="text" class="form-control" name="nis" id="nis">
            </div>

            <div class="mb-3">
                <label for="class">Kelas</label>
                <select name="class_id" id="class" class="form-control">
                    <option value="">Pilih</option>
                    @foreach ($class as $item)
                        <option value="{{$item->id}}">{{$item->name}}</option>
                    @endforeach
                </select>
            </div>

            <div class="mb-3">
                <label for="photo">Upload Photo</label>
                <div class="input-group">
                    <input type="file" class="form-control" id="photo" name="photo">
                </div>
            </div>

            <div class="mb-3">
                <button class="btn btn-success" type="submit">Simpan</button>
            </div>
        </form>
    </div>


@endsection