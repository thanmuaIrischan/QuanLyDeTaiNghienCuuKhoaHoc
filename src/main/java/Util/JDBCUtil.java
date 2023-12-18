package Util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Date;
import java.time.LocalDate;
public class JDBCUtil {
	public static Connection getConnection()
	{
		Connection conn=null;
		try
		{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			String url="jdbc:mysql://localhost:3306/qlnckh?useUnicode=true&characterEncoding=UTF-8&useSSl=false";
			String username="root";
			String password="Thanmua154227";
			
			conn=DriverManager.getConnection(url,username,password);
		}
		catch (SQLException e)
		{
			
			System.out.println("Connection error...");
			e.printStackTrace();
		}
		return conn;
	}
	public static void closeConnection(Connection conn)
	{
		try {
			if(conn!=null)
			{
				System.out.println("Close connection!");
				conn.close();	
			}
		}
		catch (SQLException e)
		{
			
			e.printStackTrace();
		}
	}
	public static Date getSQLDate(LocalDate date) {
        return java.sql.Date.valueOf(date);
    }

    public static LocalDate getUtilDate(Date sqlDate) {
        return sqlDate.toLocalDate();
    }
}
