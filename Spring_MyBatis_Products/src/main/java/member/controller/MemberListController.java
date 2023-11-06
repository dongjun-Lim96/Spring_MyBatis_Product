package member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.model.MemberDto;
import member.model.MemberDao;
import utility.Paging;

@Controller
public class MemberListController {
	
	private final String command = "/list.mb";
	private String getPage = "memberList";
	
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(command)
	public ModelAndView doAction(HttpServletRequest request,
			@RequestParam(value = "pageNumber", required = false) String pageNumber,
			@RequestParam(value = "colname", required = false) String colname,
			@RequestParam(value = "keyword", required = false) String keyword) {
		
		ModelAndView mav = new ModelAndView();
		Map<String, String> map = new HashMap<String, String>();
		map.put("colname", colname);
		map.put("keyword", "%"+keyword+"%");
		
		int totalCount = mdao.getTotalCount(map);
		String url = request.getContextPath()+command;
		
		Paging pageInfo = new Paging(pageNumber, "5", totalCount, url, colname, keyword, null);
		
		List<MemberDto> lists = mdao.memberList(map,pageInfo);
		
		mav.addObject("lists", lists);
		mav.addObject("pageInfo",pageInfo);
		mav.setViewName(getPage);
		
		return mav;
	}
}
