package com.ipartek.formacion.nidea.util;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import com.ipartek.formacion.nidea.ejemplos.Utilidades;

public class UtilidadesTest {

	@Test
	public void testLimpiarEspacios() {

		assertEquals("hola que haxe", Utilidades.limpiarEspacios("     hola    que    haxe  "));
		assertEquals("", Utilidades.limpiarEspacios(null));
	}

}
