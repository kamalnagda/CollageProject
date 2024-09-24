<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean class="com.trainenquirysystem.pojo.Train" id="p" scope="page" ></jsp:useBean>
<jsp:setProperty property="*" name="p"/>

<%

 String name  = p.getTrainName();
out.println("Train Name: " + name);

%>