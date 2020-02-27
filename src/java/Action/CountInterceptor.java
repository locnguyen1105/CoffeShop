/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import Model.Count;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import java.util.Map;

/**
 *
 * @author taro.noo
 */
public class CountInterceptor extends AbstractInterceptor {
    public CountInterceptor() {
    }
    
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        int count = Count.getHitCount();
        Map<String, Object> session = ActionContext.getContext().getSession();
        count++;
        session.put("count", Count.toArray(count));
        Count.updateCount(count);
        return actionInvocation.invoke();
    }
}
