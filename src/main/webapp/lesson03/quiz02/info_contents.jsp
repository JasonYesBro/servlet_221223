<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>
<%
	// 쿼리파라미터 값으로 넘어온 값을 받아온다.
	String title = request.getParameter("title");
	
	// 강화된 반복문을 사용
	for( Map<String, Object> item: musicList) {
		
		// 조건 : 쿼리스트링으로 넘겨온 파라미터값과 데이터의 title값과 일치하는 경우 
		if (title.equals(item.get("title"))) {
			
			// thumnail, title, singer, album, time, composer, lyricist
			int timeMin = (int)item.get("time") / 60;
			int timeSec = (int)item.get("time") % 60;
	
%>

<%-- 곡 정보 영역 --%>
<h4 class="display-5 mt-3">곡 정보</h4>
<div class="info border border-success mt-3 p-3 d-flex flex-row">
	<div class="mr-3">
		<img
			src="<%= item.get("thumbnail") %>"
			width=200px; alt="앨범이미지" />
	</div>
	<div class="d-flex flex-column">
		<h3 class="display-4 font-weight-light"><%= item.get("title") %></h3>
		<h5 class="display-5 text-success font-weight-bold"><%= item.get("singer") %></h5>
		<div class="d-flex font-weight-light">
			<div class="d-flex flex-column mr-3">
				<span>앨범명</span>
				<span>재생시간</span>
				<span>작곡가</span>
				<span>작사가</span>
			</div>
			<div class="d-flex flex-column">
			
				<%-- 곡제목과 일치하는 해당 item의  --%>
				<span><%= item.get("album") %></span>
				<span><%= timeMin %> : <%= timeSec %></span>
				<span><%= item.get("composer") %></span>
				<span><%= item.get("lyricist") %></span>
			</div>
		</div>
	</div>
<%
			break;
		}
	}
%>
</div>

<%-- 곡목록 --%>
<h4 class="display-5 mt-3">가사</h4>
<hr width=100%;>
<div class="content mt-3 h-25">
가사 정보 없음
</div>
<hr width=100%;>