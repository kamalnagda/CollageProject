<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.trainenquirysystem.daoImpl.TrainDaoImpl" %>
<%@page import="com.trainenquirysystem.pojo.Train" %>	
<%@page import="java.util.List" %>

<%


	String destination = request.getParameter("source");

	TrainDaoImpl daoObj = new TrainDaoImpl();
	
	List<Train> train = daoObj.getAllTrains();
    request.setAttribute("train", train);

   	RequestDispatcher dispatcher = request.getRequestDispatcher(destination);
    dispatcher.forward(request, response);

%>	