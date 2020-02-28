/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import static Model.DatabaseInfo.driverName;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nhat anh
 */
public class ShopInfo implements DatabaseInfo {

    private String shopName, address, phone, email, openTime;

    public ShopInfo() {
    }

    public ShopInfo(String shopName, String address, String phone, String email, String openTime) {
        this.shopName = shopName;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.openTime = openTime;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOpenTime() {
        return openTime;
    }

    public void setOpenTime(String openTime) {
        this.openTime = openTime;
    }

    @Override
    public String toString() {
        return shopName + "\n" + address + "\nPhone: " + phone + "\nEmail: " + email;
    }

    public ShopInfo getInfo() {
        ShopInfo shop = new ShopInfo();
        Connection con = null;
        try {
            Class.forName(driverName);
            con = DriverManager.getConnection(HOSTNAME, USERNAME, PASSWORD);
            PreparedStatement stmt = con.prepareStatement("Select ShopName, address, phone, email, open_time from ShopInfo");
            ResultSet rs = stmt.executeQuery();
            rs.next();
            String sname = rs.getString(1);
            String address = rs.getString(2);
            String phone = rs.getString(3);
            String email = rs.getString(4);
            String opentime = rs.getString(5);
            shop = new ShopInfo(sname, address, phone, email, opentime);
        } catch (Exception ex) {
            Logger.getLogger(ShopInfo.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ShopInfo.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return shop;
    }
}
