package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.Column;
import cn.bdqn.service.ColumnwService;


@Controller
@RequestMapping("/columnw")
public class ColumnwController {


	@Resource(name="columnwService")
	private ColumnwService columnwService;
	
	@ResponseBody
	@RequestMapping("/getAll")
	public String getAll(){
		List<Column> list = columnwService.getAll();
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("/shanchu/{id}")
	public String shanchu(@PathVariable Integer id){
		int res  = columnwService.del(id);
		return JSON.toJSONString(res);
	}
	
	@ResponseBody
	@RequestMapping("/selById/{id}")
	public String selById(@PathVariable Integer id) {
		Column list = columnwService.selById(id);
		return JSON.toJSONString(list);
	}
	
	@RequestMapping("/zhuye")
	public String zhuye() {
		return "houjsp/xxgk2";
	}
	
	@RequestMapping("/upd")
	public String upd(Column col){
		int res = columnwService.upd(col);
		if(res>0) {
			return "redirect:../columnw/zhuye";
		}else {
			return "redirect:../columnw/zhuye";
		}
	}
	
	@RequestMapping("/add")
	public String add(Column col) {
		int res = columnwService.add(col);
		if(res>0) {
			return "redirect:../columnw/zhuye";
		}else {
			return "redirect:../columnw/zhuye";
		}
		
	}
}
