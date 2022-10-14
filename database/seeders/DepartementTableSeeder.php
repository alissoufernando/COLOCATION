<?php

namespace Database\Seeders;

use App\Models\Departement;
use Illuminate\Database\Seeder;

class DepartementTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Departement::create(['name' => 'Littoral']);
        Departement::create(['name' => 'Atlantique']);
        Departement::create(['name' => 'Ouémé']);
        Departement::create(['name' => 'Borgou']);
        Departement::create(['name' => 'Donga']);
        Departement::create(['name' => 'Atacora']);
        Departement::create(['name' => 'Collines']);
        Departement::create(['name' => 'Zou']);
        Departement::create(['name' => 'Mono']);
        Departement::create(['name' => 'Couffo']);
        Departement::create(['name' => 'Alibori']);
        Departement::create(['name' => 'Plateau']);


    }
}
