package com.oaec.ssm.interceptors;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Component
public class LoginInterceptor implements HandlerInterceptor {
        @Override
        public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
            HttpSession session = request.getSession();
            if(session.getAttribute("user")==null){
                response.sendRedirect(request.getContextPath()+"/index.jsp");
                return false;
            }
            return true;

        }
        @Override
        public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {
            if(modelAndView!=null){
                Map<String, Object> model = modelAndView.getModel();
                if(model.containsKey("error")){
                    request.setAttribute("error","用户名或密码错误！");
                    request.getRequestDispatcher(request.getContextPath()+"/index.jsp").forward(request,response);
                }
            }

            System.out.println(" o = [" + o + "], modelAndView = [" + modelAndView + "]");


        }

        @Override
        public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

        }
    }

