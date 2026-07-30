package b.b.f;

import android.view.InflateException;
import android.view.MenuItem;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class h implements MenuItem.OnMenuItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public static final Class[] f342c = {MenuItem.class};

    /* renamed from: a, reason: collision with root package name */
    public Object f343a;

    /* renamed from: b, reason: collision with root package name */
    public Method f344b;

    public h(Object obj, String str) {
        this.f343a = obj;
        Class<?> cls = obj.getClass();
        try {
            this.f344b = cls.getMethod(str, f342c);
        } catch (Exception e) {
            InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
            inflateException.initCause(e);
            throw inflateException;
        }
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        try {
            if (this.f344b.getReturnType() == Boolean.TYPE) {
                return ((Boolean) this.f344b.invoke(this.f343a, menuItem)).booleanValue();
            }
            this.f344b.invoke(this.f343a, menuItem);
            return true;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
