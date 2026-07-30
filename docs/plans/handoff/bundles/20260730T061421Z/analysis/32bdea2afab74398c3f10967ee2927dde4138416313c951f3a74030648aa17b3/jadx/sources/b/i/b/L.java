package b.i.b;

import android.content.Context;
import androidx.fragment.app.Fragment$InstantiationException;
import java.util.Objects;

/* loaded from: classes.dex */
public class L {

    /* renamed from: b, reason: collision with root package name */
    public static final b.d.n f864b = new b.d.n();

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ X f865a;

    public L(X x) {
        this.f865a = x;
    }

    public static boolean b(ClassLoader classLoader, String str) {
        try {
            return r.class.isAssignableFrom(c(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static Class c(ClassLoader classLoader, String str) {
        b.d.n nVar = f864b;
        Class cls = (Class) nVar.getOrDefault(str, null);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        nVar.put(str, cls2);
        return cls2;
    }

    public static Class d(ClassLoader classLoader, String str) {
        try {
            return c(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment$InstantiationException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment$InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    public r a(String str) {
        D d2 = this.f865a.q;
        Context context = d2.f837b;
        Objects.requireNonNull(d2);
        return r.instantiate(context, str, null);
    }
}
