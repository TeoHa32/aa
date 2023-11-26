package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class productDAO {

	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	
	public List<product> getAll(){
		List<product> list = new ArrayList<product>();
		String query = "select * from products";
		
		try {
			conn = DBconnect.getConnection();
			ps = conn.prepareStatement(query);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				product p = new product();
				p.setName(rs.getString("name"));
				p.setAuthor(rs.getString("author"));
				p.setPublisher(rs.getString("publisher"));
				p.setImg(rs.getString("img"));
				p.setPrice(rs.getFloat("price"));
				p.setQuantity(rs.getInt("quantity"));
				p.setDescription(rs.getString("description"));
				list.add(p);
			}
			return list;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.print("Lỗi truy vấn!");
		}
		
		return null;
	}
	
	public List<product> getAllByCategory(int id){
		List<product> list = new ArrayList<product>();
		String query = "select * from products where Sub_category_id = " + id;
		
		try {
			conn = DBconnect.getConnection();
			ps = conn.prepareStatement(query);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				product p = new product();
				p.setName(rs.getString("name"));
				p.setAuthor(rs.getString("author"));
				p.setPublisher(rs.getString("publisher"));
				p.setImg(rs.getString("img"));
				p.setPrice(rs.getFloat("price"));
				p.setQuantity(rs.getInt("quantity"));
				p.setDescription(rs.getString("description"));
				list.add(p);
			}
			return list;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.print("Lỗi truy vấn!");
		}
		
		return null;
	}
	
	public List<product> sortPriceLowToHigh(){
		List<product> list = new ArrayList<product>();
		String query = "select * from products "+
						"order by price asc";
		
		try {
			conn = DBconnect.getConnection();
			ps = conn.prepareStatement(query);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				product p = new product();
				p.setName(rs.getString("name"));
				p.setAuthor(rs.getString("author"));
				p.setPublisher(rs.getString("publisher"));
				p.setImg(rs.getString("img"));
				p.setPrice(rs.getFloat("price"));
				p.setQuantity(rs.getInt("quantity"));
				p.setDescription(rs.getString("description"));
				list.add(p);
			}
			return list;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.print("Lỗi truy vấn!");
		}
		
		return null;
	}
	
	public List<product> sortPriceHighToLow(){
		List<product> list = new ArrayList<product>();
		String query = "select * from products "+
						"order by price desc";
		
		try {
			conn = DBconnect.getConnection();
			ps = conn.prepareStatement(query);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				product p = new product();
				p.setName(rs.getString("name"));
				p.setAuthor(rs.getString("author"));
				p.setPublisher(rs.getString("publisher"));
				p.setImg(rs.getString("img"));
				p.setPrice(rs.getFloat("price"));
				p.setQuantity(rs.getInt("quantity"));
				p.setDescription(rs.getString("description"));
				list.add(p);
			}
			return list;
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.print("Lỗi truy vấn!");
		}
		
		return null;
	}
	
	public product getDetail(String id){
		
		String query = "select * from products where id = " +id;
		product p = new product();

		try {
			conn = DBconnect.getConnection();
			ps = conn.prepareStatement(query);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				p.setName(rs.getString("name"));
				p.setAuthor(rs.getString("author"));
				p.setPublisher(rs.getString("publisher"));
				p.setImg(rs.getString("img"));
				p.setPrice(rs.getFloat("price"));
				p.setQuantity(rs.getInt("quantity"));
				p.setDescription(rs.getString("description"));
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.print("Lỗi truy vấn!");
		}
		
		return p;
	}
	
	
	public static void main(String[] args) {

		
		productDAO dao = new productDAO();
		product p = dao.getDetail("61");
		System.out.println(p.name);
		System.out.println(p.author);
		System.out.println(p.publisher);
		System.out.println(p.price);
		System.out.println("=================================");
		
		
	}
}
