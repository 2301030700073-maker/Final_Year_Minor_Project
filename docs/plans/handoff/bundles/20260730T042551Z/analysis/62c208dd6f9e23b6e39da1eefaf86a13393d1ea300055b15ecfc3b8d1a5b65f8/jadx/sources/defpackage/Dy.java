package defpackage;

import java.lang.annotation.Annotation;

/* loaded from: classes3.dex */
public final class Dy<T> {

    /* renamed from: do, reason: not valid java name */
    public final Class<? extends Annotation> f709do;

    /* renamed from: if, reason: not valid java name */
    public final Class<T> f710if;

    /* renamed from: Dy$do, reason: invalid class name */
    public @interface Cdo {
    }

    public Dy(Class<? extends Annotation> cls, Class<T> cls2) {
        this.f709do = cls;
        this.f710if = cls2;
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Dy<T> m416do(Class<T> cls) {
        return new Dy<>(Cdo.class, cls);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Dy.class != obj.getClass()) {
            return false;
        }
        Dy dy = (Dy) obj;
        if (this.f710if.equals(dy.f710if)) {
            return this.f709do.equals(dy.f709do);
        }
        return false;
    }

    public final int hashCode() {
        return this.f709do.hashCode() + (this.f710if.hashCode() * 31);
    }

    public final String toString() {
        Class<T> cls = this.f710if;
        Class<? extends Annotation> cls2 = this.f709do;
        if (cls2 == Cdo.class) {
            return cls.getName();
        }
        return "@" + cls2.getName() + " " + cls.getName();
    }
}
