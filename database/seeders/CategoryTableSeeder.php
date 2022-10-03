<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */

    public function run()
    {
        $faker = Faker::create();

        $categories = [
            'Rentrée coucher',
            'Une chambre salon',
            'Deux chambres salon',
            'Trois chambres salon',
            'Rentrée coucher semi sanitaire',
            'Une chambre salon semi sanitaire',
            'Deux chambres salon semi sanitaire',
            'Trois chambres salon semi sanitaire',
            'Rentrée coucher sanitaire',
            'Une chambre salon sanitaire',
            'Deux chambres salon sanitaire',
            'Trois chambres salon sanitaire',
        ];
        foreach ($categories as $category) {
            Category::create([
            'name'          =>  $category,
            'menu'          =>  0,
            'slug'          =>  Str::slug($category)
            ]);
        }

    }
}
