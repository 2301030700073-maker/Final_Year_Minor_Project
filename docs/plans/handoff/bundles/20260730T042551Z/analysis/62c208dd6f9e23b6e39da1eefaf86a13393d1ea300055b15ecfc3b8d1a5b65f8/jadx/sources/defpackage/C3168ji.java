package defpackage;

import android.annotation.SuppressLint;
import android.net.TrafficStats;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.C3250l4;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: ji, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3168ji implements InterfaceC3227ki {

    /* renamed from: if, reason: not valid java name */
    public static final Object f13747if = new Object();

    /* renamed from: do, reason: not valid java name */
    public final Jw f13748do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Jy f13749do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0503Sp<C3291ln> f13750do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ZJ f13751do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0706ai f13752do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2765fi f13753do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f13754do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f13755do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f13756do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f13757do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f13758do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorService f13759do;

    static {
        new AtomicInteger(1);
    }

    @SuppressLint({"ThreadPoolCreation"})
    public C3168ji() {
        throw null;
    }

    @SuppressLint({"ThreadPoolCreation"})
    public C3168ji(final C0706ai c0706ai, InterfaceC3655ry interfaceC3655ry, ExecutorService executorService, ExecutorC3553qC executorC3553qC) {
        c0706ai.m3147do();
        C2765fi c2765fi = new C2765fi(c0706ai.f4985do, interfaceC3655ry);
        Jw jw = new Jw(c0706ai);
        ZJ m2986do = ZJ.m2986do();
        C0503Sp<C3291ln> c0503Sp = new C0503Sp<>(new InterfaceC3655ry() { // from class: hi
            @Override // defpackage.InterfaceC3655ry
            public final Object get() {
                return new C3291ln(C0706ai.this);
            }
        });
        Jy jy = new Jy();
        this.f13754do = new Object();
        this.f13757do = new HashSet();
        this.f13756do = new ArrayList();
        this.f13752do = c0706ai;
        this.f13753do = c2765fi;
        this.f13748do = jw;
        this.f13751do = m2986do;
        this.f13750do = c0503Sp;
        this.f13749do = jy;
        this.f13759do = executorService;
        this.f13758do = executorC3553qC;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m7150break(Exception exc) {
        synchronized (this.f13754do) {
            Iterator it = this.f13756do.iterator();
            while (it.hasNext()) {
                if (((InterfaceC2858hF) it.next()).mo2464if(exc)) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m7151case(C3250l4 c3250l4) {
        synchronized (f13747if) {
            C0706ai c0706ai = this.f13752do;
            c0706ai.m3147do();
            M1 m1374do = M1.m1374do(c0706ai.f4985do);
            try {
                this.f13748do.m1087if(c3250l4);
            } finally {
                if (m1374do != null) {
                    m1374do.m1377new();
                }
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m7152catch(C3250l4 c3250l4) {
        synchronized (this.f13754do) {
            Iterator it = this.f13756do.iterator();
            while (it.hasNext()) {
                if (((InterfaceC2858hF) it.next()).mo2463do(c3250l4)) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final synchronized void m7153class(String str) {
        this.f13755do = str;
    }

    /* renamed from: const, reason: not valid java name */
    public final synchronized void m7154const(C3250l4 c3250l4, C3250l4 c3250l42) {
        if (this.f13757do.size() != 0 && !TextUtils.equals(c3250l4.f14079do, c3250l42.f14079do)) {
            Iterator it = this.f13757do.iterator();
            while (it.hasNext()) {
                ((InterfaceC0363Mh) it.next()).m1447do();
            }
        }
    }

    @Override // defpackage.InterfaceC3227ki
    /* renamed from: do, reason: not valid java name */
    public final XV mo7155do() {
        m7156else();
        GG gg = new GG();
        m7157for(new C0542Uk(this.f13751do, gg));
        this.f13759do.execute(new Runnable() { // from class: gi

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ boolean f13199do = false;

            @Override // java.lang.Runnable
            public final void run() {
                C3168ji.this.m7160new(this.f13199do);
            }
        });
        return gg.f1160do;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m7156else() {
        C0706ai c0706ai = this.f13752do;
        c0706ai.m3147do();
        Preconditions.checkNotEmpty(c0706ai.f4989do.f14828if, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        c0706ai.m3147do();
        Preconditions.checkNotEmpty(c0706ai.f4989do.f14826else, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        c0706ai.m3147do();
        Preconditions.checkNotEmpty(c0706ai.f4989do.f14825do, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        c0706ai.m3147do();
        String str = c0706ai.f4989do.f14828if;
        Pattern pattern = ZJ.f4800do;
        Preconditions.checkArgument(str.contains(CertificateUtil.DELIMITER), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        c0706ai.m3147do();
        Preconditions.checkArgument(ZJ.f4800do.matcher(c0706ai.f4989do.f14825do).matches(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* renamed from: for, reason: not valid java name */
    public final void m7157for(InterfaceC2858hF interfaceC2858hF) {
        synchronized (this.f13754do) {
            this.f13756do.add(interfaceC2858hF);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001c, code lost:
    
        if ("[DEFAULT]".equals(r0.f4986do) != false) goto L6;
     */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m7158goto(defpackage.C3250l4 r3) {
        /*
            r2 = this;
            ai r0 = r2.f13752do
            r0.m3147do()
            java.lang.String r0 = r0.f4986do
            java.lang.String r1 = "CHIME_ANDROID_SDK"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1e
            ai r0 = r2.f13752do
            r0.m3147do()
            java.lang.String r1 = "[DEFAULT]"
            java.lang.String r0 = r0.f4986do
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L27
        L1e:
            int r3 = r3.f14081if
            r0 = 1
            if (r3 != r0) goto L24
            goto L25
        L24:
            r0 = 0
        L25:
            if (r0 != 0) goto L31
        L27:
            Jy r3 = r2.f13749do
            r3.getClass()
            java.lang.String r3 = defpackage.Jy.m1091do()
            return r3
        L31:
            Sp<ln> r3 = r2.f13750do
            java.lang.Object r3 = r3.get()
            ln r3 = (defpackage.C3291ln) r3
            android.content.SharedPreferences r0 = r3.f14244do
            monitor-enter(r0)
            java.lang.String r1 = r3.m7385do()     // Catch: java.lang.Throwable -> L59
            if (r1 == 0) goto L44
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L59
            goto L49
        L44:
            java.lang.String r1 = r3.m7386if()     // Catch: java.lang.Throwable -> L59
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L59
        L49:
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 == 0) goto L58
            Jy r3 = r2.f13749do
            r3.getClass()
            java.lang.String r1 = defpackage.Jy.m1091do()
        L58:
            return r1
        L59:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L59
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3168ji.m7158goto(l4):java.lang.String");
    }

    @Override // defpackage.InterfaceC3227ki
    /* renamed from: if, reason: not valid java name */
    public final XV mo7159if() {
        String str;
        m7156else();
        synchronized (this) {
            str = this.f13755do;
        }
        if (str != null) {
            return LG.m1320try(str);
        }
        GG gg = new GG();
        m7157for(new C0564Vk(gg));
        XV xv = gg.f1160do;
        this.f13759do.execute(new RunnableC0651Zj(this, 6));
        return xv;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        r3 = m7158goto(r2);
        r4 = r6.f13748do;
        r5 = new defpackage.C3250l4.Cdo(r2);
        r5.f14087do = r3;
        r5.m7335if(3);
        r2 = r5.m7334do();
        r4.m1087if(r2);
     */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7160new(final boolean r7) {
        /*
            r6 = this;
            java.lang.Object r0 = defpackage.C3168ji.f13747if
            monitor-enter(r0)
            ai r1 = r6.f13752do     // Catch: java.lang.Throwable -> L61
            r1.m3147do()     // Catch: java.lang.Throwable -> L61
            android.content.Context r1 = r1.f4985do     // Catch: java.lang.Throwable -> L61
            M1 r1 = defpackage.M1.m1374do(r1)     // Catch: java.lang.Throwable -> L61
            Jw r2 = r6.f13748do     // Catch: java.lang.Throwable -> L5a
            l4 r2 = r2.m1086for()     // Catch: java.lang.Throwable -> L5a
            int r3 = r2.f14081if     // Catch: java.lang.Throwable -> L5a
            r4 = 2
            r5 = 1
            if (r3 == r4) goto L1e
            if (r3 != r5) goto L1d
            goto L1e
        L1d:
            r5 = 0
        L1e:
            if (r5 == 0) goto L38
            java.lang.String r3 = r6.m7158goto(r2)     // Catch: java.lang.Throwable -> L5a
            Jw r4 = r6.f13748do     // Catch: java.lang.Throwable -> L5a
            l4$do r5 = new l4$do     // Catch: java.lang.Throwable -> L5a
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L5a
            r5.f14087do = r3     // Catch: java.lang.Throwable -> L5a
            r2 = 3
            r5.m7335if(r2)     // Catch: java.lang.Throwable -> L5a
            l4 r2 = r5.m7334do()     // Catch: java.lang.Throwable -> L5a
            r4.m1087if(r2)     // Catch: java.lang.Throwable -> L5a
        L38:
            if (r1 == 0) goto L3d
            r1.m1377new()     // Catch: java.lang.Throwable -> L61
        L3d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L61
            if (r7 == 0) goto L4c
            l4$do r0 = new l4$do
            r0.<init>(r2)
            r1 = 0
            r0.f14090if = r1
            l4 r2 = r0.m7334do()
        L4c:
            r6.m7152catch(r2)
            java.util.concurrent.Executor r0 = r6.f13758do
            ii r1 = new ii
            r1.<init>()
            r0.execute(r1)
            return
        L5a:
            r7 = move-exception
            if (r1 == 0) goto L60
            r1.m1377new()     // Catch: java.lang.Throwable -> L61
        L60:
            throw r7     // Catch: java.lang.Throwable -> L61
        L61:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L61
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3168ji.m7160new(boolean):void");
    }

    /* renamed from: this, reason: not valid java name */
    public final C3250l4 m7161this(C3250l4 c3250l4) {
        int responseCode;
        C2612d4 m6677try;
        String str = c3250l4.f14079do;
        String str2 = null;
        if (str != null && str.length() == 11) {
            C3291ln c3291ln = this.f13750do.get();
            synchronized (c3291ln.f14244do) {
                String[] strArr = C3291ln.f14243do;
                int i = 0;
                while (true) {
                    if (i >= 4) {
                        break;
                    }
                    String str3 = strArr[i];
                    String string = c3291ln.f14244do.getString("|T|" + c3291ln.f14245do + "|" + str3, null);
                    if (string == null || string.isEmpty()) {
                        i++;
                    } else if (string.startsWith("{")) {
                        try {
                            str2 = new JSONObject(string).getString("token");
                        } catch (JSONException unused) {
                        }
                    } else {
                        str2 = string;
                    }
                }
            }
        }
        C2765fi c2765fi = this.f13753do;
        C0706ai c0706ai = this.f13752do;
        c0706ai.m3147do();
        String str4 = c0706ai.f4989do.f14825do;
        String str5 = c3250l4.f14079do;
        C0706ai c0706ai2 = this.f13752do;
        c0706ai2.m3147do();
        String str6 = c0706ai2.f4989do.f14826else;
        C0706ai c0706ai3 = this.f13752do;
        c0706ai3.m3147do();
        String str7 = c0706ai3.f4989do.f14828if;
        Gz gz = c2765fi.f12966do;
        if (!gz.m784if()) {
            throw new C3286li("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL m6671do = C2765fi.m6671do(String.format("projects/%s/installations", str6));
        for (int i2 = 0; i2 <= 1; i2++) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection m6678for = c2765fi.m6678for(m6671do, str4);
            try {
                try {
                    m6678for.setRequestMethod("POST");
                    m6678for.setDoOutput(true);
                    if (str2 != null) {
                        m6678for.addRequestProperty("x-goog-fis-android-iid-migration-auth", str2);
                    }
                    C2765fi.m6672else(m6678for, str5, str7);
                    responseCode = m6678for.getResponseCode();
                    gz.m785new(responseCode);
                } finally {
                    m6678for.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            } catch (IOException | AssertionError unused2) {
            }
            if (responseCode >= 200 && responseCode < 300) {
                m6677try = C2765fi.m6677try(m6678for);
                m6678for.disconnect();
                TrafficStats.clearThreadStatsTag();
            } else {
                C2765fi.m6674if(m6678for, str7, str4, str6);
                if (responseCode == 429) {
                    throw new C3286li("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                }
                if (responseCode < 500 || responseCode >= 600) {
                    try {
                        C2612d4 c2612d4 = new C2612d4(null, null, null, null, 2);
                        m6678for.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        m6677try = c2612d4;
                    } catch (IOException | AssertionError unused3) {
                    }
                }
                m6678for.disconnect();
                TrafficStats.clearThreadStatsTag();
            }
            int m8819catch = C4122zt.m8819catch(m6677try.f12420do);
            if (m8819catch != 0) {
                if (m8819catch != 1) {
                    throw new C3286li("Firebase Installations Service is unavailable. Please try again later.");
                }
                C3250l4.Cdo m7333goto = c3250l4.m7333goto();
                m7333goto.f14091new = "BAD CONFIG";
                m7333goto.m7335if(5);
                return m7333goto.m7334do();
            }
            String str8 = m6677try.f12424if;
            String str9 = m6677try.f12423for;
            ZJ zj = this.f13751do;
            zj.getClass();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            zj.f4801do.getClass();
            long seconds = timeUnit.toSeconds(System.currentTimeMillis());
            String mo259if = m6677try.f12421do.mo259if();
            long mo258for = m6677try.f12421do.mo258for();
            C3250l4.Cdo cdo = new C3250l4.Cdo(c3250l4);
            cdo.f14087do = str8;
            cdo.m7335if(4);
            cdo.f14090if = mo259if;
            cdo.f14088for = str9;
            cdo.f14086do = Long.valueOf(mo258for);
            cdo.f14089if = Long.valueOf(seconds);
            return cdo.m7334do();
        }
        throw new C3286li("Firebase Installations Service is unavailable. Please try again later.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r2v14, types: [y4] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* renamed from: try, reason: not valid java name */
    public final C3250l4 m7162try(C3250l4 c3250l4) {
        String str;
        String str2;
        int responseCode;
        C0706ai c0706ai = this.f13752do;
        c0706ai.m3147do();
        String str3 = c0706ai.f4989do.f14825do;
        c0706ai.m3147do();
        String str4 = c0706ai.f4989do.f14826else;
        String str5 = c3250l4.f14080for;
        C2765fi c2765fi = this.f13753do;
        Gz gz = c2765fi.f12966do;
        String str6 = "Firebase Installations Service is unavailable. Please try again later.";
        if (!gz.m784if()) {
            throw new C3286li("Firebase Installations Service is unavailable. Please try again later.");
        }
        ?? r11 = 1;
        URL m6671do = C2765fi.m6671do(String.format("projects/%s/installations/%s/authTokens:generate", str4, c3250l4.f14079do));
        int i = 0;
        C4016y4 c4016y4 = str4;
        while (i <= r11) {
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection m6678for = c2765fi.m6678for(m6671do, str3);
            try {
                try {
                    m6678for.setRequestMethod("POST");
                    m6678for.addRequestProperty("Authorization", "FIS_v2 " + str5);
                    m6678for.setDoOutput(r11);
                    C2765fi.m6673goto(m6678for);
                    responseCode = m6678for.getResponseCode();
                    gz.m785new(responseCode);
                } catch (IOException | AssertionError unused) {
                }
                if (responseCode >= 200 && responseCode < 300) {
                    c4016y4 = C2765fi.m6670case(m6678for);
                    str = str6;
                } else {
                    C2765fi.m6674if(m6678for, null, str3, c4016y4);
                    if (responseCode == 401 || responseCode == 404) {
                        try {
                            str = str6;
                            Long l = 0L;
                            String str7 = l == null ? " tokenExpirationTimestamp" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                            if (str7.isEmpty()) {
                                c4016y4 = new C4016y4(null, l.longValue(), 3);
                            } else {
                                str2 = str;
                                try {
                                    throw new IllegalStateException("Missing required properties:".concat(str7));
                                } catch (IOException | AssertionError unused2) {
                                    continue;
                                }
                            }
                        } catch (IOException | AssertionError unused3) {
                            str2 = str;
                            c4016y4 = c4016y4;
                            m6678for.disconnect();
                            TrafficStats.clearThreadStatsTag();
                            i++;
                            str6 = str2;
                            r11 = 1;
                            c4016y4 = c4016y4;
                        }
                    } else {
                        if (responseCode == 429) {
                            throw new C3286li("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                        }
                        if (responseCode < 500 || responseCode >= 600) {
                            try {
                                Long l2 = 0L;
                                String str8 = l2 == null ? " tokenExpirationTimestamp" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                if (!str8.isEmpty()) {
                                    throw new IllegalStateException("Missing required properties:".concat(str8));
                                }
                                str = str6;
                                c4016y4 = new C4016y4(null, l2.longValue(), 2);
                            } catch (IOException | AssertionError unused4) {
                                str = str6;
                                str2 = str;
                                c4016y4 = c4016y4;
                                m6678for.disconnect();
                                TrafficStats.clearThreadStatsTag();
                                i++;
                                str6 = str2;
                                r11 = 1;
                                c4016y4 = c4016y4;
                            }
                        }
                        str2 = str6;
                        c4016y4 = c4016y4;
                        m6678for.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        i++;
                        str6 = str2;
                        r11 = 1;
                        c4016y4 = c4016y4;
                    }
                }
                m6678for.disconnect();
                TrafficStats.clearThreadStatsTag();
                int m8819catch = C4122zt.m8819catch(c4016y4.f16676do);
                if (m8819catch == 0) {
                    ZJ zj = this.f13751do;
                    zj.getClass();
                    TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                    zj.f4801do.getClass();
                    long seconds = timeUnit.toSeconds(System.currentTimeMillis());
                    C3250l4.Cdo cdo = new C3250l4.Cdo(c3250l4);
                    cdo.f14090if = c4016y4.f16678do;
                    cdo.f14086do = Long.valueOf(c4016y4.f16677do);
                    cdo.f14089if = Long.valueOf(seconds);
                    return cdo.m7334do();
                }
                if (m8819catch == 1) {
                    C3250l4.Cdo m7333goto = c3250l4.m7333goto();
                    m7333goto.f14091new = "BAD CONFIG";
                    m7333goto.m7335if(5);
                    return m7333goto.m7334do();
                }
                if (m8819catch != 2) {
                    throw new C3286li(str);
                }
                m7153class(null);
                C3250l4.Cdo cdo2 = new C3250l4.Cdo(c3250l4);
                cdo2.m7335if(2);
                return cdo2.m7334do();
            } catch (Throwable th) {
                m6678for.disconnect();
                TrafficStats.clearThreadStatsTag();
                throw th;
            }
        }
        throw new C3286li(str6);
    }
}
