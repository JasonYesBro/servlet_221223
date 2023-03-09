<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<Map<String, String>> list = new ArrayList<>();
Map<String, String> map = new HashMap<String, String>() {
	{
		put("ch", "5");
		put("name", "SBS");
		put("category", "지상파");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "7");
		put("name", "KBS2");
		put("category", "지상파");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "9");
		put("name", "KBS1");
		put("category", "지상파");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "11");
		put("name", "MBC");
		put("category", "지상파");
	}
};
list.add(map);

map = new HashMap<String, String>() {
	{
		put("ch", "54");
		put("name", "OCN");
		put("category", "영화");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "56");
		put("name", "Screen");
		put("category", "영화");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "57");
		put("name", "Mplex");
		put("category", "영화");
	}
};
list.add(map);

map = new HashMap<String, String>() {
	{
		put("ch", "30");
		put("name", "KBS 드라마");
		put("category", "드라마");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "32");
		put("name", "MBC 드라마");
		put("category", "드라마");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "34");
		put("name", "Olive");
		put("category", "드라마");
	}
};
list.add(map);

map = new HashMap<String, String>() {
	{
		put("ch", "3");
		put("name", "tvN");
		put("category", "예능");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "28");
		put("name", "MBC Every1");
		put("category", "예능");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "48");
		put("name", "JTBC2");
		put("category", "예능");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "49");
		put("name", "E채널");
		put("category", "예능");
	}
};
list.add(map);

map = new HashMap<String, String>() {
	{
		put("ch", "120");
		put("name", "SPOTV");
		put("category", "스포츠");
	}
};
list.add(map);
map = new HashMap<String, String>() {
	{
		put("ch", "121");
		put("name", "KBSN 스포츠");
		put("category", "스포츠");
	}
};
list.add(map);
%>
<!-- <table class="table">
	<thead>
		<th class="col-4">채널</th>
		<th class="col-4">채널명</th>
		<th class="col-4">카테고리</th>
	</thead>
 -->
	<tbody>
		<%
		List<Map<String, String>> itemList = new ArrayList<>();
		itemList = list;

		String ctg = request.getParameter("category");

		for (Map<String, String> item : itemList) {

			// 만약 쿼리 파라미터값으로 지상파 값이 넘어오게 된다면 해당 카테고리 값들을 보여줘야 함
			// 어떻게 보여줘야 할까
			// 해당 값들을 다시 담는법 그리고 난 후 보여주는 법

			String ch = "";
			String name = "";
			String category = "";
			// ctg 의 값이 null 일 경우 모든 데이터보여주기
			if (ctg == null || ctg.equals(item.get("category"))) {
				ch = item.get("ch");
				name = item.get("name");
				category = item.get("category");
			}
			
		%>
		<tr>
			<td><%=ch%></td>
			<td><%=name%></td>
			<td><%=category%></td>
		</tr>
		<%
		}
		%>
	</tbody>
<!-- </table> -->