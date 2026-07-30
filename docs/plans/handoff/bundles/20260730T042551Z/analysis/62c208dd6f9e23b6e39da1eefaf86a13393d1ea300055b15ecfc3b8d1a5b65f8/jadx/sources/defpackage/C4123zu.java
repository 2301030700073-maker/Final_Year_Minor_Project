package defpackage;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.protobuf.Ccatch;
import com.google.protobuf.Cextends;
import com.google.protobuf.Cimport;
import com.google.protobuf.Cnative;
import com.google.protobuf.Cthis;
import defpackage.EnumC3386nM;
import java.util.List;

/* renamed from: zu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4123zu extends Cthis<C4123zu, Cdo> implements InterfaceC0506Ss {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 7;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 12;
    private static final C4123zu DEFAULT_INSTANCE;
    public static final int HTTP_METHOD_FIELD_NUMBER = 2;
    public static final int HTTP_RESPONSE_CODE_FIELD_NUMBER = 5;
    public static final int NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER = 11;
    private static volatile InterfaceC4066yw<C4123zu> PARSER = null;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 13;
    public static final int REQUEST_PAYLOAD_BYTES_FIELD_NUMBER = 3;
    public static final int RESPONSE_CONTENT_TYPE_FIELD_NUMBER = 6;
    public static final int RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER = 4;
    public static final int TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER = 8;
    public static final int TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER = 10;
    public static final int TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER = 9;
    public static final int URL_FIELD_NUMBER = 1;
    private int bitField0_;
    private long clientStartTimeUs_;
    private int httpMethod_;
    private int httpResponseCode_;
    private int networkClientErrorReason_;
    private long requestPayloadBytes_;
    private long responsePayloadBytes_;
    private long timeToRequestCompletedUs_;
    private long timeToResponseCompletedUs_;
    private long timeToResponseInitiatedUs_;
    private Cnative<String, String> customAttributes_ = Cnative.f12080do;
    private String url_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String responseContentType_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private Ccatch.Cfor<Hw> perfSessions_ = Cextends.f12060do;

    /* renamed from: zu$do, reason: invalid class name */
    public static final class Cdo extends Cthis.Cdo<C4123zu, Cdo> implements InterfaceC0506Ss {
        public Cdo() {
            super(C4123zu.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: zu$for, reason: invalid class name */
    public enum Cfor implements Ccatch.Cdo {
        HTTP_METHOD_UNKNOWN(0),
        GET(1),
        PUT(2),
        POST(3),
        DELETE(4),
        HEAD(5),
        PATCH(6),
        OPTIONS(7),
        TRACE(8),
        CONNECT(9);


        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final int f16967for;

        /* renamed from: zu$for$do, reason: invalid class name */
        public static final class Cdo {

            /* renamed from: do, reason: not valid java name */
            public static final Cdo f16968do = new Cdo();
        }

        Cfor(int i) {
            this.f16967for = i;
        }

        /* renamed from: case, reason: not valid java name */
        public static Cfor m8838case(int i) {
            switch (i) {
                case 0:
                    return HTTP_METHOD_UNKNOWN;
                case 1:
                    return GET;
                case 2:
                    return PUT;
                case 3:
                    return POST;
                case 4:
                    return DELETE;
                case 5:
                    return HEAD;
                case 6:
                    return PATCH;
                case 7:
                    return OPTIONS;
                case 8:
                    return TRACE;
                case 9:
                    return CONNECT;
                default:
                    return null;
            }
        }

        @Override // com.google.protobuf.Ccatch.Cdo
        /* renamed from: do */
        public final int mo1834do() {
            return this.f16967for;
        }
    }

    /* renamed from: zu$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final Cimport<String, String> f16969do;

        static {
            EnumC3386nM.Cdo cdo = EnumC3386nM.f14511do;
            f16969do = new Cimport<>(cdo, cdo, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
    }

    static {
        C4123zu c4123zu = new C4123zu();
        DEFAULT_INSTANCE = c4123zu;
        Cthis.m6293abstract(C4123zu.class, c4123zu);
    }

    public static void a(C4123zu c4123zu, long j) {
        c4123zu.bitField0_ |= 1024;
        c4123zu.timeToResponseCompletedUs_ = j;
    }

    public static Cnative b(C4123zu c4123zu) {
        Cnative<String, String> cnative = c4123zu.customAttributes_;
        if (!cnative.f12081do) {
            c4123zu.customAttributes_ = cnative.m6268for();
        }
        return c4123zu.customAttributes_;
    }

    public static void c(C4123zu c4123zu, List list) {
        Ccatch.Cfor<Hw> cfor = c4123zu.perfSessions_;
        if (!cfor.mo6188do()) {
            c4123zu.perfSessions_ = Cthis.m6296private(cfor);
        }
        com.google.protobuf.Cdo.m6194const(list, c4123zu.perfSessions_);
    }

    public static void d(C4123zu c4123zu, Cfor cfor) {
        c4123zu.getClass();
        c4123zu.httpMethod_ = cfor.f16967for;
        c4123zu.bitField0_ |= 2;
    }

    public static void e(C4123zu c4123zu, long j) {
        c4123zu.bitField0_ |= 4;
        c4123zu.requestPayloadBytes_ = j;
    }

    public static void f(C4123zu c4123zu, long j) {
        c4123zu.bitField0_ |= 8;
        c4123zu.responsePayloadBytes_ = j;
    }

    public static C4123zu h() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m8830implements(C4123zu c4123zu, long j) {
        c4123zu.bitField0_ |= 128;
        c4123zu.clientStartTimeUs_ = j;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m8831instanceof(C4123zu c4123zu, long j) {
        c4123zu.bitField0_ |= 256;
        c4123zu.timeToRequestCompletedUs_ = j;
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m8832interface(C4123zu c4123zu, int i) {
        c4123zu.bitField0_ |= 32;
        c4123zu.httpResponseCode_ = i;
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m8833protected(C4123zu c4123zu, String str) {
        c4123zu.getClass();
        str.getClass();
        c4123zu.bitField0_ |= 64;
        c4123zu.responseContentType_ = str;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m8834strictfp(C4123zu c4123zu, String str) {
        c4123zu.getClass();
        str.getClass();
        c4123zu.bitField0_ |= 1;
        c4123zu.url_ = str;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m8835synchronized(C4123zu c4123zu, long j) {
        c4123zu.bitField0_ |= AdRequest.MAX_CONTENT_URL_LENGTH;
        c4123zu.timeToResponseInitiatedUs_ = j;
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m8836transient(C4123zu c4123zu) {
        c4123zu.bitField0_ &= -65;
        c4123zu.responseContentType_ = DEFAULT_INSTANCE.responseContentType_;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m8837volatile(C4123zu c4123zu) {
        c4123zu.getClass();
        c4123zu.networkClientErrorReason_ = 1;
        c4123zu.bitField0_ |= 16;
    }

    public static Cdo z() {
        return DEFAULT_INSTANCE.m6302return();
    }

    public final long g() {
        return this.clientStartTimeUs_;
    }

    public final Cfor i() {
        Cfor m8838case = Cfor.m8838case(this.httpMethod_);
        return m8838case == null ? Cfor.HTTP_METHOD_UNKNOWN : m8838case;
    }

    public final int j() {
        return this.httpResponseCode_;
    }

    public final Ccatch.Cfor k() {
        return this.perfSessions_;
    }

    public final long l() {
        return this.requestPayloadBytes_;
    }

    public final long m() {
        return this.responsePayloadBytes_;
    }

    public final long n() {
        return this.timeToRequestCompletedUs_;
    }

    public final long o() {
        return this.timeToResponseCompletedUs_;
    }

    public final long p() {
        return this.timeToResponseInitiatedUs_;
    }

    public final String q() {
        return this.url_;
    }

    public final boolean r() {
        return (this.bitField0_ & 128) != 0;
    }

    public final boolean s() {
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
                return new Py(DEFAULT_INSTANCE, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005င\u0005\u0006ဈ\u0006\u0007ဂ\u0007\bဂ\b\tဂ\t\nဂ\n\u000b᠌\u0004\f2\r\u001b", new Object[]{"bitField0_", "url_", "httpMethod_", Cfor.Cdo.f16968do, "requestPayloadBytes_", "responsePayloadBytes_", "httpResponseCode_", "responseContentType_", "clientStartTimeUs_", "timeToRequestCompletedUs_", "timeToResponseInitiatedUs_", "timeToResponseCompletedUs_", "networkClientErrorReason_", C0315Kc.f1828do, "customAttributes_", Cif.f16969do, "perfSessions_", Hw.class});
            case NEW_MUTABLE_INSTANCE:
                return new C4123zu();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<C4123zu> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (C4123zu.class) {
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

    public final boolean t() {
        return (this.bitField0_ & 32) != 0;
    }

    public final boolean u() {
        return (this.bitField0_ & 4) != 0;
    }

    public final boolean v() {
        return (this.bitField0_ & 8) != 0;
    }

    public final boolean w() {
        return (this.bitField0_ & 256) != 0;
    }

    public final boolean x() {
        return (this.bitField0_ & 1024) != 0;
    }

    public final boolean y() {
        return (this.bitField0_ & AdRequest.MAX_CONTENT_URL_LENGTH) != 0;
    }
}
