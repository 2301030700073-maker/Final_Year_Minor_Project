package c.b.b;

import com.google.protobuf.MapFieldLite;
import java.util.Map;
import java.util.Objects;

/* renamed from: c.b.b.j0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0460j0 implements InterfaceC0458i0 {
    @Override // c.b.b.InterfaceC0458i0
    public Object a(Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        MapFieldLite mapFieldLite2 = (MapFieldLite) obj2;
        if (!mapFieldLite2.isEmpty()) {
            if (!mapFieldLite.isMutable) {
                mapFieldLite = mapFieldLite.isEmpty() ? new MapFieldLite() : new MapFieldLite(mapFieldLite);
            }
            mapFieldLite.b();
            if (!mapFieldLite2.isEmpty()) {
                mapFieldLite.putAll(mapFieldLite2);
            }
        }
        return mapFieldLite;
    }

    @Override // c.b.b.InterfaceC0458i0
    public Map b(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // c.b.b.InterfaceC0458i0
    public Object c(Object obj) {
        MapFieldLite mapFieldLite = MapFieldLite.f3510a;
        return mapFieldLite.isEmpty() ? new MapFieldLite() : new MapFieldLite(mapFieldLite);
    }

    @Override // c.b.b.InterfaceC0458i0
    public int d(int i, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        C0456h0 c0456h0 = (C0456h0) obj2;
        int i2 = 0;
        if (!mapFieldLite.isEmpty()) {
            for (Map.Entry entry : mapFieldLite.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                Objects.requireNonNull(c0456h0);
                i2 += AbstractC0476s.u(C0456h0.a(key, value)) + AbstractC0476s.G(i);
            }
        }
        return i2;
    }

    @Override // c.b.b.InterfaceC0458i0
    public Map e(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // c.b.b.InterfaceC0458i0
    public boolean f(Object obj) {
        return !((MapFieldLite) obj).isMutable;
    }

    @Override // c.b.b.InterfaceC0458i0
    public Object g(Object obj) {
        ((MapFieldLite) obj).isMutable = false;
        return obj;
    }

    @Override // c.b.b.InterfaceC0458i0
    public C0454g0 h(Object obj) {
        Objects.requireNonNull((C0456h0) obj);
        return null;
    }
}
