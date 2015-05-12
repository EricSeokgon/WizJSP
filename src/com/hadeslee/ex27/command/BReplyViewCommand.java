package com.hadeslee.ex27.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hadeslee.ex27.dao.BDao;
import com.hadeslee.ex27.dto.BDto;

public class BReplyViewCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String bId = request.getParameter("bId");
		BDao dao = new BDao();
		BDto dto = dao.reply_view(bId);
		
		request.setAttribute("reply_view", dto);
		
	}

}
