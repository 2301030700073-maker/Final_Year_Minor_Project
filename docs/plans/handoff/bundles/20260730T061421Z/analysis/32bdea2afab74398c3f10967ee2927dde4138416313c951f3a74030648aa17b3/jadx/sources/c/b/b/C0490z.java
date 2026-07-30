package c.b.b;

import java.util.Map;
import java.util.Objects;

/* renamed from: c.b.b.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0490z extends AbstractC0488y {
    @Override // c.b.b.AbstractC0488y
    public int a(Map.Entry entry) {
        Objects.requireNonNull((I) entry.getKey());
        return 0;
    }

    @Override // c.b.b.AbstractC0488y
    public Object b(C0486x c0486x, InterfaceC0470o0 interfaceC0470o0, int i) {
        return (J) c0486x.f3223a.get(new C0484w(interfaceC0470o0, i));
    }

    @Override // c.b.b.AbstractC0488y
    public C c(Object obj) {
        return ((H) obj).a();
    }

    @Override // c.b.b.AbstractC0488y
    public void d(C0478t c0478t, Map.Entry entry) {
        Objects.requireNonNull((I) entry.getKey());
        throw null;
    }
}
