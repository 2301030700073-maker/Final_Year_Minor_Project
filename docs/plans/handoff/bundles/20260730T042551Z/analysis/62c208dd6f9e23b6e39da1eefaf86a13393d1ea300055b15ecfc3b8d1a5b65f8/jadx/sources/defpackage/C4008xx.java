package defpackage;

import androidx.datastore.preferences.protobuf.Cfinal;
import androidx.datastore.preferences.protobuf.Cswitch;
import androidx.datastore.preferences.protobuf.Cthis;
import androidx.datastore.preferences.protobuf.Cthrows;
import androidx.datastore.preferences.protobuf.Ctry;
import androidx.datastore.preferences.protobuf.Cwhile;
import j$.util.DesugarCollections;
import java.io.FileInputStream;
import java.util.Map;

/* renamed from: xx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4008xx extends Cfinal<C4008xx, Cdo> implements InterfaceC0528Ts {
    private static final C4008xx DEFAULT_INSTANCE;
    private static volatile InterfaceC4125zw<C4008xx> PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private Cthrows<String, C4126zx> preferences_ = Cthrows.f6657do;

    /* renamed from: xx$do, reason: invalid class name */
    public static final class Cdo extends Cfinal.Cdo<C4008xx, Cdo> implements InterfaceC0528Ts {
        public Cdo() {
            super(C4008xx.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: xx$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final Cswitch<String, C4126zx> f16653do = new Cswitch<>(EnumC3327mM.f14331do, EnumC3327mM.f14332do, C4126zx.m8847throws());
    }

    static {
        C4008xx c4008xx = new C4008xx();
        DEFAULT_INSTANCE = c4008xx;
        Cfinal.m3868final(C4008xx.class, c4008xx);
    }

    /* renamed from: import, reason: not valid java name */
    public static Cdo m8680import() {
        return (Cdo) ((Cfinal.Cdo) DEFAULT_INSTANCE.mo3869break(Cfinal.Ccase.NEW_BUILDER));
    }

    /* renamed from: native, reason: not valid java name */
    public static C4008xx m8681native(FileInputStream fileInputStream) {
        Cfinal m3867const = Cfinal.m3867const(DEFAULT_INSTANCE, new Ctry.Cif(fileInputStream), Cthis.m3994do());
        if (m3867const.isInitialized()) {
            return (C4008xx) m3867const;
        }
        throw new Cwhile(new C2921iJ().getMessage());
    }

    /* renamed from: throw, reason: not valid java name */
    public static Cthrows m8683throw(C4008xx c4008xx) {
        Cthrows<String, C4126zx> cthrows = c4008xx.preferences_;
        if (!cthrows.f6658do) {
            c4008xx.preferences_ = cthrows.m4000for();
        }
        return c4008xx.preferences_;
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
                return new Qy(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", Cif.f16653do});
            case NEW_MUTABLE_INSTANCE:
                return new C4008xx();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4125zw<C4008xx> interfaceC4125zw = PARSER;
                if (interfaceC4125zw == null) {
                    synchronized (C4008xx.class) {
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

    /* renamed from: while, reason: not valid java name */
    public final Map<String, C4126zx> m8684while() {
        return DesugarCollections.unmodifiableMap(this.preferences_);
    }
}
