package defpackage;

import com.google.protobuf.Cthis;

/* renamed from: yI, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4030yI extends Cthis<C4030yI, Cdo> implements InterfaceC0506Ss {
    private static final C4030yI DEFAULT_INSTANCE;
    public static final int DISPATCH_DESTINATION_FIELD_NUMBER = 1;
    private static volatile InterfaceC4066yw<C4030yI> PARSER;
    private int bitField0_;
    private int dispatchDestination_;

    /* renamed from: yI$do, reason: invalid class name */
    public static final class Cdo extends Cthis.Cdo<C4030yI, Cdo> implements InterfaceC0506Ss {
        public Cdo() {
            super(C4030yI.DEFAULT_INSTANCE);
        }
    }

    static {
        C4030yI c4030yI = new C4030yI();
        DEFAULT_INSTANCE = c4030yI;
        Cthis.m6293abstract(C4030yI.class, c4030yI);
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
                return new Py(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"bitField0_", "dispatchDestination_", C3850vF.f16042do});
            case NEW_MUTABLE_INSTANCE:
                return new C4030yI();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<C4030yI> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (C4030yI.class) {
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
