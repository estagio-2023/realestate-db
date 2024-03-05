namespace AppCasas_API.Models
{
    public class Imovel
    {
        public int Id { get; set; }
        public string Titulo { get; set; }
        public string Morada { get; set; }
        public string C_postal { get; set; }
        public string Descricao { get; set; }
        public  DateTime Ano_construcao{ get; set; }
        public float preco { get; set; }
        public int Metros_quadrados { get; set; }
        public string Classe_energetica { get; set; }
        public int Fk_cliente_id { get; set; }
        public int Fk_vendedor_id { get; set; }
        public int Fk_tipo_imovel_id { get; set; }
        public int Fk_cidades_id { get; set; }
        public int Fk_tipologia_id { get; set; }
    }
}
