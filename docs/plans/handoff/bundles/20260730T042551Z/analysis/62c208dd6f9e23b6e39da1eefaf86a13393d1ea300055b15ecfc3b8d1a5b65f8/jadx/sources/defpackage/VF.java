package defpackage;

import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class VF<T> implements SF<T>, Serializable {

    /* renamed from: do, reason: not valid java name */
    public final T f4071do;

    public VF(T t) {
        this.f4071do = t;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof VF) {
            return C3645ro.m8013static(this.f4071do, ((VF) obj).f4071do);
        }
        return false;
    }

    @Override // defpackage.SF
    public final T get() {
        return this.f4071do;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4071do});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f4071do);
        StringBuilder sb = new StringBuilder(valueOf.length() + 22);
        sb.append("Suppliers.ofInstance(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
