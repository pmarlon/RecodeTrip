using System.ComponentModel.DataAnnotations;

namespace RecodeTrip.Models
{
    public class Contato
    {
        public int ID { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "Nome")]
        public string Nome { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "E-mail")]
        [EmailAddress(ErrorMessage = "Email inválido.")]
        public string Email { get; set; }

        [Display(Name = "Telefone")]
        [Phone]
        public string Telefone { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "Assunto")]
        public string Assunto { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "Mensagem")]
        public string Mensagem { get; set; }

    }
}
