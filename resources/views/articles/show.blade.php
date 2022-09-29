@extends('layouts.article')

@section('main')

    <h2>{{$article->title}}</h2>
    <p>{{$article->content}}</p>
    <img src="http://127.0.0.1/app_name/public/storage/{{$article->image}}">
    <br>
    {{--
        <img src="/storage/{{$article->image}}">
    <a href="{{route('articles.index')}}">回文章列表</a>--}}
    <a href="javascript:history.back()">回文章列表</a>

@endsection
