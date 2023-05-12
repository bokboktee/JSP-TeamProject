package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.product.ProductDAO;
import model.product.ProductVO;

public class SearchAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ActionForward forward = new ActionForward();
		forward.setPath("search_result.jsp");
		forward.setRedirect(false);
		
		String searchContent=request.getParameter("searchContent");
		
//		if(searchContent == null) {
//			req
//		}
//		System.out.println("searchContent: "+searchContent);
		request.setAttribute("searchContent", searchContent); //뷰에서 받은 searchContent를 그대로 뷰로 보냄
		return forward;
	}

}
