@extends('layout.mainlayout')

@section('title', 'Check')

@section('content')
<h1>Check Input</h1>

    <form method="post" action="/check-input">
        @csrf
    
        <div>
            <label for="input1">Input 1:</label>
            <input type="text" name="input1" id="input1">
        </div>
    
        <div>
            <label for="input2">Input 2:</label>
            <input type="text" name="input2" id="input2">
        </div>
    
        <button type="submit">Check Input</button>
    </form>
@endsection







