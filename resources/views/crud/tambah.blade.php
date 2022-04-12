@extends('layouts.app')

@section('content')
    <h3 class="text-center">Tambah</h3>
    <a href="/crud">Kembali</a>
    <br/>
    <br/>

    <form action="/crud/store" method="post">

        {{ csrf_field() }}

        Nama : <input type="text" name="nama" required='required'><br/><br/>
        Perkenalan : <input type="text" name="perkenalan" required='required'><br/><br/>
        Lokasi : <input type="text" name="lokasi" required='required'><br/><br/>
        cost : <input type="number" name="cost" required='required'><br/><br/>

        <input type="submit" value="simpan data">

    </form>
@endsection
