package defpackage;

import com.google.protobuf.Cthis;

/* loaded from: classes3.dex */
public final class Ew extends Cthis<Ew, Cdo> implements Fw {
    public static final int APPLICATION_INFO_FIELD_NUMBER = 1;
    private static final Ew DEFAULT_INSTANCE;
    public static final int GAUGE_METRIC_FIELD_NUMBER = 4;
    public static final int NETWORK_REQUEST_METRIC_FIELD_NUMBER = 3;
    private static volatile InterfaceC4066yw<Ew> PARSER = null;
    public static final int TRACE_METRIC_FIELD_NUMBER = 2;
    public static final int TRANSPORT_INFO_FIELD_NUMBER = 5;
    private C3484p2 applicationInfo_;
    private int bitField0_;
    private C0410Ok gaugeMetric_;
    private C4123zu networkRequestMetric_;
    private C2684eI traceMetric_;
    private C4030yI transportInfo_;

    /* renamed from: Ew$do, reason: invalid class name */
    public static final class Cdo extends Cthis.Cdo<Ew, Cdo> implements Fw {
        public Cdo() {
            super(Ew.DEFAULT_INSTANCE);
        }

        @Override // defpackage.Fw
        /* renamed from: break */
        public final C4123zu mo516break() {
            return ((Ew) this.f12107if).mo516break();
        }

        @Override // defpackage.Fw
        /* renamed from: else */
        public final boolean mo517else() {
            return ((Ew) this.f12107if).mo517else();
        }

        @Override // defpackage.Fw
        /* renamed from: for */
        public final C2684eI mo518for() {
            return ((Ew) this.f12107if).mo518for();
        }

        @Override // defpackage.Fw
        /* renamed from: goto */
        public final C0410Ok mo519goto() {
            return ((Ew) this.f12107if).mo519goto();
        }

        @Override // defpackage.Fw
        /* renamed from: if */
        public final boolean mo520if() {
            return ((Ew) this.f12107if).mo520if();
        }

        @Override // defpackage.Fw
        /* renamed from: new */
        public final boolean mo522new() {
            return ((Ew) this.f12107if).mo522new();
        }
    }

    static {
        Ew ew = new Ew();
        DEFAULT_INSTANCE = ew;
        Cthis.m6293abstract(Ew.class, ew);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static Cdo m511instanceof() {
        return DEFAULT_INSTANCE.m6302return();
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m512interface(Ew ew, C2684eI c2684eI) {
        ew.getClass();
        c2684eI.getClass();
        ew.traceMetric_ = c2684eI;
        ew.bitField0_ |= 2;
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m513protected(Ew ew, C4123zu c4123zu) {
        ew.getClass();
        c4123zu.getClass();
        ew.networkRequestMetric_ = c4123zu;
        ew.bitField0_ |= 4;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m514strictfp(Ew ew, C3484p2 c3484p2) {
        ew.getClass();
        ew.applicationInfo_ = c3484p2;
        ew.bitField0_ |= 1;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m515volatile(Ew ew, C0410Ok c0410Ok) {
        ew.getClass();
        c0410Ok.getClass();
        ew.gaugeMetric_ = c0410Ok;
        ew.bitField0_ |= 8;
    }

    @Override // defpackage.Fw
    /* renamed from: break, reason: not valid java name */
    public final C4123zu mo516break() {
        C4123zu c4123zu = this.networkRequestMetric_;
        return c4123zu == null ? C4123zu.h() : c4123zu;
    }

    @Override // defpackage.Fw
    /* renamed from: else, reason: not valid java name */
    public final boolean mo517else() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // defpackage.Fw
    /* renamed from: for, reason: not valid java name */
    public final C2684eI mo518for() {
        C2684eI c2684eI = this.traceMetric_;
        return c2684eI == null ? C2684eI.f() : c2684eI;
    }

    @Override // defpackage.Fw
    /* renamed from: goto, reason: not valid java name */
    public final C0410Ok mo519goto() {
        C0410Ok c0410Ok = this.gaugeMetric_;
        return c0410Ok == null ? C0410Ok.m1676instanceof() : c0410Ok;
    }

    @Override // defpackage.Fw
    /* renamed from: if, reason: not valid java name */
    public final boolean mo520if() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: implements, reason: not valid java name */
    public final boolean m521implements() {
        return (this.bitField0_ & 1) != 0;
    }

    @Override // defpackage.Fw
    /* renamed from: new, reason: not valid java name */
    public final boolean mo522new() {
        return (this.bitField0_ & 8) != 0;
    }

    @Override // com.google.protobuf.Cthis
    /* renamed from: static, reason: not valid java name */
    public final Object mo523static(Cthis.Ctry ctry) {
        switch (ctry) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new Py(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဉ\u0004", new Object[]{"bitField0_", "applicationInfo_", "traceMetric_", "networkRequestMetric_", "gaugeMetric_", "transportInfo_"});
            case NEW_MUTABLE_INSTANCE:
                return new Ew();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<Ew> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (Ew.class) {
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

    /* renamed from: transient, reason: not valid java name */
    public final C3484p2 m524transient() {
        C3484p2 c3484p2 = this.applicationInfo_;
        return c3484p2 == null ? C3484p2.m7774instanceof() : c3484p2;
    }
}
