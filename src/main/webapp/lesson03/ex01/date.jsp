<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 조각 페이지이므로 안에 tag들을 삭제 --%>

<p>
	현재 시간 : <%= Calendar.getInstance().getTime() %>
</p>