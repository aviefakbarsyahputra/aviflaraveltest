@extends('layout.mainlayout')

@section('title', 'Teacher')

@section('content')
    <h4> Detail Guru yang bernama {{$teacher->name}}</h4>

    <div class="mt-5">
        <h3>
            Kelas : 
            @if ($teacher->class)
                {{$teacher->class->name}}
            @else
                Data Guru Tidak Ada
            @endif
        </h3>
    </div>

    <div class="mt-5">
        <h4>Daftar Murid</h4>
        @if ($teacher->class)
            <ol>
                @foreach ($teacher->class->students as $item)
                    <li>{{$item->name}}</li>
                @endforeach
            </ol>
        @else
            Data Tidak ada
        @endif
    </div>


@endsection