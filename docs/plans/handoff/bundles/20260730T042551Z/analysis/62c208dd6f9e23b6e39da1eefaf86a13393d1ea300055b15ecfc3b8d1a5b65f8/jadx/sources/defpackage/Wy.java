package defpackage;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.api.Api;
import defpackage.Bz;
import defpackage.C3172jm;
import defpackage.C3408nm;
import defpackage.C3947wv;
import defpackage.Tz;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes3.dex */
public final class Wy extends C3408nm.Cnew {

    /* renamed from: do, reason: not valid java name */
    public int f4413do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QA f4415do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ty f4416do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0543Ul f4417do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Uy f4418do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Socket f4419do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3337ma f4421do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3408nm f4422do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EnumC3538py f4423do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4424do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Socket f4426if;

    /* renamed from: if, reason: not valid java name */
    public int f4425if = 1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f4420do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f4414do = Long.MAX_VALUE;

    public Wy(C3337ma c3337ma, QA qa) {
        this.f4421do = c3337ma;
        this.f4415do = qa;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m2781break(int i) {
        this.f4426if.setSoTimeout(0);
        C3408nm.Cif cif = new C3408nm.Cif();
        Socket socket = this.f4426if;
        String str = this.f4415do.f2870do.f15178do.f1234new;
        Uy uy = this.f4418do;
        Ty ty = this.f4416do;
        cif.f14591do = socket;
        cif.f14590do = str;
        cif.f14589do = uy;
        cif.f14588do = ty;
        cif.f14592do = this;
        cif.f14587do = i;
        C3408nm c3408nm = new C3408nm(cif);
        this.f4422do = c3408nm;
        C4056ym c4056ym = c3408nm.f14570do;
        synchronized (c4056ym) {
            if (c4056ym.f16830if) {
                throw new IOException("closed");
            }
            if (c4056ym.f16828do) {
                Logger logger = C4056ym.f16824do;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(SJ.m2132class(">> CONNECTION %s", C3231km.f14037do.mo2894const()));
                }
                c4056ym.f16826do.mo2298protected((byte[]) C3231km.f14037do.f14882do.clone());
                c4056ym.f16826do.flush();
            }
        }
        c3408nm.f14570do.m8765break(c3408nm.f14562do);
        if (c3408nm.f14562do.m1391do() != 65535) {
            c3408nm.f14570do.m8768const(0, r0 - 65535);
        }
        new Thread(c3408nm.f14568do).start();
    }

    /* renamed from: case, reason: not valid java name */
    public final void m2782case(C3514pa c3514pa, int i, AbstractC3755tg abstractC3755tg) {
        SSLSocket sSLSocket;
        QA qa = this.f4415do;
        C3599r0 c3599r0 = qa.f2870do;
        SSLSocketFactory sSLSocketFactory = c3599r0.f15187do;
        EnumC3538py enumC3538py = EnumC3538py.HTTP_1_1;
        if (sSLSocketFactory == null) {
            EnumC3538py enumC3538py2 = EnumC3538py.H2_PRIOR_KNOWLEDGE;
            if (!c3599r0.f15184do.contains(enumC3538py2)) {
                this.f4426if = this.f4419do;
                this.f4423do = enumC3538py;
                return;
            } else {
                this.f4426if = this.f4419do;
                this.f4423do = enumC3538py2;
                m2781break(i);
                return;
            }
        }
        abstractC3755tg.getClass();
        C3599r0 c3599r02 = qa.f2870do;
        SSLSocketFactory sSLSocketFactory2 = c3599r02.f15187do;
        C0237Gm c0237Gm = c3599r02.f15178do;
        try {
            try {
                sSLSocket = (SSLSocket) sSLSocketFactory2.createSocket(this.f4419do, c0237Gm.f1234new, c0237Gm.f1228do, true);
            } catch (AssertionError e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            sSLSocket = null;
        }
        try {
            C3455oa m7795do = c3514pa.m7795do(sSLSocket);
            String str = c0237Gm.f1234new;
            boolean z = m7795do.f14805if;
            if (z) {
                Ow.f2691do.mo902case(sSLSocket, str, c3599r02.f15184do);
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            C0543Ul m2465do = C0543Ul.m2465do(session);
            boolean verify = c3599r02.f15186do.verify(str, session);
            List<Certificate> list = m2465do.f3969do;
            if (verify) {
                c3599r02.f15181do.m7039do(str, list);
                String mo903this = z ? Ow.f2691do.mo903this(sSLSocket) : null;
                this.f4426if = sSLSocket;
                this.f4418do = new Uy(C0114Av.m120if(sSLSocket));
                this.f4416do = new Ty(C0114Av.m119do(this.f4426if));
                this.f4417do = m2465do;
                if (mo903this != null) {
                    enumC3538py = EnumC3538py.m7830do(mo903this);
                }
                this.f4423do = enumC3538py;
                Ow.f2691do.mo1709do(sSLSocket);
                if (this.f4423do == EnumC3538py.HTTP_2) {
                    m2781break(i);
                    return;
                }
                return;
            }
            if (list.isEmpty()) {
                throw new SSLPeerUnverifiedException("Hostname " + str + " not verified (no certificates)");
            }
            X509Certificate x509Certificate = (X509Certificate) list.get(0);
            throw new SSLPeerUnverifiedException("Hostname " + str + " not verified:\n    certificate: " + C3135j7.m7038if(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C3888vv.m8488do(x509Certificate));
        } catch (AssertionError e2) {
            e = e2;
            if (!SJ.m2148throw(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            if (sSLSocket != null) {
                Ow.f2691do.mo1709do(sSLSocket);
            }
            SJ.m2130case(sSLSocket);
            throw th;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m2783catch(C0237Gm c0237Gm) {
        int i = c0237Gm.f1228do;
        C0237Gm c0237Gm2 = this.f4415do.f2870do.f15178do;
        if (i != c0237Gm2.f1228do) {
            return false;
        }
        String str = c0237Gm.f1234new;
        if (str.equals(c0237Gm2.f1234new)) {
            return true;
        }
        C0543Ul c0543Ul = this.f4417do;
        return c0543Ul != null && C3888vv.m8489for(str, (X509Certificate) c0543Ul.f3969do.get(0));
    }

    @Override // defpackage.C3408nm.Cnew
    /* renamed from: do, reason: not valid java name */
    public final void mo2784do(C3408nm c3408nm) {
        synchronized (this.f4421do) {
            this.f4425if = c3408nm.m7612new();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m2785else(C3599r0 c3599r0, QA qa) {
        if (this.f4420do.size() < this.f4425if && !this.f4424do) {
            C3947wv.Cdo cdo = AbstractC4058yo.f16832do;
            QA qa2 = this.f4415do;
            C3599r0 c3599r02 = qa2.f2870do;
            cdo.getClass();
            if (!c3599r02.m7930do(c3599r0)) {
                return false;
            }
            C0237Gm c0237Gm = c3599r0.f15178do;
            if (c0237Gm.f1234new.equals(qa2.f2870do.f15178do.f1234new)) {
                return true;
            }
            if (this.f4422do == null || qa == null || qa.f2869do.type() != Proxy.Type.DIRECT || qa2.f2869do.type() != Proxy.Type.DIRECT || !qa2.f2868do.equals(qa.f2868do) || qa.f2870do.f15186do != C3888vv.f16154do || !m2783catch(c0237Gm)) {
                return false;
            }
            try {
                c3599r0.f15181do.m7039do(c0237Gm.f1234new, this.f4417do.f3969do);
                return true;
            } catch (SSLPeerUnverifiedException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c2 A[ORIG_RETURN, RETURN] */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2786for(int r10, int r11, int r12, int r13, boolean r14, defpackage.AbstractC3755tg r15) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Wy.m2786for(int, int, int, int, boolean, tg):void");
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m2787goto(boolean z) {
        if (this.f4426if.isClosed() || this.f4426if.isInputShutdown() || this.f4426if.isOutputShutdown()) {
            return false;
        }
        C3408nm c3408nm = this.f4422do;
        if (c3408nm != null) {
            long nanoTime = System.nanoTime();
            synchronized (c3408nm) {
                if (c3408nm.f14577if) {
                    return false;
                }
                if (c3408nm.f14579new < c3408nm.f14574for) {
                    if (nanoTime >= c3408nm.f14580try) {
                        return false;
                    }
                }
                return true;
            }
        }
        if (z) {
            try {
                int soTimeout = this.f4426if.getSoTimeout();
                try {
                    this.f4426if.setSoTimeout(1);
                    return !this.f4418do.h();
                } finally {
                    this.f4426if.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.C3408nm.Cnew
    /* renamed from: if, reason: not valid java name */
    public final void mo2788if(C3997xm c3997xm) {
        c3997xm.m8663for(5);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m2789new(int i, int i2, AbstractC3755tg abstractC3755tg) {
        QA qa = this.f4415do;
        Proxy proxy = qa.f2869do;
        InetSocketAddress inetSocketAddress = qa.f2868do;
        this.f4419do = (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) ? qa.f2870do.f15185do.createSocket() : new Socket(proxy);
        abstractC3755tg.getClass();
        this.f4419do.setSoTimeout(i2);
        try {
            Ow.f2691do.mo1710else(this.f4419do, inetSocketAddress, i);
            try {
                this.f4418do = new Uy(C0114Av.m120if(this.f4419do));
                this.f4416do = new Ty(C0114Av.m119do(this.f4419do));
            } catch (NullPointerException e) {
                if ("throw with null exception".equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + inetSocketAddress);
            connectException.initCause(e2);
            throw connectException;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final InterfaceC4115zm m2790this(C3947wv c3947wv, Xy xy, C3732tF c3732tF) {
        if (this.f4422do != null) {
            return new C3290lm(c3947wv, xy, c3732tF, this.f4422do);
        }
        Socket socket = this.f4426if;
        int i = xy.f4624for;
        socket.setSoTimeout(i);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f4418do.mo632try().mo8083else(i, timeUnit);
        this.f4416do.mo1112try().mo8083else(xy.f4626new, timeUnit);
        return new C3172jm(c3947wv, c3732tF, this.f4418do, this.f4416do);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        QA qa = this.f4415do;
        sb.append(qa.f2870do.f15178do.f1234new);
        sb.append(CertificateUtil.DELIMITER);
        sb.append(qa.f2870do.f15178do.f1228do);
        sb.append(", proxy=");
        sb.append(qa.f2869do);
        sb.append(" hostAddress=");
        sb.append(qa.f2868do);
        sb.append(" cipherSuite=");
        C0543Ul c0543Ul = this.f4417do;
        sb.append(c0543Ul != null ? c0543Ul.f3968do : IntegrityManager.INTEGRITY_TYPE_NONE);
        sb.append(" protocol=");
        sb.append(this.f4423do);
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final void m2791try(int i, int i2, int i3, AbstractC3755tg abstractC3755tg) {
        Bz.Cdo cdo = new Bz.Cdo();
        QA qa = this.f4415do;
        C0237Gm c0237Gm = qa.f2870do.f15178do;
        if (c0237Gm == null) {
            throw new NullPointerException("url == null");
        }
        cdo.f302do = c0237Gm;
        cdo.m247if("CONNECT", null);
        C3599r0 c3599r0 = qa.f2870do;
        cdo.f303do.m2772for("Host", SJ.m2133const(c3599r0.f15178do, true));
        cdo.f303do.m2772for("Proxy-Connection", "Keep-Alive");
        cdo.f303do.m2772for("User-Agent", "okhttp/3.12.12");
        Bz m245do = cdo.m245do();
        Tz.Cdo cdo2 = new Tz.Cdo();
        cdo2.f3783do = m245do;
        cdo2.f3789do = EnumC3538py.HTTP_1_1;
        cdo2.f3781do = 407;
        cdo2.f3788do = "Preemptive Authenticate";
        cdo2.f3786do = SJ.f3489do;
        cdo2.f3782do = -1L;
        cdo2.f3791if = -1L;
        cdo2.f3787do.m2772for("Proxy-Authenticate", "OkHttp-Preemptive");
        cdo2.m2302do();
        c3599r0.f15180do.getClass();
        m2789new(i, i2, abstractC3755tg);
        String str = "CONNECT " + SJ.m2133const(m245do.f296do, true) + " HTTP/1.1";
        Uy uy = this.f4418do;
        C3172jm c3172jm = new C3172jm(null, null, uy, this.f4416do);
        C3675sH mo632try = uy.mo632try();
        long j = i2;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        mo632try.mo8083else(j, timeUnit);
        this.f4416do.mo1112try().mo8083else(i3, timeUnit);
        c3172jm.m7170this(m245do.f297do, str);
        c3172jm.mo7164do();
        Tz.Cdo mo7171try = c3172jm.mo7171try(false);
        mo7171try.f3783do = m245do;
        Tz m2302do = mo7171try.m2302do();
        long m292do = C0149Cm.m292do(m2302do);
        if (m292do == -1) {
            m292do = 0;
        }
        C3172jm.Ctry m7165else = c3172jm.m7165else(m292do);
        SJ.m2140import(m7165else, Api.BaseClientBuilder.API_PRIORITY_OTHER, timeUnit);
        m7165else.close();
        int i4 = m2302do.f3777for;
        if (i4 != 200) {
            if (i4 != 407) {
                throw new IOException(V1.m2494case("Unexpected response code for CONNECT: ", i4));
            }
            c3599r0.f15180do.getClass();
            throw new IOException("Failed to authenticate with proxy");
        }
        if (!this.f4418do.f4012do.h() || !this.f4416do.f3766do.h()) {
            throw new IOException("TLS tunnel buffered too many bytes!");
        }
    }
}
