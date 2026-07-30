package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import defpackage.C2680eE;
import defpackage.Cif;

/* renamed from: androidx.fragment.app.const, reason: invalid class name */
/* loaded from: classes.dex */
public class Cconst {

    /* renamed from: do, reason: not valid java name */
    public static final C2680eE<ClassLoader, C2680eE<String, Class<?>>> f6951do = new C2680eE<>();

    /* renamed from: do, reason: not valid java name */
    public static Class<?> m4165do(ClassLoader classLoader, String str) {
        C2680eE<ClassLoader, C2680eE<String, Class<?>>> c2680eE = f6951do;
        C2680eE<String, Class<?>> orDefault = c2680eE.getOrDefault(classLoader, null);
        if (orDefault == null) {
            orDefault = new C2680eE<>();
            c2680eE.put(classLoader, orDefault);
        }
        Class<?> orDefault2 = orDefault.getOrDefault(str, null);
        if (orDefault2 != null) {
            return orDefault2;
        }
        Class<?> cls = Class.forName(str, false, classLoader);
        orDefault.put(str, cls);
        return cls;
    }

    /* renamed from: if, reason: not valid java name */
    public static Class<? extends Fragment> m4166if(ClassLoader classLoader, String str) {
        try {
            return m4165do(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.Cbreak(Cif.m6908case("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.Cbreak(Cif.m6908case("Unable to instantiate fragment ", str, ": make sure class name exists"), e2);
        }
    }
}
