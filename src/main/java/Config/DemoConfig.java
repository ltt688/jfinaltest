package Config;

import Controller.HelloController;
import Controller.LoginController;
import Model.*;
import com.jfinal.config.*;
import com.jfinal.core.JFinal;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.template.Engine;

public class DemoConfig extends JFinalConfig {
    static Prop p;
    public static void main(String[] args) {
        JFinal.start("src/main/webapp", 80, "/", 5);
    }

    static void loadConfig() {
        if (p == null) {
            p = PropKit.use("dbconfig.properties");
        }
    }

    public void configConstant(Constants me) {
        loadConfig();
        me.setDevMode(true);
    }

    public void configRoute(Routes me) {

        me.add("/hello", HelloController.class);
        me.add("/login", LoginController.class);
    }

    public void configEngine(Engine me) {}
    public void configPlugin(Plugins me) {
        DruidPlugin dp = new DruidPlugin(p.get("jdbcUrl"), p.get("user"), p.get("password").trim());
        me.add(dp);
        ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
        me.add(arp);
        arp.addMapping("admin","num", Admin.class);
        arp.addMapping("apply","id", Apply.class);
        arp.addMapping("comment","commentID", Comment.class);
        arp.addMapping("message","messageID", Message.class);
        arp.addMapping("notice","noticeID",Notice.class);
        arp.addMapping("task","taskID",Task.class);
        arp.addMapping("tasktype",TaskType.class);
        arp.addMapping("user","num",User.class);
    }
    public void configInterceptor(Interceptors me) {}
    public void configHandler(Handlers me) {}
}