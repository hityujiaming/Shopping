package com.wy.tool;

import java.sql.DriverManager;
import java.sql.*;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class test {
	    public static Connection getConnection(){
	        String driver="com.mysql.jdbc.Driver";   //��ȡmysql���ݿ��������
	        String url="jdbc:mysql://47.75.7.46:3306/db_shopping"; //�������ݿ⣨test�����ݿ�����
	        String name="root";//����mysql���û���
	        String pwd="iloveshark77";//����mysql������
	        Connection conn= null;
	        try {
	            Class.forName(driver);
	        } catch (ClassNotFoundException e1) {
	            System.out.println("��������ʧ��");
	            e1.printStackTrace();
	        }
	        try{
	            conn=(Connection) DriverManager.getConnection(url,name,pwd);//��ȡ���Ӷ���
	            System.out.println("�ɹ��������ݿ⣡");
	            return conn;
	        }catch(SQLException e){
	            e.printStackTrace();
	            return null;
	        }finally {
	            if(conn!=null){
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	        }
	    }
	     
	    public static void closeAll(Connection conn,PreparedStatement ps,ResultSet rs){
	        try{
	            if(rs!=null){
	                rs.close();
	            }
	        }catch(SQLException e){
	            e.printStackTrace();
	        }
	        try{
	            if(ps!=null){
	                ps.close();
	            }
	        }catch(SQLException e){
	            e.printStackTrace();
	        }
	        try{
	            if(conn!=null){
	                conn.close();
	            }
	        }catch(SQLException e){
	            e.printStackTrace();   
	        }
	    }
	     
	    public static void main(String[] args) throws SQLException
	    {
	         
	        Connection cc=test.getConnection();
	    }
	}
