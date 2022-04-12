@extends('layouts.app')

@section('content')
    
    <h2>Halaman Edit</h2>

    <a href="/crud">Kembali</a>

    <br/><br/>

    @foreach($crud as $c) 
        <form action="/crud/update" method="post">
            
            {{ csrf_field() }}
            <input type="hidden" name="id" value='{{ $c->id }}'> <br/>
            Nama: <input type="text" name="nama" value='{{ $c->nama }}'><br/>
            Pekenalan: <input type="text" name="perkenalan" id="" value='{{ $c->perkenalan }}'> <br/>
            Lokasi: <input type="text" name="lokasi" id="" value='{{ $c->lokasi }}'><br/> 
            Cost: <input type="number" name="cost" id="" value="{{ $c->cost }}"><br/>
            
            <input type="submit" value="Simpan Data">
        </form>

    @endforeach
@endsection
