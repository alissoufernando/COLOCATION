<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class NewUserLogin extends Mailable
{
    use Queueable, SerializesModels;
    protected $name, $email, $phone;
    public $subject = 'Nouvel Enregistrement';
    public $mailsite = 'colocStudent@adm.com';
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($name, $email, $phone)
    {

        $this->name = $name;
        $this->email = $email;
        $this->phone = $phone;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from($this->mailsite)->subject($this->subject)->view('livewire.site.email.email-new-user-Login')->with([
            'email' => $this->email,
            'name' => $this->name,
            'phone' => $this->phone,

        ]);
    }
}
