<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class NewUser extends Mailable
{
    use Queueable, SerializesModels;
    protected $name, $email, $phone, $password;
    public $subject = 'Nouvel Enregistrement';
    public $mailsite = 'colocStudent@adm.com';

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($name, $email, $phone, $password)
    {

        $this->name = $name;
        $this->email = $email;
        $this->phone = $phone;
        $this->password = $password;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // dd('ok');
        return $this->from($this->mailsite)->subject($this->subject)->view('livewire.site.email.email-new-user')->with([
            'email' => $this->email,
            'name' => $this->name,
            'password' => $this->password,
            'phone' => $this->phone,

        ]);
    }
}
