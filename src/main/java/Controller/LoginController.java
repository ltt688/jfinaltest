package Controller;

import Model.User;
import com.jfinal.core.Controller;

public class LoginController extends Controller {
    public void index(){
        render("Login.jsp");
    }

    public void loginCheck() {
        User getUser=getModel(User.class);
        User one=User.user.findById(getUser.get("num"));
        if (one!=null&&getUser.get("password").equals(one.get("password"))){
            System.out.println(one.toString());
            System.out.println("sucess!");
        }
        redirect("/login");
    }

    public void registerService() {
        User getUser=getModel(User.class);
        String password2=getPara("userpassword2");
        String mailbox=getPara("mailbox");
        if (mailbox!=null &&getUser.get("password").equals(password2)) {
            getUser.save();
        }
        redirect("/login");
    }
    public void register1() {redirect("/login/Register1.jsp");}

    public void refindPassWord() {
        redirect("/login/RefindPassWord.jsp");
    }

    public void refindPassWord2() {
        redirect("/login/RefindPassWord2.jsp");
    }
}
