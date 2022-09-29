@extends('layouts.article')

@section('main')



@if($posts->isNotEmpty())
    @foreach ($posts as $post)
        <div class="post-list">
            <p>{{ $post->title }}</p>
        </div>
    @endforeach
@else 
    <div>
        <h2>No posts found</h2>
    </div>
@endif

@endsection