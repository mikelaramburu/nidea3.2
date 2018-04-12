package com.ipartek.formacion.nidea.ejemplos;

public interface Imprimible extends Yoquese, Queseyo {

	final int PANTALLA = 0;
	final int PROYECTOR = 1;
	final int BRAILLE = 2;

	void imprimir();

}
