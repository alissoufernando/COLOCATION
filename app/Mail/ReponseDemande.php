<?php

namespace App\Mail;

use App\Models\Postuler;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ReponseDemande extends Mailable
{
    use Queueable, SerializesModels;
    protected $postuler_id, $mydemande, $phone, $id_;
    public $subject = "Reponse de la demande";

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($postuler_id)
    {
        $this->postuler_id = $postuler_id;

        $this->mydemande = Postuler::findOrFail($this->postuler_id);

    //    dd($this->mydemande);
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from($this->mydemande->product->user->email)->subject($this->subject)->view('livewire.site.email.reponse-demande')->with([
            'mydemande' => $this->mydemande,

        ]);
    }
}
