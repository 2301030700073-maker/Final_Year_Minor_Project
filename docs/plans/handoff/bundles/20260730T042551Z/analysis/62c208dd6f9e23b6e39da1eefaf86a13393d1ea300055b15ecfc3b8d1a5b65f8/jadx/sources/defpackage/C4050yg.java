package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: yg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4050yg {

    /* renamed from: do, reason: not valid java name */
    public final int f16807do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f16808do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Method f16809do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16810do = true;

    public C4050yg(Object obj, Method method) {
        if (obj == null) {
            throw new NullPointerException("EventProducer target cannot be null.");
        }
        if (method == null) {
            throw new NullPointerException("EventProducer method cannot be null.");
        }
        this.f16808do = obj;
        this.f16809do = method;
        method.setAccessible(true);
        this.f16807do = obj.hashCode() + ((method.hashCode() + 31) * 31);
    }

    /* renamed from: do, reason: not valid java name */
    public final Object m8763do() {
        if (!this.f16810do) {
            throw new IllegalStateException(toString() + " has been invalidated and can no longer produce events.");
        }
        try {
            return this.f16809do.invoke(this.f16808do, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InvocationTargetException e2) {
            if (e2.getCause() instanceof Error) {
                throw ((Error) e2.getCause());
            }
            throw e2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C4050yg.class != obj.getClass()) {
            return false;
        }
        C4050yg c4050yg = (C4050yg) obj;
        return this.f16809do.equals(c4050yg.f16809do) && this.f16808do == c4050yg.f16808do;
    }

    public final int hashCode() {
        return this.f16807do;
    }

    public final String toString() {
        return "[EventProducer " + this.f16809do + "]";
    }
}
