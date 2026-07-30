package defpackage;

import com.facebook.ads.AdError;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import defpackage.C0237Gm;
import defpackage.C4123zu;
import java.lang.ref.WeakReference;
import java.util.List;

/* renamed from: Au, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0113Au extends AbstractC3425o2 implements InterfaceC3788uC {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f159do = Q0.m1818new();

    /* renamed from: break, reason: not valid java name */
    public String f160break;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AI f161do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final GaugeManager f162do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakReference<InterfaceC3788uC> f163do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<PerfSession> f164do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4123zu.Cdo f165do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f166do;

    /* renamed from: if, reason: not valid java name */
    public boolean f167if;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0113Au(defpackage.AI r3) {
        /*
            r2 = this;
            n2 r0 = defpackage.C3366n2.m7530do()
            com.google.firebase.perf.session.gauges.GaugeManager r1 = com.google.firebase.perf.session.gauges.GaugeManager.getInstance()
            r2.<init>(r0)
            zu$do r0 = defpackage.C4123zu.z()
            r2.f165do = r0
            java.lang.ref.WeakReference r0 = new java.lang.ref.WeakReference
            r0.<init>(r2)
            r2.f163do = r0
            r2.f161do = r3
            r2.f162do = r1
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.List r3 = j$.util.DesugarCollections.synchronizedList(r3)
            r2.f164do = r3
            r2.registerForAppState()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0113Au.<init>(AI):void");
    }

    /* renamed from: for, reason: not valid java name */
    public static C0113Au m108for(AI ai) {
        return new C0113Au(ai);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m109catch(long j) {
        PerfSession perfSession = SessionManager.getInstance().perfSession();
        SessionManager.getInstance().registerForSessionUpdates(this.f163do);
        C4123zu.Cdo cdo = this.f165do;
        cdo.m6307super();
        C4123zu.m8830implements((C4123zu) cdo.f12107if, j);
        mo111do(perfSession);
        if (perfSession.f11970do) {
            this.f162do.collectGaugeMetricOnce(perfSession.f11969do);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final void m110class(String str) {
        C4123zu.Cdo cdo = this.f165do;
        if (str == null) {
            cdo.m6307super();
            C4123zu.m8836transient((C4123zu) cdo.f12107if);
            return;
        }
        boolean z = false;
        if (str.length() <= 128) {
            int i = 0;
            while (true) {
                if (i >= str.length()) {
                    z = true;
                    break;
                }
                char charAt = str.charAt(i);
                if (charAt <= 31 || charAt > 127) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (z) {
            cdo.m6307super();
            C4123zu.m8833protected((C4123zu) cdo.f12107if, str);
        } else {
            "The content type of the response is not a valid content-type:".concat(str);
            f159do.m1819case();
        }
    }

    @Override // defpackage.InterfaceC3788uC
    /* renamed from: do, reason: not valid java name */
    public final void mo111do(PerfSession perfSession) {
        if (perfSession == null) {
            f159do.m1819case();
            return;
        }
        C4123zu.Cdo cdo = this.f165do;
        if (!((C4123zu) cdo.f12107if).r() || ((C4123zu) cdo.f12107if).x()) {
            return;
        }
        this.f164do.add(perfSession);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m112else(long j) {
        C4123zu.Cdo cdo = this.f165do;
        cdo.m6307super();
        C4123zu.e((C4123zu) cdo.f12107if, j);
    }

    /* renamed from: final, reason: not valid java name */
    public final void m113final(long j) {
        C4123zu.Cdo cdo = this.f165do;
        cdo.m6307super();
        C4123zu.f((C4123zu) cdo.f12107if, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0070  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m114if() {
        /*
            r7 = this;
            com.google.firebase.perf.session.SessionManager r0 = com.google.firebase.perf.session.SessionManager.getInstance()
            java.lang.ref.WeakReference<uC> r1 = r7.f163do
            r0.unregisterForSessionUpdates(r1)
            r7.unregisterForAppState()
            java.util.List<com.google.firebase.perf.session.PerfSession> r0 = r7.f164do
            monitor-enter(r0)
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L92
            r1.<init>()     // Catch: java.lang.Throwable -> L92
            java.util.List<com.google.firebase.perf.session.PerfSession> r2 = r7.f164do     // Catch: java.lang.Throwable -> L92
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L92
        L1a:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L92
            if (r3 == 0) goto L2c
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L92
            com.google.firebase.perf.session.PerfSession r3 = (com.google.firebase.perf.session.PerfSession) r3     // Catch: java.lang.Throwable -> L92
            if (r3 == 0) goto L1a
            r1.add(r3)     // Catch: java.lang.Throwable -> L92
            goto L1a
        L2c:
            java.util.List r1 = j$.util.DesugarCollections.unmodifiableList(r1)     // Catch: java.lang.Throwable -> L92
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L92
            Hw[] r0 = com.google.firebase.perf.session.PerfSession.m6118if(r1)
            if (r0 == 0) goto L49
            zu$do r1 = r7.f165do
            java.util.List r0 = java.util.Arrays.asList(r0)
            r1.m6307super()
            MessageType extends com.google.protobuf.this<MessageType, BuilderType> r1 = r1.f12107if
            zu r1 = (defpackage.C4123zu) r1
            java.util.List r0 = (java.util.List) r0
            defpackage.C4123zu.c(r1, r0)
        L49:
            zu$do r0 = r7.f165do
            com.google.protobuf.this r0 = r0.m6305const()
            zu r0 = (defpackage.C4123zu) r0
            java.lang.String r1 = r7.f160break
            r2 = 1
            if (r1 == 0) goto L65
            java.util.regex.Pattern r3 = defpackage.C0135Bu.f293do
            java.util.regex.Matcher r1 = r3.matcher(r1)
            boolean r1 = r1.matches()
            if (r1 != 0) goto L63
            goto L67
        L63:
            r1 = 0
            goto L68
        L65:
            java.util.regex.Pattern r1 = defpackage.C0135Bu.f293do
        L67:
            r1 = 1
        L68:
            if (r1 != 0) goto L70
            Q0 r0 = defpackage.C0113Au.f159do
            r0.m1820do()
            return
        L70:
            boolean r1 = r7.f166do
            if (r1 != 0) goto L88
            AI r1 = r7.f161do
            r2 r3 = r7.getAppState()
            java.util.concurrent.ThreadPoolExecutor r4 = r1.f65do
            Lh r5 = new Lh
            r6 = 3
            r5.<init>(r1, r0, r3, r6)
            r4.execute(r5)
            r7.f166do = r2
            return
        L88:
            boolean r0 = r7.f167if
            if (r0 == 0) goto L91
            Q0 r0 = defpackage.C0113Au.f159do
            r0.m1820do()
        L91:
            return
        L92:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L92
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0113Au.m114if():void");
    }

    /* renamed from: new, reason: not valid java name */
    public final void m115new(String str) {
        C4123zu.Cfor cfor;
        if (str != null) {
            String upperCase = str.toUpperCase();
            upperCase.getClass();
            switch (upperCase) {
                case "OPTIONS":
                    cfor = C4123zu.Cfor.OPTIONS;
                    break;
                case "GET":
                    cfor = C4123zu.Cfor.GET;
                    break;
                case "PUT":
                    cfor = C4123zu.Cfor.PUT;
                    break;
                case "HEAD":
                    cfor = C4123zu.Cfor.HEAD;
                    break;
                case "POST":
                    cfor = C4123zu.Cfor.POST;
                    break;
                case "PATCH":
                    cfor = C4123zu.Cfor.PATCH;
                    break;
                case "TRACE":
                    cfor = C4123zu.Cfor.TRACE;
                    break;
                case "CONNECT":
                    cfor = C4123zu.Cfor.CONNECT;
                    break;
                case "DELETE":
                    cfor = C4123zu.Cfor.DELETE;
                    break;
                default:
                    cfor = C4123zu.Cfor.HTTP_METHOD_UNKNOWN;
                    break;
            }
            C4123zu.Cdo cdo = this.f165do;
            cdo.m6307super();
            C4123zu.d((C4123zu) cdo.f12107if, cfor);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public final void m116super(long j) {
        C4123zu.Cdo cdo = this.f165do;
        cdo.m6307super();
        C4123zu.a((C4123zu) cdo.f12107if, j);
        if (SessionManager.getInstance().perfSession().f11970do) {
            this.f162do.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().f11969do);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m117throw(String str) {
        C0237Gm c0237Gm;
        int lastIndexOf;
        if (str != null) {
            C0237Gm c0237Gm2 = null;
            try {
                C0237Gm.Cdo cdo = new C0237Gm.Cdo();
                cdo.m760if(null, str);
                c0237Gm = cdo.m759do();
            } catch (IllegalArgumentException unused) {
                c0237Gm = null;
            }
            if (c0237Gm != null) {
                C0237Gm.Cdo m757this = c0237Gm.m757this();
                m757this.f1240if = C0237Gm.m751if(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                m757this.f1239for = C0237Gm.m751if(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                m757this.f1241if = null;
                m757this.f1243try = null;
                str = m757this.toString();
            }
            if (str.length() > 2000) {
                if (str.charAt(AdError.SERVER_ERROR_CODE) == '/') {
                    str = str.substring(0, AdError.SERVER_ERROR_CODE);
                } else {
                    try {
                        C0237Gm.Cdo cdo2 = new C0237Gm.Cdo();
                        cdo2.m760if(null, str);
                        c0237Gm2 = cdo2.m759do();
                    } catch (IllegalArgumentException unused2) {
                    }
                    str = c0237Gm2 == null ? str.substring(0, AdError.SERVER_ERROR_CODE) : (c0237Gm2.m758try().lastIndexOf(47) < 0 || (lastIndexOf = str.lastIndexOf(47, 1999)) < 0) ? str.substring(0, AdError.SERVER_ERROR_CODE) : str.substring(0, lastIndexOf);
                }
            }
            C4123zu.Cdo cdo3 = this.f165do;
            cdo3.m6307super();
            C4123zu.m8834strictfp((C4123zu) cdo3.f12107if, str);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m118try(int i) {
        C4123zu.Cdo cdo = this.f165do;
        cdo.m6307super();
        C4123zu.m8832interface((C4123zu) cdo.f12107if, i);
    }
}
