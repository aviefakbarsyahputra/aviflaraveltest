@extends('layout.mainlayout')

@section('title', 'About')

@section('content')
<h1>Ini Halaman About</h1>
@if ($role == 'admin' )
            <a href="">ke halaman admin</a>
        @elseif ($role == 'staff')
            <a href="">Ke halaman Gudang</a>
        @else
            <a href="">Ke halaman bebas</a>
        @endif
@endsection