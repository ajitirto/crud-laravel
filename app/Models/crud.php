<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class crud extends Model
{
    use HasFactory;

    protected $table = 'cruds';
    public $timestamps = true;

    protected $fillable = [
        'nama',
        'perkenalan',
        'lokasi',
        'cost'
    ];
}
