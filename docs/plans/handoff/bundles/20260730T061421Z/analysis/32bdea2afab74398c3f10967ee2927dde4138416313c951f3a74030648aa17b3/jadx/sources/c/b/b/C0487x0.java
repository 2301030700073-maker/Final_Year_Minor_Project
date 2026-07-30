package c.b.b;

import com.google.protobuf.ProtoSyntax;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* renamed from: c.b.b.x0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0487x0 {

    /* renamed from: c, reason: collision with root package name */
    public static final C0487x0 f3224c = new C0487x0();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentMap f3226b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final B0 f3225a = new C0452f0();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [c.b.b.r0] */
    /* JADX WARN: Type inference failed for: r4v7, types: [c.b.b.r0] */
    public A0 a(Class cls) {
        C0474q0 v;
        C0474q0 c0474q0;
        P.b(cls, "messageType");
        A0 a0 = (A0) this.f3226b.get(cls);
        if (a0 != null) {
            return a0;
        }
        C0452f0 c0452f0 = (C0452f0) this.f3225a;
        Objects.requireNonNull(c0452f0);
        C0.E(cls);
        InterfaceC0464l0 b2 = c0452f0.f3188a.b(cls);
        if (b2.c()) {
            if (K.class.isAssignableFrom(cls)) {
                c0474q0 = new C0475r0(C0.f3113d, A.f3104a, b2.b());
            } else {
                M0 m0 = C0.f3111b;
                AbstractC0488y abstractC0488y = A.f3105b;
                if (abstractC0488y == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                c0474q0 = new C0475r0(m0, abstractC0488y, b2.b());
            }
            v = c0474q0;
        } else {
            ProtoSyntax protoSyntax = ProtoSyntax.PROTO2;
            if (K.class.isAssignableFrom(cls)) {
                v = b2.a() == protoSyntax ? C0474q0.v(b2, C0481u0.f3217b, AbstractC0444b0.f3172b, C0.f3113d, A.f3104a, C0462k0.f3193b) : C0474q0.v(b2, C0481u0.f3217b, AbstractC0444b0.f3172b, C0.f3113d, null, C0462k0.f3193b);
            } else {
                if (b2.a() == protoSyntax) {
                    InterfaceC0477s0 interfaceC0477s0 = C0481u0.f3216a;
                    AbstractC0444b0 abstractC0444b0 = AbstractC0444b0.f3171a;
                    M0 m02 = C0.f3111b;
                    AbstractC0488y abstractC0488y2 = A.f3105b;
                    if (abstractC0488y2 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    v = C0474q0.v(b2, interfaceC0477s0, abstractC0444b0, m02, abstractC0488y2, C0462k0.f3192a);
                } else {
                    v = C0474q0.v(b2, C0481u0.f3216a, AbstractC0444b0.f3171a, C0.f3112c, null, C0462k0.f3192a);
                }
            }
        }
        P.b(cls, "messageType");
        P.b(v, "schema");
        A0 a02 = (A0) this.f3226b.putIfAbsent(cls, v);
        return a02 != null ? a02 : v;
    }

    public A0 b(Object obj) {
        return a(obj.getClass());
    }
}
