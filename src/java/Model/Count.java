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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author taro.noo
 */
public class Count implements DatabaseInfo{
    private int count;

    public Count() {
    }

    public Count(int count) {
        this.count = count;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Count{" + "count=" + count + '}';
    }
    
    public static int getHitCount() {
        int hitcount = 0;
        try {
            Class.forName(driverName);
            Connection con = DriverManager.getConnection(HOSTNAME, USERNAME, PASSWORD);
            PreparedStatement stmt = con.prepareStatement("Select count from Count");
            ResultSet rs = stmt.executeQuery();
            rs.next();
            hitcount = rs.getInt(1);
            con.close();
        } catch (Exception ex) {
            Logger.getLogger(Count.class.getName()).log(Level.SEVERE, null, ex);
        }
        return hitcount;
    }
    
    public static boolean updateCount(int count){
        try {
            Class.forName(driverName);
            Connection con = DriverManager.getConnection(HOSTNAME, USERNAME, PASSWORD);
            //Prepared Statement
            PreparedStatement stmt = con.prepareStatement("Update Count set count=?");
            stmt.setInt(1, count);
            int rc = stmt.executeUpdate();
            con.close();
            return rc == 1;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return false;
    } 
    
    public static int[] toArray(int n){
        int[] array = {0,0,0,0,0,0,0};
        for(int i = 6; n > 0; i--){
            array[i] = n % 10;
            n /= 10;
        }
        return array;
    }
    
    public static void main(String[] args) {
        int[] a = toArray(123456);
        for(int i = 0; i < a.length; i++){
            System.out.println(a[i]);
        }
    }
}
