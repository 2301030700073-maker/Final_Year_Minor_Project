package defpackage;

import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;

/* renamed from: ny, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3420ny {

    /* renamed from: do, reason: not valid java name */
    public final Map<Class<?>, InterfaceC3535pv<?>> f14636do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3535pv<Object> f14637do;

    /* renamed from: if, reason: not valid java name */
    public final Map<Class<?>, InterfaceC2628dK<?>> f14638if;

    /* renamed from: ny$do, reason: invalid class name */
    public static final class Cdo implements InterfaceC0704ag<Cdo> {

        /* renamed from: do, reason: not valid java name */
        public static final C3361my f14639do = new InterfaceC3535pv() { // from class: my
            @Override // defpackage.InterfaceC0647Zf
            /* renamed from: do */
            public final void mo2012do(Object obj, InterfaceC3594qv interfaceC3594qv) {
                throw new C2646dg("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            }
        };
    }

    public C3420ny(HashMap hashMap, HashMap hashMap2, C3361my c3361my) {
        this.f14636do = hashMap;
        this.f14638if = hashMap2;
        this.f14637do = c3361my;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7625do(Object obj, ByteArrayOutputStream byteArrayOutputStream) {
        Map<Class<?>, InterfaceC3535pv<?>> map = this.f14636do;
        C3302ly c3302ly = new C3302ly(byteArrayOutputStream, map, this.f14638if, this.f14637do);
        if (obj == null) {
            return;
        }
        InterfaceC3535pv<?> interfaceC3535pv = map.get(obj.getClass());
        if (interfaceC3535pv != null) {
            interfaceC3535pv.mo2012do(obj, c3302ly);
        } else {
            throw new C2646dg("No encoder for " + obj.getClass());
        }
    }
}
