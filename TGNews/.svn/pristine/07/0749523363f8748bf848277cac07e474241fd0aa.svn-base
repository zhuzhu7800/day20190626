package cn.bdqn.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;

import cn.bdqn.pojo.Characteristic;
import cn.bdqn.pojo.Special;
import cn.bdqn.service.SpecialService;

@Controller
@RequestMapping("special")
public class SpecialController {
	@Resource(name="specialService")
	private SpecialService specialService;
	
	@ResponseBody
	@RequestMapping("getAll")
	public String getAll() {
		List<Special> list = specialService.getAll();
		return JSON.toJSONString(list);
	}
	
	@ResponseBody
	@RequestMapping("del/{id}")
	public String del(@PathVariable int id) {
		int res = specialService.del(id);
		return JSON.toJSONString(res);
	}
	
	@RequestMapping("add")
	public String add(Special special) {
		int res = specialService.add(special);
		if(res>0){
			return "redirect:/special/zhuan";
		}else{
			return "redirect:/special/zhuan";
		}
	}
	
	@RequestMapping("/zhuan")
	public String zhuan() {
		return "houjsp/ztlm";
	}
	/*public String add(MultipartFile pictureFile,Special special) {
		//1.拿到文件名称  123.jpg
		String name=pictureFile.getOriginalFilename();
		//2.给文件起个新名字
		String newName=UUID.randomUUID().toString()+name.substring(name.indexOf("."));
		try {
			pictureFile.transferTo(new File(""+newName));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		special.setBackground("G:\\app\\"+newName);
		int res = specialService.add(special);
		if(res>0){
			return "houjsp/ztlm";
		}else{
			return "houjsp/ztlm";
		}
	}*/
	
	@ResponseBody
	@RequestMapping("updTo/{id}")
	public String updTo(@PathVariable int id) {
		Special special = specialService.getById(id);
		return JSON.toJSONString(special);
	}
	
	@RequestMapping("upd")
	public String upd(Special special) {
		int res = specialService.upd(special);
		if(res>0) {
			return "redirect:/special/zhuan";
		}else {
			return "redirect:/special/zhuan";
		}
	}
}
