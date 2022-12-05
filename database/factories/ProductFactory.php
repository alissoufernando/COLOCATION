<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $productName = $this->faker->unique()->words($nb = 4, $asText = true);
        return [
            'sku' => 'DIGI' . $this->faker->unique()->numberBetween(100, 500),
                'name' => $productName,
                'slug' => Str::slug($this->faker->unique()->words($nb = 2, $asText = true)),
                'description' => "Cette nouvelle résidence étudiante située au cœur du quartier des Universités propose 217 logements type studio, studio supérieur et 2 pièces allant de 19m² à 29m² entièrement équipés. A proximité des transports en commun, elle permet un accès rapide aux établissements d'enseignement supérieur.

                Avec un accès direct au centre-ville par le tramway et à 2 minutes à pieds du domaine D’O, elle constitue un cadre idéal pour une vie étudiante épanouie.",
                'quantity' => $this->faker->numberBetween(100, 200),
                'quantity_alert' => $this->faker->numberBetween(100, 200),
                'status_stock' => 'instock',
                'normal_price' => mt_rand(1000, 10000),
                'sale_price' => mt_rand(999, 5000) - 182,
                'status' => $this->faker->randomElement(array(true, false)),
                'featured' => $this->faker->randomElement(array(true, false)),
                'categorie_id' => Category::factory(),
        ];
    }
}
