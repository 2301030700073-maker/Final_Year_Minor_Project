package defpackage;

import com.google.protobuf.Cthis;

/* renamed from: yb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4045yb extends Cthis<C4045yb, Cdo> implements InterfaceC0506Ss {
    public static final int CLIENT_TIME_US_FIELD_NUMBER = 1;
    private static final C4045yb DEFAULT_INSTANCE;
    private static volatile InterfaceC4066yw<C4045yb> PARSER = null;
    public static final int SYSTEM_TIME_US_FIELD_NUMBER = 3;
    public static final int USER_TIME_US_FIELD_NUMBER = 2;
    private int bitField0_;
    private long clientTimeUs_;
    private long systemTimeUs_;
    private long userTimeUs_;

    /* renamed from: yb$do, reason: invalid class name */
    public static final class Cdo extends Cthis.Cdo<C4045yb, Cdo> implements InterfaceC0506Ss {
        public Cdo() {
            super(C4045yb.DEFAULT_INSTANCE);
        }
    }

    static {
        C4045yb c4045yb = new C4045yb();
        DEFAULT_INSTANCE = c4045yb;
        Cthis.m6293abstract(C4045yb.class, c4045yb);
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m8758interface(C4045yb c4045yb, long j) {
        c4045yb.bitField0_ |= 4;
        c4045yb.systemTimeUs_ = j;
    }

    /* renamed from: protected, reason: not valid java name */
    public static Cdo m8759protected() {
        return DEFAULT_INSTANCE.m6302return();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m8760strictfp(C4045yb c4045yb, long j) {
        c4045yb.bitField0_ |= 1;
        c4045yb.clientTimeUs_ = j;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m8761volatile(C4045yb c4045yb, long j) {
        c4045yb.bitField0_ |= 2;
        c4045yb.userTimeUs_ = j;
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
                return new Py(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"bitField0_", "clientTimeUs_", "userTimeUs_", "systemTimeUs_"});
            case NEW_MUTABLE_INSTANCE:
                return new C4045yb();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<C4045yb> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (C4045yb.class) {
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
}
