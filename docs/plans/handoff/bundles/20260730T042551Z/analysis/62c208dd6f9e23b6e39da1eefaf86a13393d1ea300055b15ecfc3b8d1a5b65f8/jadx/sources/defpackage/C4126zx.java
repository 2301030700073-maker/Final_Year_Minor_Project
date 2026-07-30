package defpackage;

import androidx.datastore.preferences.protobuf.Cfinal;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C4067yx;

/* renamed from: zx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4126zx extends Cfinal<C4126zx, Cdo> implements InterfaceC0528Ts {
    public static final int BOOLEAN_FIELD_NUMBER = 1;
    private static final C4126zx DEFAULT_INSTANCE;
    public static final int DOUBLE_FIELD_NUMBER = 7;
    public static final int FLOAT_FIELD_NUMBER = 2;
    public static final int INTEGER_FIELD_NUMBER = 3;
    public static final int LONG_FIELD_NUMBER = 4;
    private static volatile InterfaceC4125zw<C4126zx> PARSER = null;
    public static final int STRING_FIELD_NUMBER = 5;
    public static final int STRING_SET_FIELD_NUMBER = 6;
    private int bitField0_;
    private int valueCase_ = 0;
    private Object value_;

    /* renamed from: zx$do, reason: invalid class name */
    public static final class Cdo extends Cfinal.Cdo<C4126zx, Cdo> implements InterfaceC0528Ts {
        public Cdo() {
            super(C4126zx.DEFAULT_INSTANCE);
        }
    }

    static {
        C4126zx c4126zx = new C4126zx();
        DEFAULT_INSTANCE = c4126zx;
        Cfinal.m3868final(C4126zx.class, c4126zx);
    }

    /* renamed from: import, reason: not valid java name */
    public static void m8839import(C4126zx c4126zx, double d) {
        c4126zx.valueCase_ = 7;
        c4126zx.value_ = Double.valueOf(d);
    }

    /* renamed from: public, reason: not valid java name */
    public static void m8841public(C4126zx c4126zx, boolean z) {
        c4126zx.valueCase_ = 1;
        c4126zx.value_ = Boolean.valueOf(z);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m8842return(C4126zx c4126zx, float f) {
        c4126zx.valueCase_ = 2;
        c4126zx.value_ = Float.valueOf(f);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m8843static(C4126zx c4126zx, int i) {
        c4126zx.valueCase_ = 3;
        c4126zx.value_ = Integer.valueOf(i);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static Cdo m8844strictfp() {
        return (Cdo) ((Cfinal.Cdo) DEFAULT_INSTANCE.mo3869break(Cfinal.Ccase.NEW_BUILDER));
    }

    /* renamed from: super, reason: not valid java name */
    public static void m8845super(C4126zx c4126zx, long j) {
        c4126zx.valueCase_ = 4;
        c4126zx.value_ = Long.valueOf(j);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m8846throw(C4126zx c4126zx, String str) {
        c4126zx.getClass();
        str.getClass();
        c4126zx.valueCase_ = 5;
        c4126zx.value_ = str;
    }

    /* renamed from: throws, reason: not valid java name */
    public static C4126zx m8847throws() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m8848while(C4126zx c4126zx, C4067yx.Cdo cdo) {
        c4126zx.getClass();
        c4126zx.value_ = cdo.m3876else();
        c4126zx.valueCase_ = 6;
    }

    /* renamed from: abstract, reason: not valid java name */
    public final C4067yx m8849abstract() {
        return this.valueCase_ == 6 ? (C4067yx) this.value_ : C4067yx.m8780while();
    }

    @Override // androidx.datastore.preferences.protobuf.Cfinal
    /* renamed from: break */
    public final Object mo3869break(Cfinal.Ccase ccase) {
        switch (ccase) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new Qy(DEFAULT_INSTANCE, "\u0001\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000", new Object[]{"value_", "valueCase_", "bitField0_", C4067yx.class});
            case NEW_MUTABLE_INSTANCE:
                return new C4126zx();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4125zw<C4126zx> interfaceC4125zw = PARSER;
                if (interfaceC4125zw == null) {
                    synchronized (C4126zx.class) {
                        try {
                            interfaceC4125zw = PARSER;
                            if (interfaceC4125zw == null) {
                                interfaceC4125zw = new Cfinal.Cif<>(DEFAULT_INSTANCE);
                                PARSER = interfaceC4125zw;
                            }
                        } finally {
                        }
                    }
                }
                return interfaceC4125zw;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public final int m8850continue() {
        switch (this.valueCase_) {
            case 0:
                return 8;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            default:
                return 0;
        }
    }

    /* renamed from: default, reason: not valid java name */
    public final double m8851default() {
        if (this.valueCase_ == 7) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }

    /* renamed from: extends, reason: not valid java name */
    public final float m8852extends() {
        if (this.valueCase_ == 2) {
            return ((Float) this.value_).floatValue();
        }
        return 0.0f;
    }

    /* renamed from: finally, reason: not valid java name */
    public final int m8853finally() {
        if (this.valueCase_ == 3) {
            return ((Integer) this.value_).intValue();
        }
        return 0;
    }

    /* renamed from: package, reason: not valid java name */
    public final long m8854package() {
        if (this.valueCase_ == 4) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    /* renamed from: private, reason: not valid java name */
    public final String m8855private() {
        return this.valueCase_ == 5 ? (String) this.value_ : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: switch, reason: not valid java name */
    public final boolean m8856switch() {
        if (this.valueCase_ == 1) {
            return ((Boolean) this.value_).booleanValue();
        }
        return false;
    }
}
