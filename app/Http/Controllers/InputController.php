<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InputController extends Controller
{
    public function showForm()
    {
        return view('input-form');
    }

    public function checkInput(Request $request)
    {
        $input1 = $request->input('input1');
        $input2 = $request->input('input2');

        $percentage = $this->calculatePercentage($input1, $input2);

        return view('input-result', [
            'percentage' => $percentage
        ]);
    }

    private function calculatePercentage($input1, $input2)
    {
        $commonChars = similar_text($input1, $input2);

        return ($commonChars / strlen($input1)) * 100;
    }
}
