package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.protobuf.Cbreak;
import com.google.protobuf.Ccatch;
import com.google.protobuf.Cfor;
import com.google.protobuf.Cthis;
import defpackage.QC;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class Hw extends Cthis<Hw, Cif> implements InterfaceC0506Ss {
    private static final Hw DEFAULT_INSTANCE;
    private static volatile InterfaceC4066yw<Hw> PARSER = null;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    public static final int SESSION_VERBOSITY_FIELD_NUMBER = 2;
    private static final InterfaceC3999xo<Integer, QC> sessionVerbosity_converter_ = new Cdo();
    private int bitField0_;
    private String sessionId_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private Ccatch.Cif sessionVerbosity_ = Cbreak.f12042do;

    /* renamed from: Hw$do, reason: invalid class name */
    public class Cdo implements InterfaceC3999xo<Integer, QC> {
    }

    /* renamed from: Hw$if, reason: invalid class name */
    public static final class Cif extends Cthis.Cdo<Hw, Cif> implements InterfaceC0506Ss {
        public Cif() {
            super(Hw.DEFAULT_INSTANCE);
        }
    }

    static {
        Hw hw = new Hw();
        DEFAULT_INSTANCE = hw;
        Cthis.m6293abstract(Hw.class, hw);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m896strictfp(Hw hw, String str) {
        hw.getClass();
        str.getClass();
        hw.bitField0_ |= 1;
        hw.sessionId_ = str;
    }

    /* renamed from: transient, reason: not valid java name */
    public static Cif m897transient() {
        return DEFAULT_INSTANCE.m6302return();
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m898volatile(Hw hw) {
        hw.getClass();
        List list = hw.sessionVerbosity_;
        if (!((Cfor) list).f12068do) {
            int size = list.size();
            int i = size == 0 ? 10 : size * 2;
            Cbreak cbreak = (Cbreak) list;
            if (i < cbreak.f12044for) {
                throw new IllegalArgumentException();
            }
            hw.sessionVerbosity_ = new Cbreak(Arrays.copyOf(cbreak.f12043do, i), cbreak.f12044for, true);
        }
        ((Cbreak) hw.sessionVerbosity_).m6177case(1);
    }

    /* renamed from: interface, reason: not valid java name */
    public final QC m899interface() {
        int m6179goto = ((Cbreak) this.sessionVerbosity_).m6179goto(0);
        QC qc = QC.SESSION_VERBOSITY_NONE;
        QC qc2 = m6179goto != 0 ? m6179goto != 1 ? null : QC.GAUGES_AND_SYSTEM_EVENTS : qc;
        return qc2 == null ? qc : qc2;
    }

    /* renamed from: protected, reason: not valid java name */
    public final int m900protected() {
        return this.sessionVerbosity_.size();
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
                return new Py(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002ࠞ", new Object[]{"bitField0_", "sessionId_", "sessionVerbosity_", QC.Cdo.f2878do});
            case NEW_MUTABLE_INSTANCE:
                return new Hw();
            case NEW_BUILDER:
                return new Cif();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<Hw> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (Hw.class) {
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
