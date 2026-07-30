package c.b.b;

import java.util.Map;

/* loaded from: classes.dex */
public class S implements Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public Map.Entry f3149a;

    public S(Map.Entry entry, Q q) {
        this.f3149a = entry;
    }

    @Override // java.util.Map.Entry
    public Object getKey() {
        return this.f3149a.getKey();
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        U u = (U) this.f3149a.getValue();
        if (u == null) {
            return null;
        }
        return u.c();
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        if (!(obj instanceof InterfaceC0470o0)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        U u = (U) this.f3149a.getValue();
        InterfaceC0470o0 interfaceC0470o0 = u.f3157b;
        u.f3156a = null;
        u.f3158c = null;
        u.f3157b = (InterfaceC0470o0) obj;
        return interfaceC0470o0;
    }
}
