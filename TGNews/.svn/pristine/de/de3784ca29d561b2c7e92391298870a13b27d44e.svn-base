package cn.bdqn.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.Column;
import cn.bdqn.service.ColumnsService;


@Controller
@RequestMapping("/columns")
public class ColumnsController {


	@Resource(name="columnsService")
	private ColumnsService columnsService;
	
	@ResponseBody
	@RequestMapping("/getAll")
	public String getAll(){
		List<Column> list = columnsService.getAll();
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("/shanchu/{id}")
	public String shanchu(@PathVariable Integer id){
		int res  = columnsService.del(id);
		return JSON.toJSONString(res);
	}
	
	@ResponseBody
	@RequestMapping("/selById/{id}")
	public String selById(@PathVariable Integer id) {
		Column list = columnsService.selById(id);
		return JSON.toJSONString(list);
	}
	
	@RequestMapping("/zhuye")
	public String zhuye() {
		return "houjsp/jxyj2";
	}
	
	@RequestMapping("/upd")
	public String upd(Column col){
		int res = columnsService.upd(col);
		if(res>0) {
			return "redirect:../columns/zhuye";
		}else {
			return "redirect:../columns/zhuye";
		}
	}
	
	@RequestMapping("/add")
	public String add(Column col) {
		int res = columnsService.add(col);
		if(res>0) {
			return "redirect:../columns/zhuye";
		}else {
			return "redirect:../columns/zhuye";
		}
		
	}
}
