<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFamilyDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('family_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unique()->unsigned();
            $table->integer('family_value');//1 for Orthodox 2 for Traditional 3 for Moderate 4 for Liberal
            $table->integer('family_type');//1 for Joint Family 2 for Nuclear Family 3 for Others
            $table->integer('family_status');//1for MiddleClass 2 for UpperMiddleClass 3 for Rich 4 for Affluent
            $table->integer('father_status')->nullable();//0 for Employed 1 for Business Man 2 for Professional 3 for Retired 4 for Not Employed 5 for Passed Away
            $table->integer('mother_status')->nullable();//0 for homemaker 1 for Employed 2 for Business woman 3 for Professional 4 for Retired 5 for Passed Away            
            $table->integer('no_of_brothers')->nullable();//0 For none 1 for one brother 2 for two brothers 3 for three brothers 4 for four brothers 5 for five brothers 6 for more than five brothers
            $table->integer('married_brothers')->nullable();//0 For none 1 for one brother 2 for two brothers 3 for three brothers 4 for four brothers 5 for five brothers 6 for more than five brothers
            $table->integer('no_of_sisters')->nullable();//0 For none 1 for one sisters 2 for two sisters 3 for three sisters 4 for four sisters 5 for five sisters 6 for more than five sisters
            $table->integer('married_sisters')->nullable();//0 For none 1 for one sisters 2 for two sisters 3 for three sisters 4 for four sisters 5 for five sisters 6 for more than five sisters
            $table->integer('family_location')->default(0);//0 for same location 1 for different location
            $table->integer('country_id')->nullable();
            $table->string('parents_phone_no');
            $table->integer('state_id')->nullable();
            $table->integer('city_id')->nullable();
            $table->string('family_origin')->nullable();
            
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
        Schema::dropIfExists('family_details');
    }
}