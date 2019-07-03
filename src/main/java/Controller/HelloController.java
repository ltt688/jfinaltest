package Controller;

import Model.User;
import com.jfinal.core.Controller;

public class HelloController extends Controller {
    public void index() {
        render("index.jsp");
    }

    public void testSave() {
        User user=getModel(User.class);
        User user2=User.dao.findById(1);
        user.save();
        System.out.println(user2.toString());
        System.out.println("action finish");
        redirect("index.jsp");
    }
}
