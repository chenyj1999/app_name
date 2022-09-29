@extends('layouts.article')

@section('main')
    <h1>最新消息</h1>
    <form action="{{ route('articles.index') }}" method="GET" style="margin-bottom:10px;">
    <input type="text" name="search" required/>
    <button type="submit">搜尋</button>
    </form>
    <table>
        <tr>
            <th>標題</th>
            <th>活動類型</th>
            <th>發布日期</th>
            <th>發布者</th>
            <th>編輯</th>
            <th>刪除</th>
        </tr>
@if($articles->isNotEmpty())
    @foreach ($articles as $article)

    <tr>
        <td style="text-align:left;"><a href="{{ route('articles.show',$article) }}">{{$article->title}}</a></td>
        <td></td>
        <td>{{$article->created_at}}</td>
        <td>{{$article->user->name}}</td>
        <td><a href="{{ route('articles.edit',['article' => $article->id] )}}">編輯</a></td>
        <td>
            <form action="{{ route('articles.destroy',$article)}}" method="post">
                @csrf
                @method('delete')
                <button type="submit">刪除</button>
            </form>
        </td>
    </tr>

    @endforeach
@else 
    <div>
        <h2>No posts found</h2>
    </div>
@endif
    </table>
    {{--@foreach($articles as $article)
        <div>
            
            <h2>
                <a href="{{ route('articles.show',$article) }}">{{$article->title}}</a>
                <p></p>
            </h2>
            <p>
                {{$article->created_at}} 由 {{$article->user->name}} 分享
            </p>
            <div class="flex">
                <a href="{{ route('articles.edit',['article' => $article->id] )}}">編輯</a>

                <form action="{{ route('articles.destroy',$article)}}" method="post">
                    @csrf
                    @method('delete')
                    <button type="submit">刪除</button>
                </form>
            </div>
            
        </div>
        <hr>       

    @endforeach--}}

@endsection