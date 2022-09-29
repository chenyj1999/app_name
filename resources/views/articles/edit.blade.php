@extends('layouts.article')

@section('main')
    <h1>編輯文章</h1>

    @if($errors->any())
        <div class="errors p-3">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('articles.update',$article)}}" method="post" enctype="multipart/form-data">
        @csrf
        @method('patch')
        <div class="field">
            <label for="">標題</label>
            <input type="text" name="title" value="{{$article->title}}">
        </div>
        <div class="field">
            <label for="">內文</label>
            <textarea name="content" cols="30" rows="10">{{$article->content}}</textarea>
        </div>
        <label for="image" class="block text-sm leading-5 font-medium text-gray-700">
        圖片上傳
        <input type="file" name="image" m-model="image">
        </label>
        <img src="http://127.0.0.1/app_name/public/storage/{{$article->image}}">
        <div class="actions">
            <button type="submit">更新文章</button>
        </div>


    </form>

@endsection