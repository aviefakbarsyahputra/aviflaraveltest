@extends('layout.mainlayout')

@section('title', 'Students')

@section('content')

    <div class="mt-5 col-8 m-auto">
        <form action="/student/{{$student->id}}" method="POST">
            @csrf
            @method('PUT')
            <div class="mb-3">
                <label for="name">Nama</label>
                <input type="text" class="form-control" name="name" id="name" value="{{$student->name}}" required>
            </div>

            <div class="mb-3">
                <label for="gender">Jenis Kelamin</label>
                <select name="gender" id="gender" class="form-control" required>
                    <option value="{{$student->gender}}">{{$student->gender}}</option>
                    @if ($student->gender == 'L')
                        <option value="P">P</option>
                    @else
                        <option value="L">L</option>
                    @endif
                </select>
            </div>

            <div class="mb-3">
                <label for="nis">NIS</label>
                <input type="text" class="form-control" name="nis" id="nis" value="{{$student->nis}}" required>
            </div>

            <div class="mb-3">
                <label for="class">Kelas</label>
                <select name="class_id" id="class" class="form-control" required>
                    <option value="{{$student->class->id}}">{{$student->class->name}}</option>
                    @foreach ($class as $item)
                        <option value="{{$item->id}}">{{$item->name}}</option>
                    @endforeach
                </select>
            </div>

            <div class="mb-3">
                <button class="btn btn-success" type="submit">Ubah Data</button>
            </div>
        </form>
    </div>
@endsection