package Controller;

import Model.User;
import com.jfinal.core.Controller;

public class HelloController extends Controller {
    public void index() {
        render("index.jsp");
    }

    public void testSave() {
        System.out.println("action finish");
        redirect("index.jsp");
    }
}
