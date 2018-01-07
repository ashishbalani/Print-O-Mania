package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import java.util.ArrayList;
import java.util.List;

import com.controller.DBConn;

public class SearchDao
{
	private Connection conn;
//	private String[] image;
	
	public SearchDao()
	{conn= DBConn.getConnection();}
	
	public List searchItem(String item)
	{	PreparedStatement preparedStatement,ps1;
	List ls= new ArrayList();
		try
		{	int category = 0;
			preparedStatement =conn.prepareStatement("select * from categories where category_name='"+item+"'");
			
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next())
			{
				category=rs.getInt("category_id");
			}
			
			
			int i=0;
			
			ps1 =conn.prepareStatement("SELECT * FROM alltemplates WHERE category_id="+category);
	//		System.out.println("dao"+category);
			ResultSet rs1= ps1.executeQuery();
			while(rs1.next())
			{
				String image=rs1.getString("path_image");
				//System.out.println(image[i]);
//				i++;
				ls.add(image);
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return ls;
	}
}
