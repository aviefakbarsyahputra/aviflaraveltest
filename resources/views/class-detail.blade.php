@extends('layout.mainlayout')

@section('title', 'Class')

@section('content')
    <h1>Detail Kelas dari {{$class->name}}</h1>

    <div class="mt-5">
        <h3>Wali Kelas : {{$class->homeRoomTeacher->name}}</h3>
    </div>

    <div class="mt-5">
        <h3> Daftar Siswa</h3>
        <ol>
            @foreach ($class->students as $item)
                <li>{{$item->name}}</li>
            @endforeach
        </ol>
    </div>

@endsection