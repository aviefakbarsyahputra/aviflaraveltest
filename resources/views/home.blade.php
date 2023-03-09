@extends('layout.mainlayout')

@section('title', 'Home')

@section('content')

        <h1>halo,</h1>
        <h2> Welcome, {{Auth::user()->name}}. anda adalah {{Auth::user()->role->name}}</h2>

@endsection