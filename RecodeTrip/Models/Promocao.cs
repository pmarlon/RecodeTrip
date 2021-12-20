using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RecodeTrip.Models
{
    public class Promocao
    {
        public int ID { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "Destino")]
        public int DestinoID { get; set; }
        [ForeignKey("DestinoID")]
        public virtual Destino Destino { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "Avaliação")]
        [Range(0, 5, ErrorMessage = "Só são permitidos valores entre 0 a 5")]
        public int avaliacao { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "Desconto %")]
        [Range(0, 100, ErrorMessage = "Só são permitidos valores entre 0 a 100")]
        public int desconto { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "Valor R$")]
        public string valor { get; set; }
    }
}
