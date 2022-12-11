@extends('layouts.app-master')

@section('content')
    <div class="bg-light p-5 rounded">
        @auth
        <h1>Token</h1>
        <p class="lead">Your token is: {{ Session::getId() }}</p>
        @endauth

        @guest
        <h1>Homepage</h1>
        <p class="lead">Your viewing the home page. Please login to get your token.</p>
        @endguest
    </div>
@endsection