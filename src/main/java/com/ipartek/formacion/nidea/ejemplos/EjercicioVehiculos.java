package com.ipartek.formacion.nidea.ejemplos;

import com.ipartek.formacion.nidea.ejemplos.VehiculoElectrico;

public class EjercicioVehiculos {

	public static void main(String[] args) {

		/*
		 * No se pueden crear Objetos de una Clase Abstracta
		 * 
		 * Vehiculo rayoMacQueen = new Vehiculo();
		 * System.out.println(rayoMacQueen.toString());
		 */

		System.out.println("---------------------------------------");

		VehiculoElectrico tesla = new VehiculoElectrico();
		System.out.println(tesla.toString());

		System.out.println("Tesla");
		System.out.println("color:" + tesla.getColor());

	}

}
