package b.j;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class C extends F {

    /* renamed from: c, reason: collision with root package name */
    public static C f982c;

    /* renamed from: b, reason: collision with root package name */
    public Application f983b;

    public C(Application application) {
        this.f983b = application;
    }

    @Override // b.j.F, b.j.D
    public B a(Class cls) {
        if (!C0131a.class.isAssignableFrom(cls)) {
            return super.a(cls);
        }
        try {
            return (B) cls.getConstructor(Application.class).newInstance(this.f983b);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Cannot create an instance of " + cls, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Cannot create an instance of " + cls, e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("Cannot create an instance of " + cls, e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException("Cannot create an instance of " + cls, e4);
        }
    }
}
