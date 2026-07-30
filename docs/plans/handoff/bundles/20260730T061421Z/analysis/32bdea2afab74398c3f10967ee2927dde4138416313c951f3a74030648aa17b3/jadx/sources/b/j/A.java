package b.j;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.SavedStateHandleController;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class A extends E {
    public static final Class[] f = {Application.class, y.class};
    public static final Class[] g = {y.class};

    /* renamed from: a, reason: collision with root package name */
    public final Application f976a;

    /* renamed from: b, reason: collision with root package name */
    public final D f977b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f978c;

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0137g f979d;
    public final b.n.d e;

    @SuppressLint({"LambdaLast"})
    public A(Application application, b.n.f fVar, Bundle bundle) {
        D d2;
        this.e = fVar.getSavedStateRegistry();
        this.f979d = fVar.getLifecycle();
        this.f978c = bundle;
        this.f976a = application;
        if (application != null) {
            if (C.f982c == null) {
                C.f982c = new C(application);
            }
            d2 = C.f982c;
        } else {
            if (F.f984a == null) {
                F.f984a = new F();
            }
            d2 = F.f984a;
        }
        this.f977b = d2;
    }

    public static Constructor d(Class cls, Class[] clsArr) {
        for (Constructor<?> constructor : cls.getConstructors()) {
            if (Arrays.equals(clsArr, constructor.getParameterTypes())) {
                return constructor;
            }
        }
        return null;
    }

    @Override // b.j.E, b.j.D
    public B a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return c(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // b.j.G
    public void b(B b2) {
        SavedStateHandleController.h(b2, this.e, this.f979d);
    }

    @Override // b.j.E
    public B c(String str, Class cls) {
        B b2;
        boolean isAssignableFrom = C0131a.class.isAssignableFrom(cls);
        Constructor d2 = (!isAssignableFrom || this.f976a == null) ? d(cls, g) : d(cls, f);
        if (d2 == null) {
            return this.f977b.a(cls);
        }
        b.n.d dVar = this.e;
        AbstractC0137g abstractC0137g = this.f979d;
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, y.a(dVar.a(str), this.f978c));
        savedStateHandleController.i(dVar, abstractC0137g);
        SavedStateHandleController.j(dVar, abstractC0137g);
        if (isAssignableFrom) {
            try {
                if (this.f976a != null) {
                    b2 = (B) d2.newInstance(this.f976a, savedStateHandleController.f138c);
                    b2.b("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
                    return b2;
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Failed to access " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("An exception happened in constructor of " + cls, e3.getCause());
            }
        }
        b2 = (B) d2.newInstance(savedStateHandleController.f138c);
        b2.b("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
        return b2;
    }
}
