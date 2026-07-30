package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.protobuf.Ccatch;
import com.google.protobuf.Cextends;
import com.google.protobuf.Cthis;

/* renamed from: Ok, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0410Ok extends Cthis<C0410Ok, Cdo> implements InterfaceC0506Ss {
    public static final int ANDROID_MEMORY_READINGS_FIELD_NUMBER = 4;
    public static final int CPU_METRIC_READINGS_FIELD_NUMBER = 2;
    private static final C0410Ok DEFAULT_INSTANCE;
    public static final int GAUGE_METADATA_FIELD_NUMBER = 3;
    private static volatile InterfaceC4066yw<C0410Ok> PARSER = null;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private Ccatch.Cfor<R0> androidMemoryReadings_;
    private int bitField0_;
    private Ccatch.Cfor<C4045yb> cpuMetricReadings_;
    private C0366Mk gaugeMetadata_;
    private String sessionId_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: Ok$do, reason: invalid class name */
    public static final class Cdo extends Cthis.Cdo<C0410Ok, Cdo> implements InterfaceC0506Ss {
        public Cdo() {
            super(C0410Ok.DEFAULT_INSTANCE);
        }
    }

    static {
        C0410Ok c0410Ok = new C0410Ok();
        DEFAULT_INSTANCE = c0410Ok;
        Cthis.m6293abstract(C0410Ok.class, c0410Ok);
    }

    public C0410Ok() {
        Cextends<Object> cextends = Cextends.f12060do;
        this.cpuMetricReadings_ = cextends;
        this.androidMemoryReadings_ = cextends;
    }

    public static Cdo c() {
        return DEFAULT_INSTANCE.m6302return();
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static C0410Ok m1676instanceof() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m1677interface(C0410Ok c0410Ok, C0366Mk c0366Mk) {
        c0410Ok.getClass();
        c0366Mk.getClass();
        c0410Ok.gaugeMetadata_ = c0366Mk;
        c0410Ok.bitField0_ |= 2;
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m1678protected(C0410Ok c0410Ok, C4045yb c4045yb) {
        c0410Ok.getClass();
        c4045yb.getClass();
        Ccatch.Cfor<C4045yb> cfor = c0410Ok.cpuMetricReadings_;
        if (!cfor.mo6188do()) {
            c0410Ok.cpuMetricReadings_ = Cthis.m6296private(cfor);
        }
        c0410Ok.cpuMetricReadings_.add(c4045yb);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m1679strictfp(C0410Ok c0410Ok, String str) {
        c0410Ok.getClass();
        str.getClass();
        c0410Ok.bitField0_ |= 1;
        c0410Ok.sessionId_ = str;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m1680volatile(C0410Ok c0410Ok, R0 r0) {
        c0410Ok.getClass();
        r0.getClass();
        Ccatch.Cfor<R0> cfor = c0410Ok.androidMemoryReadings_;
        if (!cfor.mo6188do()) {
            c0410Ok.androidMemoryReadings_ = Cthis.m6296private(cfor);
        }
        c0410Ok.androidMemoryReadings_.add(r0);
    }

    public final boolean a() {
        return (this.bitField0_ & 2) != 0;
    }

    public final boolean b() {
        return (this.bitField0_ & 1) != 0;
    }

    /* renamed from: implements, reason: not valid java name */
    public final int m1681implements() {
        return this.cpuMetricReadings_.size();
    }

    @Override // com.google.protobuf.Cthis
    /* renamed from: static */
    public final Object mo523static(Cthis.Ctry ctry) {
        switch (ctry) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new Py(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဉ\u0001\u0004\u001b", new Object[]{"bitField0_", "sessionId_", "cpuMetricReadings_", C4045yb.class, "gaugeMetadata_", "androidMemoryReadings_", R0.class});
            case NEW_MUTABLE_INSTANCE:
                return new C0410Ok();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<C0410Ok> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (C0410Ok.class) {
                        try {
                            interfaceC4066yw = PARSER;
                            if (interfaceC4066yw == null) {
                                interfaceC4066yw = new Cthis.Cif<>(DEFAULT_INSTANCE);
                                PARSER = interfaceC4066yw;
                            }
                        } finally {
                        }
                    }
                }
                return interfaceC4066yw;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final C0366Mk m1682synchronized() {
        C0366Mk c0366Mk = this.gaugeMetadata_;
        return c0366Mk == null ? C0366Mk.m1451protected() : c0366Mk;
    }

    /* renamed from: transient, reason: not valid java name */
    public final int m1683transient() {
        return this.androidMemoryReadings_.size();
    }
}
