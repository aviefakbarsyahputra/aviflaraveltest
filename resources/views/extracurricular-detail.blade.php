@extends('layout.mainlayout')

@section('title', 'Ekskul')

@section('content')
    <h1>Detail Ekskul dari {{$ekskul->name}}</h1>

    <div class="mt-5">
        <h3>Anggota</h3>
        <ol>
            @foreach ($ekskul->students as $item)
                <li>{{$item->name}}</li>
            @endforeach
        </ol>
    </div>


@endsection