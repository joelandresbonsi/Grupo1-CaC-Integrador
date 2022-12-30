package ar.com.cac.modelos;

public class Usuario {
	private int id;
	private String nombre;
	private String mail;
	private String password;
	private String tel;
	
	public Usuario() {
		
	}
	public Usuario(int id, String nombre, String mail, String password, String tel) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.mail = mail;
		this.password = password;
		this.tel = tel;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
