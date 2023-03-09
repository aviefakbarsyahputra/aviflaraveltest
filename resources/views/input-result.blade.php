@extends('layout.mainlayout')

@section('title', 'Check')

@section('content')
    <p>Percentage of common characters: {{ $percentage }}%</p>
@endsection