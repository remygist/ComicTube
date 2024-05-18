<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('hero_show', function (Blueprint $table) {
            $table->foreignId('show_id')->constrained()->onDelete('cascade');
            $table->foreignId('hero_id')->constrained()->onDelete('cascade');
            $table->primary(['show_id', 'hero_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('hero_show');
    }
};
