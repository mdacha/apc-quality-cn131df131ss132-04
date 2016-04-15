package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import static bean.Provider.*;

public class Tapat {
    public static void main(String[] args) throws Exception {
        Class.forName(DRIVER);
        Connection conn = DriverManager.getConnection(CONNECTION_URL);
        Statement stat = conn.createStatement();
        //stat.executeUpdate("drop table if exists tapat;");
        //stat.executeUpdate("create table tapat (candidacy,name,vote,level,precinct,barangay,city,district,province,region,ip,mac,latitude,longitude,timestamp);");
//        stat.executeUpdate("delete from tapat where precinct='0039B';");
//        stat.executeUpdate("delete from tapat where timestamp='2016-04-12 17:47:23';");
        //stat.executeUpdate("update tapat set name = REPLACE(name, 'Leni', 'Leni Robredo');");
        
        ResultSet rs = stat.executeQuery("select * from tapat where timestamp='2016-03-11 21:55:22';");
        while (rs.next()) {
            System.out.println("candidacy = " + rs.getString("candidacy"));
            System.out.println("name = " + rs.getString("name"));
            System.out.println("votes = " + rs.getString("vote"));
            System.out.println("sender level = " + rs.getString("level"));
            System.out.println("precinct = " + rs.getString("precinct"));
            System.out.println("barangay = " + rs.getString("barangay"));
            System.out.println("city = " + rs.getString("city"));
            System.out.println("district = " + rs.getString("district"));
            System.out.println("province = " + rs.getString("province"));
            System.out.println("region = " + rs.getString("region"));
            System.out.println("ip = " + rs.getString("ip"));
            System.out.println("mac = " + rs.getString("mac"));
            System.out.println("latitude = " + rs.getString("latitude"));
            System.out.println("longitude = " + rs.getString("longitude"));
            System.out.println("timestamp = " + rs.getString("timestamp"));
            System.out.println("=================================");
            
        }
        rs.close();
        conn.close();
    }
  }