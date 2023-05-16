package com.productos.negocio;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.*;
import java.util.*;

import com.productos.datos.*;

public class Producto {

	private int id;
	private String nombre;
	private int cantidad;
	private double precio;
	private byte foto;

	public String consultarTodo() {
		String sql = "SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con = new Conexion();
		String tabla = "<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		try {
			while (rs.next()) {
				tabla += "<tr><td>" + rs.getInt(1) + "</td>" + "<td>" + rs.getString(3) + "</td>" + "<td>"
						+ rs.getInt(4) + "</td>" + "<td>" + rs.getDouble(5) + "</td>" + "</td></tr>"
						+ "<td> <a href= BuscarProducto.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"
						+ "<td> <a href= EliminarProducto.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"textalign: center\">Eliminar</pre></a></td>"
;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla += "</table>";
		return tabla;
	}

	public String buscarProductoCategoria(int cat) {
		String sentencia = "SELECT descripcion_pr, precio_pr FROM tb_producto WHERE id_cat=" + cat;
		Conexion con = new Conexion();
		ResultSet rs = null;
		String resultado = "<table border=3>";
		try {
			rs = con.Consulta(sentencia);
			while (rs.next()) {
				resultado += "<tr><td>" + rs.getString(1) + "</td>" + "<td>" + rs.getDouble(2) + "</td></tr>";
			}
			resultado += "</table>";
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}

	public String ingresarProducto( int cat, String nombre, int cantidad, double precio, String directorio) {
		String result = "";
		Conexion con = new Conexion();
		PreparedStatement pr = null;
		String sql = "INSERT INTO tb_producto (id_cat," + "nombre_pr,cantidad_pr,precio_pr,foto_pr) "
				+ "VALUES(?,?,?,?,?)";
		try {
			pr = con.getConexion().prepareStatement(sql);
			pr.setInt(1, id);
			pr.setInt(2, cat);
			pr.setString(3, nombre);
			pr.setInt(4, cantidad);
			pr.setDouble(5, precio);
			File fichero = new File(directorio);
			FileInputStream streamEntrada = new FileInputStream(fichero);
			pr.setBinaryStream(6, streamEntrada, (int) fichero.length());
			if (pr.executeUpdate() == 1) {
				result = "Inserción correcta";
			} else {
				result = "Error en inserción";
			}
		} catch (Exception ex) {
			result = ex.getMessage();
		} finally {
			try {
				pr.close();
				con.getConexion().close();
			} catch (Exception ex) {
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	public void ConsulEditarProductos(int cod) {
		Conexion obj = new Conexion();
		ResultSet rs = null;
		
		String sql = "SELECT id_pr,id_cat,descripcion_pr,precio_pr,cantidad_pr FROM tb_producto where id_pr = '"+cod+"'";
		
		try {
			rs = obj.Consulta(sql);
			while(rs.next()) {
				setId_pr(rs.getInt(1));
				setId_cat(rs.getInt(2));
				setDescripcion_pr(rs.getString(3));
				setPrecio_pr(rs.getFloat(4));
				setCantidad_pr(rs.getInt(5));
			}
		}catch(Exception e) {
			
		}
	}

	private void setCantidad_pr(int int1) {
		this.setCantidad(int1);
	}

	private void setPrecio_pr(float float1) {
		this.setPrecio(float1);
		
	}

	private void setDescripcion_pr(String string) {
		this.setDescripcion_pr(string);
		
	}

	private void setId_cat(int int1) {
		this.setId_cat(int1);
		
	}

	private void setId_pr(int int1) {
		this.setId_pr(int1);
		
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public byte getFoto() {
		return foto;
	}

	public void setFoto(byte foto) {
		this.foto = foto;
	}

	
	
	

}
