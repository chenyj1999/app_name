@extends('layouts.article')

@section('main')
    <h1>新增最新消息</h1>

    @if($errors->any())
        <div class="errors p-3">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('articles.store')}}" method="post" enctype="multipart/form-data">

        @csrf
        <div class="field">
            <label for="">標題</label>
            <input type="text" value="{{old('title')}}" name="title" m-model="title">
        </div>
        <div class="field">
            <label for="">內文</label>
            <textarea name="content"cols="30" rows="10" m-model="content">{{old('content')}}</textarea>
        </div>
        

    <label for="image" class="block text-sm leading-5 font-medium text-gray-700">
        圖片上傳
        <input type="file" name="image" m-model="image">
    </label>

    <div class="actions">
        <button type="submit">新增文章</button>
    </div>

    </form>

@endsection