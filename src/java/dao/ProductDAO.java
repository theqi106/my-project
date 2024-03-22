/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Product;
import model.SupplierDTO;

/**
 *
 * @author THevY
 */
public class ProductDAO {
    public ArrayList<Product> selectAll() {
        
       ArrayList<Product> result = new ArrayList<Product>();
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBCUtil.getConnection();
			
			// Bước 2: tạo ra đối tượng statement
			String sql = "SELECT * FROM products";
			PreparedStatement st = con.prepareStatement(sql);
			
			// Bước 3: thực thi câu lệnh SQL
			System.out.println(sql);
			ResultSet rs = st.executeQuery();
			
			// Bước 4:
			while(rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				double price = rs.getDouble("price");
				int quantity = rs.getInt("quantity");
				
				Product product = new Product(id, name, price, quantity);
				result.add(product);
			}
			
			// Bước 5:
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
        }
    public void deleteById(int t) {
          
        try {
            Connection con = JDBCUtil.getConnection();
            String sql = " DELETE FROM products WHERE id =?";

            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, t);
            st.executeUpdate();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

}
     public void edit(  int id, String name, String price, String quantity) {

        try {
            // Bước 1: tạo kết nối đến CSDL
            Connection con = JDBCUtil.getConnection();

            // Bước 2: tạo ra đối tượng statement
            String sql = "UPDATE products " + " SET " + "name=?, price=?,  "
                    + "quantity=?" + " WHERE id=?";

            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, name);
            st.setString(2, price);
            st.setString(3, quantity);
            st.setInt(4, id);
            

            // Bước 3: thực thi câu lệnh SQL
            st.executeUpdate();

            // Bước 4:
            System.out.println("Bạn đã thực thi: " + sql);

            // Bước 5:
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

}
      public ArrayList<Product> searchProductByName(String txtSearch) {
        ArrayList<Product> result = new ArrayList<Product>();
        try {
            // Bước 1: tạo kết nối đến CSDL
            Connection con = JDBCUtil.getConnection();

            // Bước 2: tạo ra đối tượng statement
            String sql = "SELECT * FROM products WHERE name LIKE ?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");
            // Bước 3: thực thi câu lệnh SQL
            System.out.println(sql);
            ResultSet rs = st.executeQuery();

            // Bước 4:
            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");

                Product s = new Product(id, name, price, quantity);
                result.add(s);
            }

            // Bước 5:
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return result;
    }
    public Product selectById(String t) {
        Product result = null;
        Connection con = JDBCUtil.getConnection();
        String sql = "SELECT * FROM products WHERE id = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, t);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                double price = rs.getDouble(3);
                int quantity = rs.getInt(4);
                

                
                result = new Product(id, name, price, quantity);
            }
            con.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }
    public void insert(String name, int price, int quantity) {

        try {
            // Bước 1: tạo kết nối đến CSDL
            Connection con = JDBCUtil.getConnection();

            // Bước 2: tạo ra đối tượng statement
            String sql = "INSERT INTO products(name,price,quantity) VALUES (?,?,?)";

            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, name);
            st.setInt(2, price);
            st.setInt(3, quantity);
            

            // Bước 3: thực thi câu lệnh SQL
            st.executeUpdate();

            // Bước 4:
            System.out.println("Bạn đã thực thi: " + sql);

            // Bước 5:
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
    public static void main(String[] args) {
        ProductDAO pDAO = new ProductDAO();
        pDAO.edit(1, "laptop", "1", "1");
    }
    
}
