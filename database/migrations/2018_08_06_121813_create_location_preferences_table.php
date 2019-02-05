<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLocationPreferencesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('location_preferences', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unique()->unsigned();
            $table->string('countries');
            $table->string('states');
            $table->string('cities');
            $table->string('citizen');            
            $table->timestamps();
            $table->foreign('user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('location_preferences');
    }
}
