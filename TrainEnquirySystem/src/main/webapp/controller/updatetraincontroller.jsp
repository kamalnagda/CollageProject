<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.trainenquirysystem.daoImpl.TrainDaoImpl"%>
<jsp:useBean class="com.trainenquirysystem.pojo.Train" id="train" scope="page" ></jsp:useBean>
<jsp:setProperty property="*" name="train"/>

<%


	TrainDaoImpl daoobj = new TrainDaoImpl();
	if(daoobj.updateTrain(train))
	{
	    request.setAttribute("message", "Train update successfully");
	}
	else
	{
		request.setAttribute("message", "Train update Faileds");
	}

    RequestDispatcher dispatcher = request.getRequestDispatcher("updatetrain");
    dispatcher.forward(request, response);
%>