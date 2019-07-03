package Config;

import Controller.HelloController;
import Model.User;
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
    }

    public void configEngine(Engine me) {}
    public void configPlugin(Plugins me) {
        DruidPlugin dp = new DruidPlugin(p.get("jdbcUrl"), p.get("user"), p.get("password").trim());
        me.add(dp);
        ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
        me.add(arp);
        arp.addMapping("user", User.class);
    }
    public void configInterceptor(Interceptors me) {}
    public void configHandler(Handlers me) {}
}