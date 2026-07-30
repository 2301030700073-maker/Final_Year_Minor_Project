package defpackage;

import com.google.protobuf.Cthis;

/* loaded from: classes3.dex */
public final class R0 extends Cthis<R0, Cdo> implements InterfaceC0506Ss {
    public static final int CLIENT_TIME_US_FIELD_NUMBER = 1;
    private static final R0 DEFAULT_INSTANCE;
    private static volatile InterfaceC4066yw<R0> PARSER = null;
    public static final int USED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 2;
    private int bitField0_;
    private long clientTimeUs_;
    private int usedAppJavaHeapMemoryKb_;

    /* renamed from: R0$do, reason: invalid class name */
    public static final class Cdo extends Cthis.Cdo<R0, Cdo> implements InterfaceC0506Ss {
        public Cdo() {
            super(R0.DEFAULT_INSTANCE);
        }
    }

    static {
        R0 r0 = new R0();
        DEFAULT_INSTANCE = r0;
        Cthis.m6293abstract(R0.class, r0);
    }

    /* renamed from: interface, reason: not valid java name */
    public static Cdo m2007interface() {
        return DEFAULT_INSTANCE.m6302return();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m2008strictfp(R0 r0, long j) {
        r0.bitField0_ |= 1;
        r0.clientTimeUs_ = j;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m2009volatile(R0 r0, int i) {
        r0.bitField0_ |= 2;
        r0.usedAppJavaHeapMemoryKb_ = i;
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
                return new Py(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002င\u0001", new Object[]{"bitField0_", "clientTimeUs_", "usedAppJavaHeapMemoryKb_"});
            case NEW_MUTABLE_INSTANCE:
                return new R0();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<R0> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (R0.class) {
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
