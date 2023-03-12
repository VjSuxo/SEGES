<?php

namespace App\Http\Requests\User;

use Illuminate\Foundation\Http\FormRequest;

class UpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
        'name'=> 'required|string|max:255',
        'email'=>'required|email|string|unique:users,email,'.
        $this->route('users')->id.'|max:255',
        'password'=>'required|string|max:255',
        'role'=>'required',
        'apellido_Pat'=> 'required|string|max:255',
        'apellido_Mat'=> 'required|string|max:255',
        'anio_Nac'=> 'required|integer|max:255',
        'genero' => 'required|string|max:255',
        'informacion'=> 'required|string|max:255',
        ];
    }

    public function messages()
    {
        return[
        'name.required' => 'Este campo es requerido',
        'name.string' => 'El valor no es correcto',
        'name.max' => 'Solo se permiten 50 caracteres',

        'email.required'=>'Este campo es requerido',
        'email.email'=>'No es un correo electrónico',
        'email.string'=>'El valor no es correcto',
        'email.max'=>'Solo se permiten 255 caracteres',
        'email.unique'=>'Ya se encuentra registrado',

        'password.required' => 'Este campo es requerido',
        'password.string' => 'El valor no es correcto',
        'password.max' => 'Solo se permiten 50 caracteres',

        'role.required' => 'Este campo es requerido',

        'apellido_Pat.required' => 'Este campo es requerido',
        'apellido_Pat.string' => 'El valor no es correcto',
        'apellido_Pat.max' => 'Solo se permiten 50 caracteres',

        'apellido_Pat.required' => 'Este campo es requerido',
        'apellido_Pat.string' => 'El valor no es correcto',
        'apellido_Pat.max' => 'Solo se permiten 50 caracteres',

        'anio_Nac.required' => 'Este campo es requerido',
        'anio_Nac.string' => 'El valor no es correcto',
        'anio_Nac.max' => 'Solo se permiten 50 caracteres',

        'genero.required' => 'Este campo es requerido',
        'genero.string' => 'El valor no es correcto',
        'genero.max' => 'Solo se permiten 50 caracteres',

        'informacion.required' => 'Este campo es requerido',
        'informacion.string' => 'El valor no es correcto',
        'informacion.max' => 'Solo se permiten 50 caracteres',
        ];
    }
}
