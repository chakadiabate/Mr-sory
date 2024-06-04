package com.ecole;

public class Ecole{
	private int Id;
	private String nom;
	private String prenom;
	private String date;
	private String sexe;
	private String classe;
	private String photo;
	
	
	public Ecole(int id, String nom, String prenom, String sexe, String classe, String photo, String date) {

		this.Id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.date = date;
		this.sexe = sexe;
		this.classe = classe;
		this.photo = photo;
	}


	public int getId() {
		return Id;
	}


	public void setId(int id) {
		this.Id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getdate() {
		return date;
	}
	
	public void setdate(String date){
		this.date = date;
	}
	
	public String getSexe() {
		return sexe;
	}


	public void setSexe(String sexe) {
		this.sexe = sexe;
	}


	public String getclasse() {
		return classe;
	}


	public void setClasse(String classe) {
		this.classe = classe;
	}


	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	
	
}