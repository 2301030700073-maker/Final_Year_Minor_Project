package defpackage;

import com.facebook.internal.FacebookRequestErrorClassification;
import defpackage.C3415nt;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public abstract class P4 implements InterfaceC0576Wa<Object>, InterfaceC3809ub, Serializable {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0576Wa<Object> f2733do;

    public P4(InterfaceC0576Wa<Object> interfaceC0576Wa) {
        this.f2733do = interfaceC0576Wa;
    }

    @Override // defpackage.InterfaceC3809ub
    /* renamed from: catch */
    public InterfaceC3809ub mo1126catch() {
        InterfaceC0576Wa<Object> interfaceC0576Wa = this.f2733do;
        if (interfaceC0576Wa instanceof InterfaceC3809ub) {
            return (InterfaceC3809ub) interfaceC0576Wa;
        }
        return null;
    }

    /* renamed from: class */
    public abstract Object mo358class(Object obj);

    /* renamed from: const, reason: not valid java name */
    public void mo1744const() {
    }

    /* renamed from: do */
    public InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        C0173Do.m401try(interfaceC0576Wa, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    /* renamed from: goto, reason: not valid java name */
    public StackTraceElement mo1745goto() {
        int i;
        String str;
        InterfaceC0761bd interfaceC0761bd = (InterfaceC0761bd) getClass().getAnnotation(InterfaceC0761bd.class);
        String str2 = null;
        if (interfaceC0761bd == null) {
            return null;
        }
        int v = interfaceC0761bd.v();
        if (v > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + v + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            i = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            i = -1;
        }
        int i2 = i >= 0 ? interfaceC0761bd.l()[i] : -1;
        C3415nt.Cdo cdo = C3415nt.f14627if;
        C3415nt.Cdo cdo2 = C3415nt.f14626do;
        if (cdo == null) {
            try {
                C3415nt.Cdo cdo3 = new C3415nt.Cdo(Class.class.getDeclaredMethod("getModule", new Class[0]), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod(FacebookRequestErrorClassification.KEY_NAME, new Class[0]));
                C3415nt.f14627if = cdo3;
                cdo = cdo3;
            } catch (Exception unused2) {
                C3415nt.f14627if = cdo2;
                cdo = cdo2;
            }
        }
        if (cdo != cdo2) {
            Method method = cdo.f14628do;
            Object invoke = method != null ? method.invoke(getClass(), new Object[0]) : null;
            if (invoke != null) {
                Method method2 = cdo.f14630if;
                Object invoke2 = method2 != null ? method2.invoke(invoke, new Object[0]) : null;
                if (invoke2 != null) {
                    Method method3 = cdo.f14629for;
                    Object invoke3 = method3 != null ? method3.invoke(invoke2, new Object[0]) : null;
                    if (invoke3 instanceof String) {
                        str2 = (String) invoke3;
                    }
                }
            }
        }
        if (str2 == null) {
            str = interfaceC0761bd.c();
        } else {
            str = str2 + '/' + interfaceC0761bd.c();
        }
        return new StackTraceElement(str, interfaceC0761bd.m(), interfaceC0761bd.f(), i2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object mo1745goto = mo1745goto();
        if (mo1745goto == null) {
            mo1745goto = getClass().getName();
        }
        sb.append(mo1745goto);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: while, reason: not valid java name */
    public final void mo1746while(Object obj) {
        InterfaceC0576Wa interfaceC0576Wa = this;
        while (true) {
            P4 p4 = (P4) interfaceC0576Wa;
            InterfaceC0576Wa interfaceC0576Wa2 = p4.f2733do;
            C0173Do.m398if(interfaceC0576Wa2);
            try {
                obj = p4.mo358class(obj);
                if (obj == EnumC3750tb.COROUTINE_SUSPENDED) {
                    return;
                }
            } catch (Throwable th) {
                obj = C3645ro.m8004import(th);
            }
            p4.mo1744const();
            if (!(interfaceC0576Wa2 instanceof P4)) {
                interfaceC0576Wa2.mo1746while(obj);
                return;
            }
            interfaceC0576Wa = interfaceC0576Wa2;
        }
    }
}
