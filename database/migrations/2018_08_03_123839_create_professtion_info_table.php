<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProfesstionInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('professtion_info', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unique()->unsigned();
            $table->integer('highest_education_id');
            $table->string('institution')->nullable();
            $table->string('education_detail')->nullable();
            $table->integer('employeed_in')->default(0);//0 for gov 1 for private 2for business 3 for defence 4self employed 5 for not working 
            $table->integer('occupation_id');
            $table->string('occupation_detail')->nullable();
            $table->integer('currency_id')->nullable();
            $table->integer('annual_income')->nullable();

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
        Schema::dropIfExists('professtion_info');
    }
}
