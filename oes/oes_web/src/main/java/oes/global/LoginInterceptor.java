package oes.global;

import oes.entity.Presonnel;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        HttpSession session = request.getSession();
        if (url.toLowerCase().indexOf("login")>=0){
            if (url.toLowerCase().indexOf("mark")>=0){
                Presonnel presonnel = (Presonnel)session.getAttribute("presonnel");
                if (presonnel.getRoles().equals(Contant.ROLES_TEACHER)){
                    return true;
                }
                response.sendRedirect("/authority");
            }
            return true;
        }
        if (session.getAttribute("presonnel")!=null){
            return true;
        }
        response.sendRedirect("/to_login");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
