package com.ipartek.formacion.nidea.pojo;

public class Coche implements AutoCloseable {

	public Coche() {
		super();
		System.out.println("Creamos Coche");
	}

	public void conducir() {
		System.out.println("brum brum estamos conduciendo");
	}

	@Override
	public void close() throws Exception {
		System.out.println("Paramos cocche");
	}

	public static void main(String[] args) {

		// si declaramos un objeto que implemente la interfaz Autoclosable
		// dentro de los parentesis de TRY, cuando llega al FINALLY se ejecuta de
		// forma automatica su metodo "close()"

		try (Coche c = new Coche()) {
			System.out.println("Empezamo programa");
			c.conducir();
			String nullo = null;
			nullo.length();

		} catch (Exception e) {
			System.out.println("Tenemos una excepcion");

		} finally {
			System.out.println("finalizamos");
		}

	}

}
