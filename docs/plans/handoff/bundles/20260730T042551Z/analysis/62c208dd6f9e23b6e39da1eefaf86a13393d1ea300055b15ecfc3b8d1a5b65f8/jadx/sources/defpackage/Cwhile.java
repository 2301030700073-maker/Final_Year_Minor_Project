package defpackage;

import com.google.common.collect.Cnew;

/* renamed from: while, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cwhile<K, V> implements InterfaceC0353Lt<K, V> {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InterfaceC0353Lt)) {
            return false;
        }
        return ((Cnew) this).f11840do.equals(((InterfaceC0353Lt) obj).mo1357do());
    }

    public final int hashCode() {
        return ((Cnew) this).f11840do.hashCode();
    }

    public final String toString() {
        return ((Cnew) this).f11840do.toString();
    }
}
