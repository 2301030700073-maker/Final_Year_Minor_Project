package defpackage;

import defpackage.N8;
import java.util.Map;

/* renamed from: throw, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cthrow<K, V> implements Map.Entry<K, V> {
    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return C3645ro.m8013static(((N8.Cnew) this).f2323do, entry.getKey()) && C3645ro.m8013static(getValue(), entry.getValue());
    }

    @Override // java.util.Map.Entry
    public abstract V getValue();

    @Override // java.util.Map.Entry
    public final int hashCode() {
        V value = getValue();
        K k = ((N8.Cnew) this).f2323do;
        return (k == null ? 0 : k.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    public final String toString() {
        String valueOf = String.valueOf(((N8.Cnew) this).f2323do);
        String valueOf2 = String.valueOf(getValue());
        StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 1);
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
