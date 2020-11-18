package oes.global;

import oes.entity.Presonnel;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MarkInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        System.out.println("mark");
//        String url = request.getRequestURI();
//        if (url.toLowerCase().indexOf("mark")>=0){
//            Presonnel presonnel = (Presonnel)session.getAttribute("presonnel");
//            if (presonnel.getRoles().equals(Contant.ROLES_TEACHER)){
//                return true;
//            }
//            response.sendRedirect("/authority");
//        }
//        HttpSession session = request.getSession();
//        Presonnel presonnel = (Presonnel)session.getAttribute("presonnel");
//        if (presonnel.getRoles().equals(Contant.ROLES_TEACHER)){
//            return true;
//        }
//
//        return false;
        return true;
    }
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
