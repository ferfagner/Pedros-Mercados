package pakege.geral;

public class ProdutosMerc {
	private String codigo;
	private String descricao;
	private String fabricante;
	private int preco;
	
	
	
	
	
	public ProdutosMerc(String codigo, String descricao, String fabricante, int preco) {
		super();
		this.codigo = codigo;
		this.descricao = descricao;
		this.fabricante = fabricante;
		this.preco = preco;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getFabricante() {
		return fabricante;
	}
	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}
	public int getPreco() {
		return preco;
	}
	public void setPreco(int preco) {
		this.preco = preco;
	}
	
	
}
