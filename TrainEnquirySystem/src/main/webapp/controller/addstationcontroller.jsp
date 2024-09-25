<%@page import="com.trainenquirysystem.daoImpl.StationDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.trainenquirysystem.daoImpl.StationDaoImpl"%>
<jsp:useBean class="com.trainenquirysystem.pojo.Station" id="station" scope="page" ></jsp:useBean>
<jsp:setProperty property="*" name="station"/>
<%
    

StationDaoImpl daoobj = new StationDaoImpl();
	if(daoobj.addStation(station))
	{
		
	}
	else
	{

     }

%>

	
