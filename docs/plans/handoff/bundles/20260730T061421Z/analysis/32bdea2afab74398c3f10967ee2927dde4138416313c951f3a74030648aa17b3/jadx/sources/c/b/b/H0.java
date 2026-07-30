package c.b.b;

import java.util.Map;

/* loaded from: classes.dex */
public class H0 implements Map.Entry, Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final Comparable f3121a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3122b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ K0 f3123c;

    public H0(K0 k0, Map.Entry entry) {
        Comparable comparable = (Comparable) entry.getKey();
        Object value = entry.getValue();
        this.f3123c = k0;
        this.f3121a = comparable;
        this.f3122b = value;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.f3121a.compareTo(((H0) obj).f3121a);
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Comparable comparable = this.f3121a;
        Object key = entry.getKey();
        if (comparable == null ? key == null : comparable.equals(key)) {
            Object obj2 = this.f3122b;
            Object value = entry.getValue();
            if (obj2 == null ? value == null : obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public Object getKey() {
        return this.f3121a;
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        return this.f3122b;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        Comparable comparable = this.f3121a;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f3122b;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        this.f3123c.c();
        Object obj2 = this.f3122b;
        this.f3122b = obj;
        return obj2;
    }

    public String toString() {
        return this.f3121a + "=" + this.f3122b;
    }

    public H0(K0 k0, Comparable comparable, Object obj) {
        this.f3123c = k0;
        this.f3121a = comparable;
        this.f3122b = obj;
    }
}
