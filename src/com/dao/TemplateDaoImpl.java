package com.dao;
import java.io.InputStream;
import java.sql.*;

import com.controller.DBConn;
import com.model.UploadTemplate;

import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.util.*;  
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;
public class TemplateDaoImpl{ 
	private static Connection con;
	
	public TemplateDaoImpl(){
		con = DBConn.getConnection();
	}
	
public ArrayList<String> getCategories(){  
	ArrayList<String> list=new ArrayList<String>();
	try{  
		//here template is database name, root is username and password  
		Statement stmt=con.createStatement();  
		ResultSet rs=stmt.executeQuery("select * from categories");  
		
		//Creating arraylist  
		while(rs.next())  
		{
			list.add(rs.getString(2));
		}
		 //con.close(); 
		 
	}catch(Exception e){ System.out.println(e);}  
	return list;
	}  

	public ArrayList<String> getImages(String category_name){  
	ArrayList<String> list=new ArrayList<String>();
	try{  
		//here template is database name, root is username and password  
		
		Statement stmt=con.createStatement();  
		ResultSet rs=stmt.executeQuery("select * from alltemplates, categories where alltemplates.category_id = categories.category_id and categories.category_name='"+category_name+"'");  
		
		//Creating arraylist  
		while(rs.next())  
		{
			System.out.println(rs.getString("path_image"));
			list.add(rs.getString("path_image"));
		}
		 
	}catch(Exception e){ System.out.println(e);}  
	return list;
	} 
	public void upload(UploadTemplate uploadVO)
	{
		try{
			InputStream is = uploadVO.getIs();
			int size = (int) uploadVO.getFile().getSize();
			String s="INSERT INTO usertemplate (userId,template) values (?,?)";
			PreparedStatement statement=con.prepareStatement(s);
			statement.setString(1, uploadVO.getUserID());
		//	System.out.println("1111111111111112222222222222");
			if(uploadVO.getIs()!=null)
			{
				
				statement.setBinaryStream(2, is,size);
				System.out.println("000004441111111111111112222222222222");
			//	statement.setBlob(2,uploadVO.getIs());
			}
			statement.executeUpdate();
			System.out.println("jjjjjjjj1111111111111112222222222222");
			
		}
		catch(Exception e)
		{
			System.out.println();
			e.getStackTrace();
		}
	}
	public List displayTemplate(String userId)
	{
		List li=new ArrayList();
		
		try{
			String query="SELECT * FROM usertemplate WHERE userId='"+userId+"'";
			PreparedStatement preparedStmt= con.prepareStatement(query);
			ResultSet rs = preparedStmt.executeQuery();
			while(rs.next()){
				UploadTemplate uploadTemplate=new UploadTemplate();
				uploadTemplate.setId(Integer.parseInt(rs.getString("id")));
				uploadTemplate.setUserID(rs.getString("userId"));
				uploadTemplate.setIs(rs.getBinaryStream("template"));
				li.add(uploadTemplate);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return li;
	}
	public byte[] getUserImages(String imageId) throws SQLException {
		   PreparedStatement preparedStatement = con.prepareStatement("SELECT template FROM `usertemplate` WHERE id='"+imageId+"'");			
		   ResultSet rs= preparedStatement.executeQuery();
		   byte[] blobAsBytes=new byte[500];
		   while(rs.next()){
		   	Blob blob=rs.getBlob("template");
		   	blobAsBytes=blob.getBytes(1,(int) blob.length());
		   }
		return blobAsBytes;
	}
} 