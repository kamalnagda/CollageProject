<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.trainenquirysystem.daoImpl.TrainDaoImpl" %>
<%@page import="com.trainenquirysystem.pojo.Train" %>	


<%

	String trainNumber = request.getParameter("trainNumber");
	String destination = request.getParameter("source");

	TrainDaoImpl daoObj = new TrainDaoImpl();
	
	Train train = daoObj.getTrain(trainNumber);
    request.setAttribute("train", train);

    RequestDispatcher dispatcher = request.getRequestDispatcher(destination);
    dispatcher.forward(request, response);

%>	