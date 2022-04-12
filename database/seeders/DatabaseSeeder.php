<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $faker = Faker::create('id_ID');

        for ($i = 0; $i < 50; $i++) {

            DB::table('cruds')->insert([
                'nama' => $faker->name(),
                'perkenalan' => $faker->sentence(),
                'lokasi' => $faker->address(),
                'cost' => $faker->randomDigit()

            ]);
        }
    }
}
