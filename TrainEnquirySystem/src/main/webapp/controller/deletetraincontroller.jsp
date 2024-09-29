<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.trainenquirysystem.daoImpl.TrainDaoImpl" %>
<%@page import="com.trainenquirysystem.pojo.Train" %>	


<%

	String trainId = request.getParameter("trainId");

	TrainDaoImpl daoObj = new TrainDaoImpl();
	
	
	if(daoObj.deleteTrain(trainId))
	{
	    request.setAttribute("message", "Train Deleted successfully");
	}
	else
	{
		request.setAttribute("message", "Train deletion Failed");
	}

    RequestDispatcher dispatcher = request.getRequestDispatcher("deletetrain");
    dispatcher.forward(request, response);

%>	