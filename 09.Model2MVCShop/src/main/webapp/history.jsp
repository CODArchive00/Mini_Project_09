<%@ page contentType="text/html; charset=EUC-KR"%>

<html>
<head>

<title>��� ��ǰ ����</title>

</head>
<body>
	����� ��� ��ǰ�� �˰� �ִ�
	<br>
	<br>
	<%
	String historyProdNo="";
	String historyProdName="";

	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie cookie = cookies[i];
			if (cookie.getName().startsWith("history")) {
		historyProdNo += cookie.getName() + ",";
		historyProdName += cookie.getValue() + ",";
			}
		}
		String[] hNo = historyProdNo.split(",");
		String[] hName = historyProdName.split(",");
		for (int i = 0; i < hNo.length; i++) {
			if (!hNo[i].equals(",")) {
	%>
				<a	href="product/getProduct?prodNo=<%=hNo[i].replaceAll("history", "")%>&menu=search" target="rightFrame">
				<%=i+". "+hName[i].replace('&', ' ')%></a>
				<br>
	<%	
			}
		}
	}
	%>


</body>
</html>