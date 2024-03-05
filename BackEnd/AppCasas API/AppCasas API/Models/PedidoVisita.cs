namespace AppCasas_API.Models
{
    public class PedidoVisita
    {
        public int Id { get; set; }
        public string Nome { get; set;}
        public string Email { get; set;}
        public int Fk_imovel_id { get; set; }
    }
}
