package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.protobuf.Cthis;

/* loaded from: classes3.dex */
public final class L0 extends Cthis<L0, Cdo> implements InterfaceC0506Ss {
    private static final L0 DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC4066yw<L0> PARSER = null;
    public static final int SDK_VERSION_FIELD_NUMBER = 2;
    public static final int VERSION_NAME_FIELD_NUMBER = 3;
    private int bitField0_;
    private String packageName_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String sdkVersion_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String versionName_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: L0$do, reason: invalid class name */
    public static final class Cdo extends Cthis.Cdo<L0, Cdo> implements InterfaceC0506Ss {
        public Cdo() {
            super(L0.DEFAULT_INSTANCE);
        }
    }

    static {
        L0 l0 = new L0();
        DEFAULT_INSTANCE = l0;
        Cthis.m6293abstract(L0.class, l0);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static Cdo m1248instanceof() {
        return DEFAULT_INSTANCE.m6302return();
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m1249interface(L0 l0, String str) {
        l0.getClass();
        l0.bitField0_ |= 4;
        l0.versionName_ = str;
    }

    /* renamed from: protected, reason: not valid java name */
    public static L0 m1250protected() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m1251strictfp(L0 l0, String str) {
        l0.getClass();
        str.getClass();
        l0.bitField0_ |= 1;
        l0.packageName_ = str;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m1252volatile(L0 l0) {
        l0.getClass();
        l0.bitField0_ |= 2;
        l0.sdkVersion_ = "21.0.2";
    }

    /* renamed from: implements, reason: not valid java name */
    public final boolean m1253implements() {
        return (this.bitField0_ & 2) != 0;
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
                return new Py(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002", new Object[]{"bitField0_", "packageName_", "sdkVersion_", "versionName_"});
            case NEW_MUTABLE_INSTANCE:
                return new L0();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<L0> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (L0.class) {
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
    public final boolean m1254transient() {
        return (this.bitField0_ & 1) != 0;
    }
}
