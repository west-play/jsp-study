package ezen.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.command.CommandHandler;

public class HelloHandler implements CommandHandler {
	
	public String process(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		request.setAttribute("hello", "안녕하세요!");
		return "/view/hello.jsp";
	}

}
