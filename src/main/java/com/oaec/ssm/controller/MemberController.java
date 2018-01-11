package com.oaec.ssm.controller;


import com.alibaba.fastjson.JSONObject;
import com.oaec.ssm.po.Member;
import com.oaec.ssm.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;


@RequestMapping("member")
@Controller
public class MemberController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/index")
    public String main(){
        return "index";
    }

    /*登录*/
    @RequestMapping(value = "/login")
    public String login(String mname, String password, HttpSession session){
        JSONObject result= new JSONObject();
        Member member = memberService.queryByName(mname);
        if(member==null){
            result.put("success",false);
            result.put("info","用户不存在");
        }else {
            if (password.equals(member.getPassword())){
                session.setAttribute("member",member);
                result.put("success",true);
            }else {
                result.put("success",false);
                result.put("info","密码错误");
            }
        }
        return null;
    }
    //退出
    @RequestMapping(value = "/quit")
    public String quit(HttpSession session){
        session.invalidate();
        return "redirect:/index.jsp";
    }
}
