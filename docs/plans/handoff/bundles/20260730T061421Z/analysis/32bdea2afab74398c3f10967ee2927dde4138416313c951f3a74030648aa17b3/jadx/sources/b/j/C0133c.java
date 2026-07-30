package b.j;

import java.lang.reflect.Method;

/* renamed from: b.j.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0133c {

    /* renamed from: a, reason: collision with root package name */
    public final int f988a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f989b;

    public C0133c(int i, Method method) {
        this.f988a = i;
        this.f989b = method;
        method.setAccessible(true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0133c)) {
            return false;
        }
        C0133c c0133c = (C0133c) obj;
        return this.f988a == c0133c.f988a && this.f989b.getName().equals(c0133c.f989b.getName());
    }

    public int hashCode() {
        return this.f989b.getName().hashCode() + (this.f988a * 31);
    }
}
