<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBasicDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('basic_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unique()->unsigned();
            $table->integer('gender');  //1for male 2for female 3 for others   
            $table->string("profile_for"); //1 for myself 2 for relative 3 for friend 4 for daughter 5 for sister 6 for son 7 for brother 
            $table->integer("age");
            $table->string("dob");
            $table->integer("height");
            $table->integer("weight")->nullable();
            $table->integer("maritial_status"); //1 for nevermarried 2 for widowed 3 for divorced 4for awaiting_divorce 
            $table->integer("body_type")->nullable(); //1for slim 2for athletic 3for average 4for heavy 
            $table->integer("complextion")->nullable();//1for veryfair 2for fair 3for wheatish 4for wheatishbrown 5 for dark 
            $table->integer("physical_status");//1for normal 2 forphysicallychallenged 
            $table->integer("mother_tounge_id");
            $table->integer("know_to_read")->nullable();//1for checked 0 for not
            $table->integer("eating_habits")->nullable();//1for vegeterian 2for nonvegeterian 3for Eggetarian 
            $table->integer("drinking_habits")->nullable();//1for no 2for drinksSocially 3for yes
            $table->integer("smoking_habits")->nullable();//1for no 2for Occasionally 3for yes
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
        Schema::dropIfExists('basic_details');
    }
}
