//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package fun.afterglow.oes.global;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EncodingFilter implements Filter {
    private String encoding = "utf-8";

    public EncodingFilter() {
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        if (filterConfig.getInitParameter("encoding") != null) {
            this.encoding = filterConfig.getInitParameter("encoding");
        }

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        request.setCharacterEncoding(this.encoding);
        response.setCharacterEncoding(this.encoding);
        filterChain.doFilter(request, response);
    }

    public void destroy() {
    }
}
