<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <link rel="stylesheet" href="{{asset('css/bootstrap-4.3.1.css')}}">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    
    <title>laravel 測試</title>
    <style>
        a:link{
            color: black;
            text-decoration: none;
            padding: 1px 6px;
        }
        .flex{
            display: flex;
        }
        button{
            border: none;
            background-color: rgba(255,255,255,0);
        }
        button:hover{
            text-shadow: 1px 1px 3px #000000;
        }
        p{
            padding-left: 10px;
        }
        table {
            border-collapse: collapse;
            text-align: center;
        }
        table,
        th,
        td {
            border: 1px solid black;
        }
        th,
        td {
            padding: 5px 10px;
        }
    </style>
</head>
<body>
    <div id="app">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    後臺管理
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                    <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    最新消息
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{route('articles.create')}}">
                                        新增最新消息
                                    </a>
                                </div>
                            </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">活動</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main style="margin:20px;">
            @if(session()->has('notice'))
            <div class="bg-pink-300">
                {{session()->get('notice')}}
            </div>
            @endif
            
            

            @yield('main')
            
        </main>
    </div>
    <script src="{{asset('js/app.js')}}"></script>
    @yield('script')
    <script>
        
    </script>
</body>
</html>