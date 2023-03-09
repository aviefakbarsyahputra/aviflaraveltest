@extends('layout.mainlayout')

@section('title', 'Students')

@section('content')

    <h2>Detail siswa dari {{$student->name}}</h2>

    <div class="my-3">
        <img src="{{asset('storage/photo/'.$student->photo)}}" alt="" >
    </div>

    <div class="mt-5 mb-5">
        <table class="table table-bordered">
            <tr>
                <th>NIS</th>
                <th>Jenis Kelamin</th>
                <th>Kelas</th>
                <th>Wali Kelas</th>
            </tr>
            <tr>
                <td>{{$student->nis}}</td>
                <td>
                    @if ($student->gender == 'P')
                        Perempuan
                    @else
                        Laki-laki
                    @endif
                </td>
                <td>{{$student->class->name}}</td>
                <td>{{$student->class->homeRoomTeacher->name}}</td>
            </tr>
        </table>
    </div>

    <div>
        <h3>Ekstrakulikuler</h3>
        <ol>
            @foreach ($student->extracurricullars as $item)
                <li>{{$item->name}}</li>
            @endforeach
        </ol>
    </div>

    <style>
        th{
            width: 25%;
        }
    </style>

    
@endsection