<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserLocationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_location', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unique()->unsigned();
            $table->integer('country_living_id');
            $table->integer('citizenship');
            $table->integer('resident_status')->nullable();//0 for permanent_resident 1 for workpermit 2 for student visa 3 for temporary visa
            $table->integer('residing_state');
            $table->integer('residing_city');
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
        Schema::dropIfExists('user_location');
    }
}
