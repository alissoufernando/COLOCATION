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

        for ($i = 0; $i < 5; $i++) {
            Product::create([
                'type_annonce' => 'COLOCATION',
                'name' => $productName,
                'slug' => Str::slug($faker->unique()->words($nb = 2, $asText = true)),
                'description' => "Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d'enseignement supérieur.

                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.",
                'short_description' => "Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.",
                'place_dispo' => $faker->numberBetween(1, 5),
                'quartier' => $faker->city(),
                'normal_price' => mt_rand(5000, 15000),
                'disponibilite' => 1,
                'ville_id' => Ville::all()->random()->id,
                'categorie_id' => Category::all()->random()->id,
                'user_id' => User::all()->random()->id,

            ]);
        }

        for ($i = 0; $i < 5; $i++) {
            Product::create([
                'type_annonce' => 'LOCATION',
                'name' => $productName,
                'slug' => Str::slug($faker->unique()->words($nb = 2, $asText = true)),
                'description' => "Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d'enseignement supérieur.

                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.",
                'short_description' => "Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés.",
                'place_dispo' => $faker->numberBetween(1, 5),
                'quartier' => $faker->city(),
                'normal_price' => mt_rand(5000, 15000),
                'disponibilite' => 1,
                'ville_id' => Ville::all()->random()->id,
                'categorie_id' => Category::all()->random()->id,
                'user_id' => User::all()->random()->id,
            ]);
        }
    }
}
