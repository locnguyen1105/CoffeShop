/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import Model.Menu;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Map;
import static jdk.nashorn.internal.runtime.Debug.id;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author taro.noo
 */
public class MenuAction extends ActionSupport implements SessionAware{
    
    private Map session;
    public MenuAction() {
    }
    
    public String execute() throws Exception {
        ArrayList<Menu> menu = Menu.getCake();
        session.put("cakeList", menu);
        return SUCCESS;
    }
    
    public String getDrink() throws Exception {
        ArrayList<Menu> menu = Menu.getDrink();
        session.put("drinkList", menu);
        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }
    
}
