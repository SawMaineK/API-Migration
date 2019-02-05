<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLifeStyleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('life_style', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unique()->unsigned();
            $table->string('hobbies');
            $table->string('favourite_music');
            $table->string('sports_activities');
            $table->string('spoken_languages');
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
        Schema::dropIfExists('life_style');
    }
}
