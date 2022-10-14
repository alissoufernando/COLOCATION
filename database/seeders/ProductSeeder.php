<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Ville;
use App\Models\Product;
use App\Models\Category;
use Faker\Factory as Faker;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $productName = $faker->unique()->words($nb = 4, $asText = true);
        // $Categorys = Category::all()->pluck('id')->toArray();

        for ($i = 0; $i < 10; $i++) {
            Product::create([
                'type_annonce' => 'COLOCATION',
                'name' => $productName,
                'slug' => Str::slug($faker->unique()->words($nb = 2, $asText = true)),
                'description' => $faker->text(500),
                'short_description' => $faker->text(200),
                'place_dispo' => $faker->numberBetween(1, 5),
                'quartier' => $faker->city(),
                'normal_price' => mt_rand(1000, 10000),
                'disponibilite' => 1,
                'ville_id' => Ville::all()->random()->id,
                'categorie_id' => Category::all()->random()->id,
                'user_id' => User::all()->random()->id,

            ]);
        }

        for ($i = 0; $i < 10; $i++) {
            Product::create([
                'type_annonce' => 'LOCATION',
                'name' => $productName,
                'slug' => Str::slug($faker->unique()->words($nb = 2, $asText = true)),
                'description' => $faker->text(500),
                'short_description' => $faker->text(200),
                'place_dispo' => $faker->numberBetween(1, 5),
                'quartier' => $faker->city(),
                'normal_price' => mt_rand(1000, 10000),
                'disponibilite' => 1,
                'ville_id' => Ville::all()->random()->id,
                'categorie_id' => Category::all()->random()->id,
                'user_id' => User::all()->random()->id,
            ]);
        }
    }
}
