package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Set;

/* renamed from: hp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC2890hp<T> {

    /* renamed from: hp$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do */
        AbstractC2890hp<?> mo250do(Type type, Set<? extends Annotation> set, C3886vt c3886vt);
    }

    /* renamed from: do */
    public abstract T mo249do(C3470op c3470op);

    /* renamed from: if, reason: not valid java name */
    public final T m6837if(String str) {
        U5 u5 = new U5();
        u5.m2340strictfp(0, str.length(), str);
        return mo249do(new C3470op(u5));
    }
}
