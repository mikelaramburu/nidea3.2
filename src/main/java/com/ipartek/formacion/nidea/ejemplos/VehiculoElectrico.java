package com.ipartek.formacion.nidea.ejemplos;

public class VehiculoElectrico extends Vehiculo {

	private float potencia; // kw

	public VehiculoElectrico() {
		super();
		this.potencia = 0;
		System.out.println("instanciado VehiculoElectrico");
	}

	public VehiculoElectrico(float potencia) {
		this(); // cambiar super() => this()
		this.potencia = potencia;
	}

	@Override
	public void arrancar() {
		// super.arrancar();
		System.out.println("pulsar boton encendido");
	}

	public float getPotencia() {
		return potencia;
	}

	public void setPotencia(float potencia) {
		this.potencia = potencia;
	}

	@Override
	public String toString() {
		return super.toString() + " VehiculoElectrico [potencia=" + potencia + "]";
	}

}
