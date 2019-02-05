<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReligionInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('religion_info', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unique()->unsigned();
            $table->integer('religion_id');
            $table->integer('caste_id');
            $table->integer('sub_caste_id');
            $table->integer('marry_in_same_or_not')->default(0); //0 for Willing to marry from the same community 1 Willing to marry from other communities also
            $table->integer('gothra_id')->nullable();
            $table->integer('star')->nullable();
            $table->integer('rassi_moon_sign')->nullable();
            $table->integer('zodiac_star_sign')->nullable();//1 for Aries 2 for taurus 3for gemini 4 for cancer 5 for leo 6 for virgo 7 for libra 8 for scorpio 9 for sagittarius 10 for capricon 11 for aquarius 12 pisces
            $table->integer('have_dosh')->default(0);//0 for no 1 for yes 2 for dontknow
            $table->string('dosh')->nullable();
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
        Schema::dropIfExists('religion_info');
    }
}
