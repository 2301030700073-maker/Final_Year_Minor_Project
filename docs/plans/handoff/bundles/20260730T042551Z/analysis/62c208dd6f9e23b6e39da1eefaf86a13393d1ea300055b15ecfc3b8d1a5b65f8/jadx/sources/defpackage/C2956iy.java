package defpackage;

import com.google.protobuf.Cabstract;
import com.google.protobuf.Ccase;
import com.google.protobuf.Ccatch;
import com.google.protobuf.Cdefault;
import com.google.protobuf.Cfinally;
import com.google.protobuf.Cthis;
import com.google.protobuf.Cthrow;
import com.google.protobuf.Cthrows;
import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* renamed from: iy, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2956iy {

    /* renamed from: do, reason: not valid java name */
    public static final C2956iy f13602do = new C2956iy();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f13603do = new ConcurrentHashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3825ur f13604do = new C3825ur();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.protobuf.default] */
    /* JADX WARN: Type inference failed for: r4v7, types: [com.google.protobuf.default] */
    /* renamed from: do, reason: not valid java name */
    public final <T> AB<T> m6984do(Class<T> cls) {
        Cthrows m6317while;
        Cthrows cthrows;
        Class<?> cls2;
        Charset charset = Ccatch.f12045do;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f13603do;
        AB<T> ab = (AB) concurrentHashMap.get(cls);
        if (ab != null) {
            return ab;
        }
        C3825ur c3825ur = this.f13604do;
        c3825ur.getClass();
        Class<?> cls3 = Cfinally.f12067do;
        if (!Cthis.class.isAssignableFrom(cls) && (cls2 = Cfinally.f12067do) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
        }
        InterfaceC0418Os mo1798if = c3825ur.f15957do.mo1798if(cls);
        if (mo1798if.mo586do()) {
            if (Cthis.class.isAssignableFrom(cls)) {
                cthrows = new Cdefault(Cfinally.f12066do, C0824ch.f8594do, mo1798if.mo587for());
            } else {
                Cabstract<?, ?> cabstract = Cfinally.f12065do;
                Ccase<?> ccase = C0824ch.f8593do;
                if (ccase == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                cthrows = new Cdefault(cabstract, ccase, mo1798if.mo587for());
            }
            m6317while = cthrows;
        } else {
            if (Cthis.class.isAssignableFrom(cls)) {
                m6317while = C4122zt.m8819catch(mo1798if.mo588if()) != 1 ? Cthrows.m6317while(mo1798if, C0311Ju.f1729do, Cthrow.f12116do, Cfinally.f12066do, C0824ch.f8594do, C3943wr.f16409do) : Cthrows.m6317while(mo1798if, C0311Ju.f1729do, Cthrow.f12116do, Cfinally.f12066do, null, C3943wr.f16409do);
            } else {
                if (C4122zt.m8819catch(mo1798if.mo588if()) != 1) {
                    InterfaceC0245Gu interfaceC0245Gu = C0311Ju.f1728do;
                    Cthrow.Cdo cdo = Cthrow.f12115do;
                    Cabstract<?, ?> cabstract2 = Cfinally.f12065do;
                    Ccase<?> ccase2 = C0824ch.f8593do;
                    if (ccase2 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    m6317while = Cthrows.m6317while(mo1798if, interfaceC0245Gu, cdo, cabstract2, ccase2, C3943wr.f16408do);
                } else {
                    m6317while = Cthrows.m6317while(mo1798if, C0311Ju.f1728do, Cthrow.f12115do, Cfinally.f12065do, null, C3943wr.f16408do);
                }
            }
        }
        AB<T> ab2 = (AB) concurrentHashMap.putIfAbsent(cls, m6317while);
        return ab2 != null ? ab2 : m6317while;
    }
}
