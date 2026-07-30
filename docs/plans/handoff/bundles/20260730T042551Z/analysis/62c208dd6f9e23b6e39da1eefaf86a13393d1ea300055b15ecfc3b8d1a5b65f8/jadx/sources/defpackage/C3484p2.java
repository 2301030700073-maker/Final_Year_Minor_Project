package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.protobuf.Cimport;
import com.google.protobuf.Cnative;
import com.google.protobuf.Cthis;
import defpackage.EnumC3386nM;
import defpackage.EnumC3601r2;

/* renamed from: p2, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3484p2 extends Cthis<C3484p2, Cdo> implements InterfaceC0506Ss {
    public static final int ANDROID_APP_INFO_FIELD_NUMBER = 3;
    public static final int APPLICATION_PROCESS_STATE_FIELD_NUMBER = 5;
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 6;
    private static final C3484p2 DEFAULT_INSTANCE;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    private static volatile InterfaceC4066yw<C3484p2> PARSER;
    private L0 androidAppInfo_;
    private int applicationProcessState_;
    private int bitField0_;
    private Cnative<String, String> customAttributes_ = Cnative.f12080do;
    private String googleAppId_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String appInstanceId_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: p2$do, reason: invalid class name */
    public static final class Cdo extends Cthis.Cdo<C3484p2, Cdo> implements InterfaceC0506Ss {
        public Cdo() {
            super(C3484p2.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: p2$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final Cimport<String, String> f14876do;

        static {
            EnumC3386nM.Cdo cdo = EnumC3386nM.f14511do;
            f14876do = new Cimport<>(cdo, cdo, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
    }

    static {
        C3484p2 c3484p2 = new C3484p2();
        DEFAULT_INSTANCE = c3484p2;
        Cthis.m6293abstract(C3484p2.class, c3484p2);
    }

    public static Cdo d() {
        return DEFAULT_INSTANCE.m6302return();
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static C3484p2 m7774instanceof() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: interface, reason: not valid java name */
    public static Cnative m7775interface(C3484p2 c3484p2) {
        Cnative<String, String> cnative = c3484p2.customAttributes_;
        if (!cnative.f12081do) {
            c3484p2.customAttributes_ = cnative.m6268for();
        }
        return c3484p2.customAttributes_;
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m7776protected(C3484p2 c3484p2, String str) {
        c3484p2.getClass();
        str.getClass();
        c3484p2.bitField0_ |= 2;
        c3484p2.appInstanceId_ = str;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m7777strictfp(C3484p2 c3484p2, String str) {
        c3484p2.getClass();
        str.getClass();
        c3484p2.bitField0_ |= 1;
        c3484p2.googleAppId_ = str;
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m7778transient(C3484p2 c3484p2, L0 l0) {
        c3484p2.getClass();
        c3484p2.androidAppInfo_ = l0;
        c3484p2.bitField0_ |= 4;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m7779volatile(C3484p2 c3484p2, EnumC3601r2 enumC3601r2) {
        c3484p2.getClass();
        c3484p2.applicationProcessState_ = enumC3601r2.f15199for;
        c3484p2.bitField0_ |= 8;
    }

    public final boolean a() {
        return (this.bitField0_ & 2) != 0;
    }

    public final boolean b() {
        return (this.bitField0_ & 8) != 0;
    }

    public final boolean c() {
        return (this.bitField0_ & 1) != 0;
    }

    /* renamed from: implements, reason: not valid java name */
    public final L0 m7780implements() {
        L0 l0 = this.androidAppInfo_;
        return l0 == null ? L0.m1250protected() : l0;
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
                return new Py(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0005᠌\u0003\u00062", new Object[]{"bitField0_", "googleAppId_", "appInstanceId_", "androidAppInfo_", "applicationProcessState_", EnumC3601r2.Cdo.f15200do, "customAttributes_", Cif.f14876do});
            case NEW_MUTABLE_INSTANCE:
                return new C3484p2();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<C3484p2> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (C3484p2.class) {
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
    public final boolean m7781synchronized() {
        return (this.bitField0_ & 4) != 0;
    }
}
