<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;

    protected $fillable = ['title','content','start_date','end_date','event_date','organizer','co_organizer','image_1','image_2','image_3','image_4','link','type'];
}
