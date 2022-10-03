<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('slug')->unique();
            $table->string('departement');
            $table->string('commune');
            $table->string('ville');
            $table->string('type_annonce');
            $table->text('description')->nullable();
            $table->text('short_description')->nullable();
            $table->decimal('normal_price', 10, 3);
            $table->boolean('disponibilite');
            $table->unsignedInteger('place_dispo');
            $table->foreignId('categorie_id')->constrained('categories')->onUpdate('cascade')->onDelete('cascade');
            $table->foreignId('user_id')->constrained('users')->onUpdate('cascade')->onDelete('cascade');


            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
