using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace RecodeTrip.Models
{
    public class Destino
    {
        public int ID { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "Destino")]
        public string NomeDestino { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "Endereço")]
        public string Endereco { get; set; }

        [Required(ErrorMessage = "Campo Obrigatório")]
        [Display(Name = "Link da Imagem")]
        public string LinkImg { get; set; }

        [Display(Name = "Descrição")]
        public string Descricao { get; set; }
        
        public virtual ICollection<Promocao> Promocao { get; set; }
    }
}
