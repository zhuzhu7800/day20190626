package cn.bdqn.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bdqn.pojo.Biao;
import cn.bdqn.service.BiaoService;

@Controller
@RequestMapping("/tiao")
public class TiaoController {
	
	@RequestMapping("/hdjl")
	public String HDJL() {
		return "houjsp/hdjl";
	}
	
	@RequestMapping("/tsjy")
	public String TSJY() {
		return "houjsp/tsjy";
	}
	
	@RequestMapping("/index")
	public String index() {
		return "houjsp/index";
	}
	
	@RequestMapping("/index2")
	public String index2() {
		return "houjsp/index2";
	}
	
	@RequestMapping("/jxyj")
	public String JXYJ() {
		return "houjsp/jxyj";
	}
	@RequestMapping("/jxyj2")
	public String jxyj2() {
		return "houjsp/jxyj2";
	}
	@RequestMapping("/xxzl")
	public String XXZL() {
		return "houjsp/xxzl";
	}

	@RequestMapping("/xxzl2/{id}/{school_name}")
	public String XXZL2(@PathVariable int id,@PathVariable String school_name,HttpServletRequest request) {
		request.setAttribute("id", id);
		request.setAttribute("school_name", school_name);
		return "houjsp/xxzl2";
	}

	@RequestMapping("/xxzl3")
	public String XXZL3() {
		return "houjsp/xxzl3";
	}
	
	@RequestMapping("/xxgk")
	public String XXGK() {
		return "houjsp/xxgk";
	}
	@RequestMapping("/xxgk2")
	public String XXGK2() {
		return "houjsp/xxgk2";
	}
	@RequestMapping("/jgsz")
	public String JGSZ() {
		return "houjsp/jgsz";
	}
	@RequestMapping("/jgsz2")
	public String JGSZ2() {
		return "houjsp/jgsz2";
	}
	@RequestMapping("/jgsz3")
	public String JGSZ3() {
		return "houjsp/jgsz3";
	}
	@RequestMapping("/jgsz4")
	public String JGSZ4() {
		return "houjsp/jgsz4";
	}
	@RequestMapping("/ztlm")
	public String ZTLM() {
		return "houjsp/ztlm";
	}
	@RequestMapping("/ztlm2/{cloumn}")
	public String ZTLM2(@PathVariable int cloumn,HttpServletRequest request) {
		request.setAttribute("cloumn", cloumn);
		return "houjsp/ztlm2";
	}
	@RequestMapping("/ztlm3")
	public String ZTLM3() {
		return "houjsp/ztlm3";
	}
	
	@RequestMapping("/zdxx")
	public String ZDXX() {
		return "houjsp/zdxx";
	}
}
