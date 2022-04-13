<?php

namespace App\Http\Controllers;

use App\Models\Guru;
use Illuminate\Http\Request;

class GuruController extends Controller
{
    //
    public function index()
    {
        $guru = Guru::all();
        return view('guru.guru', ['guru' => $guru]);
    }
    // hapus sementara
    public function hapus($id)
    {
        $guru = Guru::find($id);
        $guru->delete();

        return redirect('/guru');
    }

    public function trash()
    {
        // mengambil data yang dihapus 
        $guru = Guru::onlyTrashed()->get();
        return view('guru.trash', ['guru' => $guru]);
    }

    public function kembalikan($id)
    {
        $guru = Guru::onlyTrashed()->where('id', $id);
        $guru->restore();

        return redirect('/guru/trash');
    }
    public function kembalikan_semua()
    {
        $guru = Guru::onlyTrashed();
        $guru->restore();

        return redirect('guru');
    }

    public function hapus_permanen($id)
    {
        // Hapus permanen data guru
        $guru = Guru::onlyTrashed()->where('id', $id);
        $guru->forceDelete();

        return redirect('/guru/trash');
    }

    public function hapus_permanen_semua()
    {
        // Hapus pemanen semua
        $guru = Guru::onlyTrashed();
        $guru->forceDelete();

        return redirect('/guru/trash');
    }
}
