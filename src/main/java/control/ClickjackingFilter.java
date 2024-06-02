package control;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

public class ClickjackingFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Inizializzazione del filtro (se necessario)
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
            throws IOException, ServletException {
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
        // Aggiungi l'header X-Frame-Options
        httpResponse.setHeader("X-Frame-Options", "DENY");
        
        // Aggiungi l'header Content-Security-Policy
        httpResponse.setHeader("Content-Security-Policy", "frame-ancestors 'none'");
        
        // Procedi con il resto della catena di filtri
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Pulizia del filtro (se necessario)
    }
}
