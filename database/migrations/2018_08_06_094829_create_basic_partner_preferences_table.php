<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBasicPartnerPreferencesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('basic_partner_preferences', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unique()->unsigned();
            $table->integer('preferred_age_from');
            $table->integer('preferred_age_to');
            $table->integer('maritial_status');// 0for Any 1for Never Married 2for Widowed 3for Divorced 4for Awaiting divorce
            $table->integer('preferred_height_from');
            $table->integer('preferred_height_to');
            $table->integer('physical_status'); // 0for Normal 1 for Physically challenged 2 for Doesn't matter
            $table->string('eating_habits');//0for Vegetarian 1for Non Vegetarian 2 for Eggetarian 3 for Doesn't matter
            $table->string('drinking_habits');//0for Doesn't matter 1for Never drinks 2 for Drinks socially 3for Drinks regularly
            $table->string('smoking_habits');//0for Doesn't matter 1for Never smokes 2for Smokes occasionally 3for Smokes regularly
            $table->integer('religion');
            $table->integer('gothra');
            $table->string('mother_tounge_id');
            $table->string('castes');
            $table->integer('manglik');//0 for yes 1 for no 2 doesnot matter
            $table->string('stars');
            
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
        Schema::dropIfExists('basic_partner_preferences');
    }
}
