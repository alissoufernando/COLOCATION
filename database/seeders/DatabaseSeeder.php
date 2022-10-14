<?php

namespace Database\Seeders;


use App\Models\User;
use Illuminate\Database\Seeder;
use Database\Seeders\ProductSeeder;
use Database\Seeders\RoleTableSeeder;
use Database\Seeders\UserTableSeeder;
use Database\Seeders\VilleTableSeeder;
use Database\Seeders\ArticleTableSeeder;
use Database\Seeders\CategoryTableSeeder;
use Database\Seeders\DepartementTableSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            RoleTableSeeder::class,
            UserTableSeeder::class,
            CategoryTableSeeder::class,
            DepartementTableSeeder::class,
            VilleTableSeeder::class,
            ProductSeeder::class,
            ArticleTableSeeder::class
        ]);
        User::factory(20)->create();

    }
}
