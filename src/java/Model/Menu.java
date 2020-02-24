/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nhat anh
 */
public class Menu implements DatabaseInfo {

    private String id, name, type, image;
    private float price;

    public Menu(String id, String name, String type, String image, float price) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.image = image;
        this.price = price;
    }

    public Menu() {

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Menu{" + "id=" + id + ", name=" + name + ", type=" + type + ", image=" + image + ", price=" + price + '}';
    }
    
    public static ArrayList<Menu> getCake() {
        ArrayList<Menu> cakeList = new ArrayList<>();
        try {
            Class.forName(driverName);
            Connection con = DriverManager.getConnection(HOSTNAME, USERNAME, PASSWORD);
            PreparedStatement stmt = con.prepareStatement("select id, name, type, price, image from Menu where type = 'Food'");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String type = rs.getString(3);
                float price = rs.getFloat(4);
                String image = rs.getString(5);
                cakeList.add(new Menu(id, name, type, image, price));
            }
            con.close();
        } catch (Exception ex) {
            Logger.getLogger(ShopInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cakeList;
    }
    
    public static ArrayList<Menu> getDrink() {
        ArrayList<Menu> drinkList = new ArrayList<>();
        try {
            Class.forName(driverName);
            Connection con = DriverManager.getConnection(HOSTNAME, USERNAME, PASSWORD);
            PreparedStatement stmt = con.prepareStatement("select id, name, type, price, image from Menu where type = 'Drink'");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String type = rs.getString(3);
                float price = rs.getFloat(4);
                String image = rs.getString(5);
                drinkList.add(new Menu(id, name, type, image, price));
            }
            con.close();
        } catch (Exception ex) {
            Logger.getLogger(ShopInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return drinkList;
    }
    
}
