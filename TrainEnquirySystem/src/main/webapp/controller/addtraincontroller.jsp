<%@page import="com.trainenquirysystem.daoImpl.TrainDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.trainenquirysystem.daoImpl.TrainDaoImpl"%>
<jsp:useBean class="com.trainenquirysystem.pojo.Train" id="train" scope="page" ></jsp:useBean>
<jsp:setProperty property="*" name="train"/>

<%

	TrainDaoImpl daoobj = new TrainDaoImpl();
	if(daoobj.addTrain(train))
	{
		
	}
	else
	{
		
	}

%>