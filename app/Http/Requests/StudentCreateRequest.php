<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StudentCreateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
            'name' => 'max:50|required',
            'nis' => 'unique:students|max:8|required',
            'gender' => 'required',
            'class_id' => 'required'
        ];
    }

    public function attributes()
    {
        return [
            'class_id' => 'class'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Nama wajib diisi!',
            'name.max' => 'Nama maksimal :max karakter!',
            'gender.required' => 'Pilih jenis kelamin!',
            'nis.required' => 'Nis Wajib diisi!',
            'nis.max' => 'NIS maksimal :max karakter!',
            'class_id.required' => 'Pilih Kelas!' 
        ];
    }
}
