package b.c.a.b;

import java.util.Map;

/* loaded from: classes.dex */
public class d implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final Object f612a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f613b;

    /* renamed from: c, reason: collision with root package name */
    public d f614c;

    /* renamed from: d, reason: collision with root package name */
    public d f615d;

    public d(Object obj, Object obj2) {
        this.f612a = obj;
        this.f613b = obj2;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f612a.equals(dVar.f612a) && this.f613b.equals(dVar.f613b);
    }

    @Override // java.util.Map.Entry
    public Object getKey() {
        return this.f612a;
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        return this.f613b;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return this.f613b.hashCode() ^ this.f612a.hashCode();
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public String toString() {
        return this.f612a + "=" + this.f613b;
    }
}
