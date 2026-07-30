package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.protobuf.Ccatch;
import com.google.protobuf.Cextends;
import com.google.protobuf.Cimport;
import com.google.protobuf.Cnative;
import com.google.protobuf.Cthis;
import defpackage.EnumC3386nM;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: eI, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2684eI extends Cthis<C2684eI, Cdo> implements InterfaceC0506Ss {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 4;
    public static final int COUNTERS_FIELD_NUMBER = 6;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 8;
    private static final C2684eI DEFAULT_INSTANCE;
    public static final int DURATION_US_FIELD_NUMBER = 5;
    public static final int IS_AUTO_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC4066yw<C2684eI> PARSER = null;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 9;
    public static final int SUBTRACES_FIELD_NUMBER = 7;
    private int bitField0_;
    private long clientStartTimeUs_;
    private Cnative<String, Long> counters_;
    private Cnative<String, String> customAttributes_;
    private long durationUs_;
    private boolean isAuto_;
    private String name_;
    private Ccatch.Cfor<Hw> perfSessions_;
    private Ccatch.Cfor<C2684eI> subtraces_;

    /* renamed from: eI$do, reason: invalid class name */
    public static final class Cdo extends Cthis.Cdo<C2684eI, Cdo> implements InterfaceC0506Ss {
        public Cdo() {
            super(C2684eI.DEFAULT_INSTANCE);
        }

        /* renamed from: import, reason: not valid java name */
        public final void m6552import(C2684eI c2684eI) {
            m6307super();
            C2684eI.m6546interface((C2684eI) this.f12107if, c2684eI);
        }

        /* renamed from: native, reason: not valid java name */
        public final void m6553native(long j, String str) {
            str.getClass();
            m6307super();
            C2684eI.m6551volatile((C2684eI) this.f12107if).put(str, Long.valueOf(j));
        }

        /* renamed from: public, reason: not valid java name */
        public final void m6554public(long j) {
            m6307super();
            C2684eI.m6549synchronized((C2684eI) this.f12107if, j);
        }

        /* renamed from: return, reason: not valid java name */
        public final void m6555return(long j) {
            m6307super();
            C2684eI.a((C2684eI) this.f12107if, j);
        }

        /* renamed from: static, reason: not valid java name */
        public final void m6556static(String str) {
            m6307super();
            C2684eI.m6548strictfp((C2684eI) this.f12107if, str);
        }
    }

    /* renamed from: eI$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final Cimport<String, String> f12665do;

        static {
            EnumC3386nM.Cdo cdo = EnumC3386nM.f14511do;
            f12665do = new Cimport<>(cdo, cdo, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
    }

    /* renamed from: eI$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final Cimport<String, Long> f12666do = new Cimport<>(EnumC3386nM.f14511do, EnumC3386nM.f14513do, 0L);
    }

    static {
        C2684eI c2684eI = new C2684eI();
        DEFAULT_INSTANCE = c2684eI;
        Cthis.m6293abstract(C2684eI.class, c2684eI);
    }

    public C2684eI() {
        Cnative cnative = Cnative.f12080do;
        this.counters_ = cnative;
        this.customAttributes_ = cnative;
        this.name_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        Cextends<Object> cextends = Cextends.f12060do;
        this.subtraces_ = cextends;
        this.perfSessions_ = cextends;
    }

    public static void a(C2684eI c2684eI, long j) {
        c2684eI.bitField0_ |= 8;
        c2684eI.durationUs_ = j;
    }

    public static C2684eI f() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m6544implements(C2684eI c2684eI, Hw hw) {
        c2684eI.getClass();
        Ccatch.Cfor<Hw> cfor = c2684eI.perfSessions_;
        if (!cfor.mo6188do()) {
            c2684eI.perfSessions_ = Cthis.m6296private(cfor);
        }
        c2684eI.perfSessions_.add(hw);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m6545instanceof(C2684eI c2684eI, List list) {
        Ccatch.Cfor<Hw> cfor = c2684eI.perfSessions_;
        if (!cfor.mo6188do()) {
            c2684eI.perfSessions_ = Cthis.m6296private(cfor);
        }
        com.google.protobuf.Cdo.m6194const(list, c2684eI.perfSessions_);
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m6546interface(C2684eI c2684eI, C2684eI c2684eI2) {
        c2684eI.getClass();
        c2684eI2.getClass();
        Ccatch.Cfor<C2684eI> cfor = c2684eI.subtraces_;
        if (!cfor.mo6188do()) {
            c2684eI.subtraces_ = Cthis.m6296private(cfor);
        }
        c2684eI.subtraces_.add(c2684eI2);
    }

    public static Cdo l() {
        return DEFAULT_INSTANCE.m6302return();
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m6547protected(C2684eI c2684eI, ArrayList arrayList) {
        Ccatch.Cfor<C2684eI> cfor = c2684eI.subtraces_;
        if (!cfor.mo6188do()) {
            c2684eI.subtraces_ = Cthis.m6296private(cfor);
        }
        com.google.protobuf.Cdo.m6194const(arrayList, c2684eI.subtraces_);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m6548strictfp(C2684eI c2684eI, String str) {
        c2684eI.getClass();
        str.getClass();
        c2684eI.bitField0_ |= 1;
        c2684eI.name_ = str;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m6549synchronized(C2684eI c2684eI, long j) {
        c2684eI.bitField0_ |= 4;
        c2684eI.clientStartTimeUs_ = j;
    }

    /* renamed from: transient, reason: not valid java name */
    public static Cnative m6550transient(C2684eI c2684eI) {
        Cnative<String, String> cnative = c2684eI.customAttributes_;
        if (!cnative.f12081do) {
            c2684eI.customAttributes_ = cnative.m6268for();
        }
        return c2684eI.customAttributes_;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static Cnative m6551volatile(C2684eI c2684eI) {
        Cnative<String, Long> cnative = c2684eI.counters_;
        if (!cnative.f12081do) {
            c2684eI.counters_ = cnative.m6268for();
        }
        return c2684eI.counters_;
    }

    public final boolean b() {
        return this.customAttributes_.containsKey("Hosting_activity");
    }

    public final int c() {
        return this.counters_.size();
    }

    public final Map<String, Long> d() {
        return DesugarCollections.unmodifiableMap(this.counters_);
    }

    public final Map<String, String> e() {
        return DesugarCollections.unmodifiableMap(this.customAttributes_);
    }

    public final long g() {
        return this.durationUs_;
    }

    public final String h() {
        return this.name_;
    }

    public final Ccatch.Cfor i() {
        return this.perfSessions_;
    }

    public final Ccatch.Cfor j() {
        return this.subtraces_;
    }

    public final boolean k() {
        return (this.bitField0_ & 4) != 0;
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
                return new Py(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\t\b\u0002\u0002\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0004ဂ\u0002\u0005ဂ\u0003\u00062\u0007\u001b\b2\t\u001b", new Object[]{"bitField0_", "name_", "isAuto_", "clientStartTimeUs_", "durationUs_", "counters_", Cif.f12666do, "subtraces_", C2684eI.class, "customAttributes_", Cfor.f12665do, "perfSessions_", Hw.class});
            case NEW_MUTABLE_INSTANCE:
                return new C2684eI();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<C2684eI> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (C2684eI.class) {
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
