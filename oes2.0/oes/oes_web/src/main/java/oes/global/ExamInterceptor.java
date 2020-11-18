package oes.global;

import oes.entity.Presonnel;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ExamInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        Presonnel presonnel = (Presonnel)session.getAttribute("presonnel");
        String url = request.getRequestURI();
        if (url.toLowerCase().indexOf("exam")>=0){
//            Presonnel presonnel = (Presonnel)session.getAttribute("presonnel");
            if (presonnel.getRoles().equals(Contant.ROLES_STUDENT)){
                return true;
            }
            response.sendRedirect("to_self");
        }
        if (presonnel.getRoles().equals(Contant.ROLES_STUDENT)){
            return true;
        }
        response.sendRedirect("to_self");
        return false;

    }
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
