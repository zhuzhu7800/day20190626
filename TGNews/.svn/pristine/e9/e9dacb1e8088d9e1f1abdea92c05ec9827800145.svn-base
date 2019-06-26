package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.Column;
import cn.bdqn.service.ColunmService;


@Controller
@RequestMapping("/column")
public class ColumnController {
	
	@Resource(name="columnService")
	private ColunmService columnService;
	
	@ResponseBody
	@RequestMapping("/getAll")
	public String getAll(){
		List<Column> list = columnService.getAll();
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("/shanchu/{id}")
	public String shanchu(@PathVariable Integer id){
		int res  = columnService.del(id);
		return JSON.toJSONString(res);
	}
	
	@ResponseBody
	@RequestMapping("/selById/{id}")
	public String selById(@PathVariable Integer id) {
		Column list = columnService.selById(id);
		return JSON.toJSONString(list);
	}
	
	@RequestMapping("/zhuye")
	public String zhuye() {
		return "houjsp/index2";
	}
	
	@RequestMapping("/upd")
	public String upd(Column col){
		int res = columnService.upd(col);
		if(res>0) {
			return "redirect:../column/zhuye";
		}else {
			return "redirect:../column/zhuye";
		}
	}
	
	@RequestMapping("/add")
	public String add(Column col) {
		int res = columnService.add(col);
		if(res>0) {
			return "redirect:../column/zhuye";
		}else {
			return "redirect:../column/zhuye";
		}
		
	}
}
