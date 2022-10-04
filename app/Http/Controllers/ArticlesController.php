<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use Illuminate\Contracts\Validation\ValidationException;
use App\Http\Resources\Article as ArticleResource;

class ArticlesController extends Controller
{
    

    public function __construct()
    {
        //  ->only() 指定保護; except 例外
        $this->middleware('auth')->except(['index','show']);
    }

    public function index(Request $request)
    {
        /*$article=Article::all()->toArray();
        return array_reverse($article);*/
        
        $search = $request->input('search');
        $articles = Article::query()->where('title', 'LIKE', "%{$search}%")->get();
        return view('articles.index', compact('articles'));

        //$articles = Article::paginate(3);
        /*$articles = Article::orderBy('id','desc')->get();
        return view('articles.index',['articles' => $articles]);*/
        //return ArticleResource::collection($articles);
    }

    public function show($id){
        $article = Article::find($id);
        return view('articles.show',['article' => $article]);
    }

    public function create()
    {
        return view('articles.create');
    }

    public function store(Request $request)
    {

        $title=request('title');
        $imagePath = request('image')->store("uploads/{$title}", 'public');
        $content = $request->validate([
            'title' => 'required',
            'content' => 'required',
            'image' => 'mimes:jpeg,jpg,png,gif|required|max:10000'
        ]);
        $content['image'] = $imagePath;
        auth()->user()->articles()->create($content);
        return redirect()->route('root')->with('notice', '文章新增成功!');
        //return Article::create($content);

    }

    public function edit($id){
        $article = auth()->user()->articles->find($id);
        //$article = Article::find($id);
        return view('articles.edit',['article' => $article]);
    }

    public function update(Request $request, $id){
        $article = auth()->user()->articles->find($id);
        $title=$article['title'];
        $content = $request->validate([
            'title' => 'required',
            'content' => 'required|min:10',
            'image' => 'mimes:jpeg,jpg,png|nullable|max:10000'
        ]);
        $file_path = $article->image ? "public/" . $article->image : "";
        if($content['image'] != ''){
            Storage::delete($file_path);
            $imagePath = request('image')->store("uploads/{$title}", 'public');
            $content['image'] = $imagePath;
        }
        else{
            $content['image']=$article['image'];
        }
        /*$title=$content['title'];
        */
        /*uploads/0105asdjflkasdjf/jUiV4JRQ5kzIrylQmFT9zbNbTE7Cp82MN0Uc04jb.jpg*/
        
            
        $article->update($content);
        return redirect()->route('root')->with('notice', '文章更新成功!');
    }

    public function destroy($id){
        
        $article = auth()->user()->articles->find($id);
        $article->delete();
        return redirect()->route('root')->with('notice','文章刪除!');
    }
}
