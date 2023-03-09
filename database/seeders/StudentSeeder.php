<?php

namespace Database\Seeders;

use App\Models\Student;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Carbon\Carbon;
use Illuminate\Support\Facades\Schema;

class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Schema::disableForeignKeyConstraints();
        // Student::truncate();
        // Schema::enableForeignKeyConstraints();

        // $data = [
        //     ['name' => 'Cindy Yuvia', 'gender' => 'P', 'nis' => '1411500497', 'class_id' => 1],
        //     ['name' => 'Haruka Nakagawa', 'gender' => 'P', 'nis' => '1411500777', 'class_id' => 1],
        //     ['name' => 'Avief Akbarsyah', 'gender' => 'L', 'nis' => '1411500666', 'class_id' => 2],
        // ];

        // foreach ($data as $value) {
        //     Student::insert([
        //         'name' => $value['name'],
        //         'gender' => $value['gender'],
        //         'nis' => $value['nis'],
        //         'class_id' => $value['class_id'],
        //         'created_at' => Carbon::now(),
        //         'updated_at' => Carbon::now(),
        //     ]);
        // }

        Student::factory()->count(20)->create();
    }
}
