

package util.interceptors;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import qt.pojo.User;
import util.Constants;
import util.PropertiesUtil;

public class LoginInterceptor implements HandlerInterceptor{
	private static String LOGIN_URL=PropertiesUtil.getBundle().getString(Constants.PROJECT_LOGIN);
	//执行Handler方法之前执行  
    //用于身份认证、身份授权  
    //比如身份认证，如果认证通过表示当前用户没有登陆，需要此方法拦截不再向下执行  
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler) throws Exception {  
        //获取请求的url  
        String url=request.getRequestURI();  
        //判断url是否是公开地址(实际使用时将公开地址配置到配置文件中)  
        if(url.indexOf("index.do")>=0 || url.indexOf("login.do")>=0){  
            //如果要进行登录提交，放行  
            return true;  
        }  
        //判断session  
        HttpSession session=request.getSession();  
        //从session中取出用户份信息  
        User userInfo=(User)session.getAttribute(Constants.USERINFO_SESSION); 
        if(userInfo!=null){  
            //身份存在，放行  
            return true;  
        }  
        //执行这里表示用户身份需要验证，跳转到登录界面  
        request.getRequestDispatcher(LOGIN_URL).forward(request, response);  
        //return false表示拦截，不向下执行  
        //return true表示放行          
        return false;  
    }  
      
    //进入Handler方法之后，返回modelAndView之前执行  
    //应用场景从modelAndView出发：将公用的模型数据(比如菜单导航)在这里  
    //传到视图，也可以在这里统一指定视图  
    public void postHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler, ModelAndView modelAndView) throws Exception {  
        System.out.println("postHandle"); 
    }  
      
    //执行Handler完成执行此方法  
    //应用场景：统一异常处理，统一日志处理  
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response,  
            Object handler, Exception ex)  
            throws Exception {  
        System.out.println("afterHandle");  
          
    }  
}
