<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Seeder;

class RoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */

    public function run()
    {
        Role::create(['nom' => 'Administrateur']);
        Role::create(['nom' => 'Etudiant']);
        Role::create(['nom' => 'Locataire']);
        Role::create(['nom' => 'Propriétaire']);
        Role::create(['nom' => 'Super Administrateur']);
    }
}
