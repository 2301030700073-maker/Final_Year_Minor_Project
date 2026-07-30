package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: qg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3579qg {

    /* renamed from: do, reason: not valid java name */
    public final int f15143do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f15144do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Method f15145do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15146do = true;

    public C3579qg(Object obj, Method method) {
        if (obj == null) {
            throw new NullPointerException("EventHandler target cannot be null.");
        }
        if (method == null) {
            throw new NullPointerException("EventHandler method cannot be null.");
        }
        this.f15144do = obj;
        this.f15145do = method;
        method.setAccessible(true);
        this.f15143do = obj.hashCode() + ((method.hashCode() + 31) * 31);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7905do(Object obj) {
        if (!this.f15146do) {
            throw new IllegalStateException(toString() + " has been invalidated and can no longer handle events.");
        }
        try {
            this.f15145do.invoke(this.f15144do, obj);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InvocationTargetException e2) {
            if (!(e2.getCause() instanceof Error)) {
                throw e2;
            }
            throw ((Error) e2.getCause());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3579qg.class != obj.getClass()) {
            return false;
        }
        C3579qg c3579qg = (C3579qg) obj;
        return this.f15145do.equals(c3579qg.f15145do) && this.f15144do == c3579qg.f15144do;
    }

    public final int hashCode() {
        return this.f15143do;
    }

    public final String toString() {
        return "[EventHandler " + this.f15145do + "]";
    }
}
