package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import model.product.ProductDAO;
import model.product.ProductVO;

// ajax 호출해서 리스트들 비동기 처리 시
// ex) 리뷰, 상품 목록 정렬
@WebServlet("/getSearchList")
public class SearchListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchListController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ajax가 보낸 searchContent
		String searchContent = request.getParameter("searchContent");

		System.out.println("searchContent: " + searchContent);

		// ajax()로 넘어온 category, sort를 세팅한 pvo를 가지고 selectAll(pvo)
		ProductVO pvo = new ProductVO();

		pvo.setpSearchContent(searchContent);
		pvo.setSearchLowPrice(0);
		pvo.setSearchHighPrice(10000000);
		ArrayList<ProductVO> list = new ArrayList<>();

		ProductDAO pdao = new ProductDAO();
		list = pdao.selectAll(pvo); // 결과

		// 1. JSON배열 만들어서 2. PVO->JSON 세팅하고 3.JSON배열에 JSON객체 담기
		JSONArray datas = new JSONArray();
		for (int i = 0; i < list.size(); i++) // 배열
		{
			JSONObject data = new JSONObject(); // 배열 내에 들어갈 json
			data.put("pNum", list.get(i).getpNum());
			data.put("category", list.get(i).getCategory());
			data.put("pName", list.get(i).getpName());
			data.put("pImgUrl", list.get(i).getpImgUrl());
			data.put("price", list.get(i).getPrice());
			data.put("pDcPercent", list.get(i).getpDcPercent());
			data.put("dc_price", list.get(i).getDc_price());
			datas.add(data);
		}
		// Gson: 구글에서 JSON 파일 생성을 위해 만든 클래스
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();

		// JSON배열을 String 형식으로 변환
		// response로 보낼 값 resList (JSON배열을 String 형식으로 변환)
		String resList = gson.toJson(datas);

		// System.out.println("resList: " + resList);

		response.setCharacterEncoding("UTF-8"); // response 인코딩
		response.getWriter().println(resList); // request로 보낼 수가 없음: 새로운 요청을 보내는 것이 아니기 때문
	}

}