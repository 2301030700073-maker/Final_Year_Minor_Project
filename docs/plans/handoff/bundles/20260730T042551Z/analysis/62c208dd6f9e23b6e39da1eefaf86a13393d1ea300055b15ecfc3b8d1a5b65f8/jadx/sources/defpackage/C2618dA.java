package defpackage;

import com.google.android.gms.common.api.Api;
import defpackage.Bz;
import defpackage.C0237Gm;
import defpackage.Tz;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: dA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2618dA implements InterfaceC3940wo {

    /* renamed from: do, reason: not valid java name */
    public Object f12432do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile C3732tF f12433do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3947wv f12434do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile boolean f12435do;

    public C2618dA(C3947wv c3947wv) {
        this.f12434do = c3947wv;
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m6425case(Tz tz, C0237Gm c0237Gm) {
        C0237Gm c0237Gm2 = tz.f3771do.f296do;
        return c0237Gm2.f1234new.equals(c0237Gm.f1234new) && c0237Gm2.f1228do == c0237Gm.f1228do && c0237Gm2.f1229do.equals(c0237Gm.f1229do);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m6426try(Tz tz, int i) {
        String m2300do = tz.m2300do("Retry-After");
        return m2300do == null ? i : m2300do.matches("\\d+") ? Integer.valueOf(m2300do).intValue() : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    @Override // defpackage.InterfaceC3940wo
    /* renamed from: do */
    public final Tz mo2113do(Xy xy) {
        Tz m2877if;
        InterfaceC4115zm interfaceC4115zm;
        Bz bz = xy.f4617do;
        InterfaceC3959x6 interfaceC3959x6 = xy.f4622do;
        AbstractC3755tg abstractC3755tg = xy.f4621do;
        C3732tF c3732tF = new C3732tF(this.f12434do.f16446do, m6428if(bz.f296do), interfaceC3959x6, abstractC3755tg, this.f12432do);
        this.f12433do = c3732tF;
        int i = 0;
        Tz tz = null;
        while (!this.f12435do) {
            try {
                try {
                    try {
                        m2877if = xy.m2877if(bz, c3732tF, null, null);
                        if (tz != null) {
                            Tz.Cdo cdo = new Tz.Cdo(m2877if);
                            Tz.Cdo cdo2 = new Tz.Cdo(tz);
                            cdo2.f3786do = null;
                            Tz m2302do = cdo2.m2302do();
                            if (m2302do.f3774do != null) {
                                throw new IllegalArgumentException("priorResponse.body != null");
                            }
                            cdo.f3790for = m2302do;
                            m2877if = cdo.m2302do();
                        }
                    } catch (IOException e) {
                        if (!m6429new(e, c3732tF, !(e instanceof C3396na), bz)) {
                            throw e;
                        }
                    }
                } catch (RA e2) {
                    if (!m6429new(e2.f3153if, c3732tF, false, bz)) {
                        throw e2.f3152do;
                    }
                }
                try {
                    Bz m6427for = m6427for(m2877if, c3732tF.f15668do);
                    if (m6427for == null) {
                        c3732tF.m8234else();
                        return m2877if;
                    }
                    SJ.m2149try(m2877if.f3774do);
                    int i2 = i + 1;
                    if (i2 > 20) {
                        c3732tF.m8234else();
                        throw new ProtocolException(V1.m2494case("Too many follow-up requests: ", i2));
                    }
                    if (m6425case(m2877if, m6427for.f296do)) {
                        synchronized (c3732tF.f15673do) {
                            interfaceC4115zm = c3732tF.f15677do;
                        }
                        if (interfaceC4115zm != null) {
                            throw new IllegalStateException("Closing the body of " + m2877if + " didn't close its backing stream. Bad interceptor?");
                        }
                    } else {
                        c3732tF.m8234else();
                        c3732tF = new C3732tF(this.f12434do.f16446do, m6428if(m6427for.f296do), interfaceC3959x6, abstractC3755tg, this.f12432do);
                        this.f12433do = c3732tF;
                    }
                    tz = m2877if;
                    bz = m6427for;
                    i = i2;
                } catch (IOException e3) {
                    c3732tF.m8234else();
                    throw e3;
                }
            } catch (Throwable th) {
                c3732tF.m8236goto(null);
                c3732tF.m8234else();
                throw th;
            }
        }
        c3732tF.m8234else();
        throw new IOException("Canceled");
    }

    /* renamed from: for, reason: not valid java name */
    public final Bz m6427for(Tz tz, QA qa) {
        String m2300do;
        C0237Gm.Cdo cdo;
        if (tz == null) {
            throw new IllegalStateException();
        }
        Bz bz = tz.f3771do;
        String str = bz.f299do;
        C3947wv c3947wv = this.f12434do;
        int i = tz.f3777for;
        if (i == 307 || i == 308) {
            if (!str.equals("GET") && !str.equals("HEAD")) {
                return null;
            }
        } else {
            if (i == 401) {
                c3947wv.f16453if.getClass();
                return null;
            }
            Tz tz2 = tz.f3778for;
            if (i == 503) {
                if ((tz2 == null || tz2.f3777for != 503) && m6426try(tz, Api.BaseClientBuilder.API_PRIORITY_OTHER) == 0) {
                    return bz;
                }
                return null;
            }
            if (i == 407) {
                if (qa.f2869do.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                c3947wv.f16436do.getClass();
                return null;
            }
            if (i == 408) {
                if (!c3947wv.f16452for) {
                    return null;
                }
                if ((tz2 == null || tz2.f3777for != 408) && m6426try(tz, 0) <= 0) {
                    return bz;
                }
                return null;
            }
            switch (i) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        if (!c3947wv.f16455if || (m2300do = tz.m2300do("Location")) == null) {
            return null;
        }
        C0237Gm c0237Gm = bz.f296do;
        c0237Gm.getClass();
        try {
            cdo = new C0237Gm.Cdo();
            cdo.m760if(c0237Gm, m2300do);
        } catch (IllegalArgumentException unused) {
            cdo = null;
        }
        C0237Gm m759do = cdo != null ? cdo.m759do() : null;
        if (m759do == null) {
            return null;
        }
        if (!m759do.f1229do.equals(c0237Gm.f1229do) && !c3947wv.f16448do) {
            return null;
        }
        Bz.Cdo cdo2 = new Bz.Cdo(bz);
        if (C3850vF.m8466while(str)) {
            boolean equals = str.equals("PROPFIND");
            if (!str.equals("PROPFIND")) {
                cdo2.m247if("GET", null);
            } else {
                cdo2.m247if(str, equals ? bz.f298do : null);
            }
            if (!equals) {
                cdo2.m246for("Transfer-Encoding");
                cdo2.m246for("Content-Length");
                cdo2.m246for("Content-Type");
            }
        }
        if (!m6425case(tz, m759do)) {
            cdo2.m246for("Authorization");
        }
        cdo2.f302do = m759do;
        return cdo2.m245do();
    }

    /* renamed from: if, reason: not valid java name */
    public final C3599r0 m6428if(C0237Gm c0237Gm) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        C3135j7 c3135j7;
        boolean equals = c0237Gm.f1229do.equals("https");
        C3947wv c3947wv = this.f12434do;
        if (equals) {
            sSLSocketFactory = c3947wv.f16445do;
            hostnameVerifier = c3947wv.f16444do;
            c3135j7 = c3947wv.f16439do;
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            c3135j7 = null;
        }
        return new C3599r0(c0237Gm.f1234new, c0237Gm.f1228do, c3947wv.f16435do, c3947wv.f16443do, sSLSocketFactory, hostnameVerifier, c3135j7, c3947wv.f16436do, c3947wv.f16440do, c3947wv.f16442do, c3947wv.f16454if, c3947wv.f16441do);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004f, code lost:
    
        if ((r3.f3463do < r3.f3464do.size()) == false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0076 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0077 A[RETURN] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6429new(java.io.IOException r3, defpackage.C3732tF r4, boolean r5, defpackage.Bz r6) {
        /*
            r2 = this;
            r4.m8236goto(r3)
            wv r6 = r2.f12434do
            boolean r6 = r6.f16452for
            r0 = 0
            if (r6 != 0) goto Lb
            return r0
        Lb:
            if (r5 == 0) goto L12
            boolean r6 = r3 instanceof java.io.FileNotFoundException
            if (r6 == 0) goto L12
            return r0
        L12:
            boolean r6 = r3 instanceof java.net.ProtocolException
            r1 = 1
            if (r6 == 0) goto L18
            goto L34
        L18:
            boolean r6 = r3 instanceof java.io.InterruptedIOException
            if (r6 == 0) goto L23
            boolean r3 = r3 instanceof java.net.SocketTimeoutException
            if (r3 == 0) goto L34
            if (r5 != 0) goto L34
            goto L36
        L23:
            boolean r5 = r3 instanceof javax.net.ssl.SSLHandshakeException
            if (r5 == 0) goto L30
            java.lang.Throwable r5 = r3.getCause()
            boolean r5 = r5 instanceof java.security.cert.CertificateException
            if (r5 == 0) goto L30
            goto L34
        L30:
            boolean r3 = r3 instanceof javax.net.ssl.SSLPeerUnverifiedException
            if (r3 == 0) goto L36
        L34:
            r3 = 0
            goto L37
        L36:
            r3 = 1
        L37:
            if (r3 != 0) goto L3a
            return r0
        L3a:
            QA r3 = r4.f15668do
            if (r3 != 0) goto L73
            SA$do r3 = r4.f15669do
            if (r3 == 0) goto L51
            int r5 = r3.f3463do
            java.util.List<QA> r3 = r3.f3464do
            int r3 = r3.size()
            if (r5 >= r3) goto L4e
            r3 = 1
            goto L4f
        L4e:
            r3 = 0
        L4f:
            if (r3 != 0) goto L73
        L51:
            SA r3 = r4.f15670do
            int r4 = r3.f3456do
            java.util.List<java.net.Proxy> r5 = r3.f3458do
            int r5 = r5.size()
            if (r4 >= r5) goto L5f
            r4 = 1
            goto L60
        L5f:
            r4 = 0
        L60:
            if (r4 != 0) goto L6d
            java.util.ArrayList r3 = r3.f3457do
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L6b
            goto L6d
        L6b:
            r3 = 0
            goto L6e
        L6d:
            r3 = 1
        L6e:
            if (r3 == 0) goto L71
            goto L73
        L71:
            r3 = 0
            goto L74
        L73:
            r3 = 1
        L74:
            if (r3 != 0) goto L77
            return r0
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2618dA.m6429new(java.io.IOException, tF, boolean, Bz):boolean");
    }
}
