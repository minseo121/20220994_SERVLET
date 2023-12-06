<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

        
	<div class="container">
		<div class="container">
                <div class="image-container">
                    <img src="img/baemin.png" alt="쇼핑몰 메인 화면 이미지">
                </div>
        </div>
	</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 	
	
	<div class="container">
		<div class="row" align="center">
            <%
		String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	        %>

			<div class="col-md-4">
                <div class="card bg-dark text-white">
                        <img src="../img/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">야옹</h5>
                        <p class="card-text">츄르줘라</p>
                        </div>
                        </div>
                <h3><%=rs.getString("p_name")%></h3>
                <p><%=rs.getString("p_description")%>
                <p><%=rs.getString("p_UnitPrice")%>원
                <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
			</div>
            <%
			} // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
	    %>

		</div>
        <div class="list-group">
          <a href="#" class="list-group-item list-group-item-action">
            한집 배달
          </a>
          <a href="#" class="list-group-item list-group-item-action">알뜰 배달</a>
    </div>

		<hr>
	</div>
