<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PegawaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $faker = Faker::create('id_ID');
        for ($i = 0; $i < 10; $i++) {

            DB::table('pegawai')->insert([
                'nama' => $faker->name,
                'alamat' => $faker->address,
            ]);
            //
        }
    }
}
