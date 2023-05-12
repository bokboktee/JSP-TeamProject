package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteBoardAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("컨텐트 파라매터 !! "+request.getParameter("content"));
		System.out.println("업로드 파라매터 !! "+request.getParameter("file"));
		return null;
	}
	
	   }

