package defpackage;

import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0587Wl;
import defpackage.Tz;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/* renamed from: jm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3172jm implements InterfaceC4115zm {

    /* renamed from: do, reason: not valid java name */
    public int f13781do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f13782do = 262144;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Z5 f13783do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0671a6 f13784do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3732tF f13785do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3947wv f13786do;

    /* renamed from: jm$case, reason: invalid class name */
    public class Ccase extends Cdo {

        /* renamed from: if, reason: not valid java name */
        public boolean f13787if;

        public Ccase(C3172jm c3172jm) {
            super();
        }

        @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (((Cdo) this).f13791do) {
                return;
            }
            if (!this.f13787if) {
                m7172do(null, false);
            }
            ((Cdo) this).f13791do = true;
        }

        @Override // defpackage.C3172jm.Cdo, defpackage.KE
        /* renamed from: throw */
        public final long mo631throw(U5 u5, long j) {
            if (j < 0) {
                throw new IllegalArgumentException(Cpublic.m7828try("byteCount < 0: ", j));
            }
            if (((Cdo) this).f13791do) {
                throw new IllegalStateException("closed");
            }
            if (this.f13787if) {
                return -1L;
            }
            long mo631throw = super.mo631throw(u5, j);
            if (mo631throw != -1) {
                return mo631throw;
            }
            this.f13787if = true;
            m7172do(null, true);
            return -1L;
        }
    }

    /* renamed from: jm$do, reason: invalid class name */
    public abstract class Cdo implements KE {

        /* renamed from: do, reason: not valid java name */
        public long f13788do = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C4112zj f13790do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f13791do;

        public Cdo() {
            this.f13790do = new C4112zj(C3172jm.this.f13784do.mo632try());
        }

        /* renamed from: do, reason: not valid java name */
        public final void m7172do(IOException iOException, boolean z) {
            C3172jm c3172jm = C3172jm.this;
            int i = c3172jm.f13781do;
            if (i == 6) {
                return;
            }
            if (i != 5) {
                throw new IllegalStateException("state: " + c3172jm.f13781do);
            }
            C4112zj c4112zj = this.f13790do;
            C3675sH c3675sH = c4112zj.f16939do;
            c4112zj.f16939do = C3675sH.f15427do;
            c3675sH.mo8082do();
            c3675sH.mo8085if();
            c3172jm.f13781do = 6;
            C3732tF c3732tF = c3172jm.f13785do;
            if (c3732tF != null) {
                c3732tF.m8239this(!z, c3172jm, iOException);
            }
        }

        @Override // defpackage.KE
        /* renamed from: throw */
        public long mo631throw(U5 u5, long j) {
            try {
                long mo631throw = C3172jm.this.f13784do.mo631throw(u5, j);
                if (mo631throw > 0) {
                    this.f13788do += mo631throw;
                }
                return mo631throw;
            } catch (IOException e) {
                m7172do(e, false);
                throw e;
            }
        }

        @Override // defpackage.KE
        /* renamed from: try */
        public final C3675sH mo632try() {
            return this.f13790do;
        }
    }

    /* renamed from: jm$for, reason: invalid class name */
    public class Cfor extends Cdo {

        /* renamed from: do, reason: not valid java name */
        public final C0237Gm f13792do;

        /* renamed from: if, reason: not valid java name */
        public long f13793if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f13795if;

        public Cfor(C0237Gm c0237Gm) {
            super();
            this.f13793if = -1L;
            this.f13795if = true;
            this.f13792do = c0237Gm;
        }

        @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z;
            if (((Cdo) this).f13791do) {
                return;
            }
            if (this.f13795if) {
                try {
                    z = SJ.m2140import(this, 100, TimeUnit.MILLISECONDS);
                } catch (IOException unused) {
                    z = false;
                }
                if (!z) {
                    m7172do(null, false);
                }
            }
            ((Cdo) this).f13791do = true;
        }

        @Override // defpackage.C3172jm.Cdo, defpackage.KE
        /* renamed from: throw */
        public final long mo631throw(U5 u5, long j) {
            if (j < 0) {
                throw new IllegalArgumentException(Cpublic.m7828try("byteCount < 0: ", j));
            }
            if (((Cdo) this).f13791do) {
                throw new IllegalStateException("closed");
            }
            if (!this.f13795if) {
                return -1L;
            }
            long j2 = this.f13793if;
            if (j2 == 0 || j2 == -1) {
                C3172jm c3172jm = C3172jm.this;
                if (j2 != -1) {
                    c3172jm.f13784do.m();
                }
                try {
                    this.f13793if = c3172jm.f13784do.n();
                    String trim = c3172jm.f13784do.m().trim();
                    if (this.f13793if < 0 || !(trim.isEmpty() || trim.startsWith(";"))) {
                        throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f13793if + trim + "\"");
                    }
                    if (this.f13793if == 0) {
                        this.f13795if = false;
                        C0149Cm.m295new(c3172jm.f13786do.f16437do, this.f13792do, c3172jm.m7167goto());
                        m7172do(null, true);
                    }
                    if (!this.f13795if) {
                        return -1L;
                    }
                } catch (NumberFormatException e) {
                    throw new ProtocolException(e.getMessage());
                }
            }
            long mo631throw = super.mo631throw(u5, Math.min(j, this.f13793if));
            if (mo631throw != -1) {
                this.f13793if -= mo631throw;
                return mo631throw;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            m7172do(protocolException, false);
            throw protocolException;
        }
    }

    /* renamed from: jm$if, reason: invalid class name */
    public final class Cif implements InterfaceC3908wE {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C4112zj f13797do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f13798do;

        public Cif() {
            this.f13797do = new C4112zj(C3172jm.this.f13783do.mo1112try());
        }

        @Override // defpackage.InterfaceC3908wE, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            if (this.f13798do) {
                return;
            }
            this.f13798do = true;
            C3172jm.this.f13783do.p("0\r\n\r\n");
            C3172jm c3172jm = C3172jm.this;
            C4112zj c4112zj = this.f13797do;
            c3172jm.getClass();
            C3675sH c3675sH = c4112zj.f16939do;
            c4112zj.f16939do = C3675sH.f15427do;
            c3675sH.mo8082do();
            c3675sH.mo8085if();
            C3172jm.this.f13781do = 3;
        }

        @Override // defpackage.InterfaceC3908wE, java.io.Flushable
        public final synchronized void flush() {
            if (this.f13798do) {
                return;
            }
            C3172jm.this.f13783do.flush();
        }

        @Override // defpackage.InterfaceC3908wE
        /* renamed from: super */
        public final void mo1111super(U5 u5, long j) {
            if (this.f13798do) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            C3172jm c3172jm = C3172jm.this;
            c3172jm.f13783do.mo2297import(j);
            Z5 z5 = c3172jm.f13783do;
            z5.p("\r\n");
            z5.mo1111super(u5, j);
            z5.p("\r\n");
        }

        @Override // defpackage.InterfaceC3908wE
        /* renamed from: try */
        public final C3675sH mo1112try() {
            return this.f13797do;
        }
    }

    /* renamed from: jm$new, reason: invalid class name */
    public final class Cnew implements InterfaceC3908wE {

        /* renamed from: do, reason: not valid java name */
        public long f13799do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C4112zj f13801do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f13802do;

        public Cnew(long j) {
            this.f13801do = new C4112zj(C3172jm.this.f13783do.mo1112try());
            this.f13799do = j;
        }

        @Override // defpackage.InterfaceC3908wE, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f13802do) {
                return;
            }
            this.f13802do = true;
            if (this.f13799do > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            C3172jm c3172jm = C3172jm.this;
            c3172jm.getClass();
            C4112zj c4112zj = this.f13801do;
            C3675sH c3675sH = c4112zj.f16939do;
            c4112zj.f16939do = C3675sH.f15427do;
            c3675sH.mo8082do();
            c3675sH.mo8085if();
            c3172jm.f13781do = 3;
        }

        @Override // defpackage.InterfaceC3908wE, java.io.Flushable
        public final void flush() {
            if (this.f13802do) {
                return;
            }
            C3172jm.this.f13783do.flush();
        }

        @Override // defpackage.InterfaceC3908wE
        /* renamed from: super */
        public final void mo1111super(U5 u5, long j) {
            if (this.f13802do) {
                throw new IllegalStateException("closed");
            }
            long j2 = u5.f3826do;
            byte[] bArr = SJ.f3495do;
            if ((0 | j) < 0 || 0 > j2 || j2 - 0 < j) {
                throw new ArrayIndexOutOfBoundsException();
            }
            if (j <= this.f13799do) {
                C3172jm.this.f13783do.mo1111super(u5, j);
                this.f13799do -= j;
            } else {
                throw new ProtocolException("expected " + this.f13799do + " bytes but received " + j);
            }
        }

        @Override // defpackage.InterfaceC3908wE
        /* renamed from: try */
        public final C3675sH mo1112try() {
            return this.f13801do;
        }
    }

    /* renamed from: jm$try, reason: invalid class name */
    public class Ctry extends Cdo {

        /* renamed from: if, reason: not valid java name */
        public long f13803if;

        public Ctry(C3172jm c3172jm, long j) {
            super();
            this.f13803if = j;
            if (j == 0) {
                m7172do(null, true);
            }
        }

        @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z;
            if (((Cdo) this).f13791do) {
                return;
            }
            if (this.f13803if != 0) {
                try {
                    z = SJ.m2140import(this, 100, TimeUnit.MILLISECONDS);
                } catch (IOException unused) {
                    z = false;
                }
                if (!z) {
                    m7172do(null, false);
                }
            }
            ((Cdo) this).f13791do = true;
        }

        @Override // defpackage.C3172jm.Cdo, defpackage.KE
        /* renamed from: throw */
        public final long mo631throw(U5 u5, long j) {
            if (j < 0) {
                throw new IllegalArgumentException(Cpublic.m7828try("byteCount < 0: ", j));
            }
            if (((Cdo) this).f13791do) {
                throw new IllegalStateException("closed");
            }
            long j2 = this.f13803if;
            if (j2 == 0) {
                return -1L;
            }
            long mo631throw = super.mo631throw(u5, Math.min(j2, j));
            if (mo631throw == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m7172do(protocolException, false);
                throw protocolException;
            }
            long j3 = this.f13803if - mo631throw;
            this.f13803if = j3;
            if (j3 == 0) {
                m7172do(null, true);
            }
            return mo631throw;
        }
    }

    public C3172jm(C3947wv c3947wv, C3732tF c3732tF, InterfaceC0671a6 interfaceC0671a6, Z5 z5) {
        this.f13786do = c3947wv;
        this.f13785do = c3732tF;
        this.f13784do = interfaceC0671a6;
        this.f13783do = z5;
    }

    @Override // defpackage.InterfaceC4115zm
    public final void cancel() {
        Wy m8237if = this.f13785do.m8237if();
        if (m8237if != null) {
            SJ.m2130case(m8237if.f4419do);
        }
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: case, reason: not valid java name */
    public final void mo7163case(Bz bz) {
        Proxy.Type type = this.f13785do.m8237if().f4415do.f2869do.type();
        StringBuilder sb = new StringBuilder();
        sb.append(bz.f299do);
        sb.append(' ');
        C0237Gm c0237Gm = bz.f296do;
        if (!c0237Gm.f1229do.equals("https") && type == Proxy.Type.HTTP) {
            sb.append(c0237Gm);
        } else {
            sb.append(Hz.m901do(c0237Gm));
        }
        sb.append(" HTTP/1.1");
        m7170this(bz.f297do, sb.toString());
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: do, reason: not valid java name */
    public final void mo7164do() {
        this.f13783do.flush();
    }

    /* renamed from: else, reason: not valid java name */
    public final Ctry m7165else(long j) {
        if (this.f13781do == 4) {
            this.f13781do = 5;
            return new Ctry(this, j);
        }
        throw new IllegalStateException("state: " + this.f13781do);
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: for, reason: not valid java name */
    public final InterfaceC3908wE mo7166for(Bz bz, long j) {
        if ("chunked".equalsIgnoreCase(bz.m244do("Transfer-Encoding"))) {
            if (this.f13781do == 1) {
                this.f13781do = 2;
                return new Cif();
            }
            throw new IllegalStateException("state: " + this.f13781do);
        }
        if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        if (this.f13781do == 1) {
            this.f13781do = 2;
            return new Cnew(j);
        }
        throw new IllegalStateException("state: " + this.f13781do);
    }

    /* renamed from: goto, reason: not valid java name */
    public final C0587Wl m7167goto() {
        C0587Wl.Cdo cdo = new C0587Wl.Cdo();
        while (true) {
            String mo2323abstract = this.f13784do.mo2323abstract(this.f13782do);
            this.f13782do -= mo2323abstract.length();
            if (mo2323abstract.length() == 0) {
                return new C0587Wl(cdo);
            }
            AbstractC4058yo.f16832do.getClass();
            int indexOf = mo2323abstract.indexOf(CertificateUtil.DELIMITER, 1);
            if (indexOf != -1) {
                cdo.m2771do(mo2323abstract.substring(0, indexOf), mo2323abstract.substring(indexOf + 1));
            } else if (mo2323abstract.startsWith(CertificateUtil.DELIMITER)) {
                cdo.m2771do(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, mo2323abstract.substring(1));
            } else {
                cdo.m2771do(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, mo2323abstract);
            }
        }
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: if, reason: not valid java name */
    public final Yy mo7168if(Tz tz) {
        C3732tF c3732tF = this.f13785do;
        c3732tF.f15675do.getClass();
        String m2300do = tz.m2300do("Content-Type");
        if (!C0149Cm.m294if(tz)) {
            Ctry m7165else = m7165else(0L);
            Logger logger = C0114Av.f168do;
            return new Yy(m2300do, 0L, new Uy(m7165else));
        }
        if ("chunked".equalsIgnoreCase(tz.m2300do("Transfer-Encoding"))) {
            C0237Gm c0237Gm = tz.f3771do.f296do;
            if (this.f13781do != 4) {
                throw new IllegalStateException("state: " + this.f13781do);
            }
            this.f13781do = 5;
            Cfor cfor = new Cfor(c0237Gm);
            Logger logger2 = C0114Av.f168do;
            return new Yy(m2300do, -1L, new Uy(cfor));
        }
        long m292do = C0149Cm.m292do(tz);
        if (m292do != -1) {
            Ctry m7165else2 = m7165else(m292do);
            Logger logger3 = C0114Av.f168do;
            return new Yy(m2300do, m292do, new Uy(m7165else2));
        }
        if (this.f13781do != 4) {
            throw new IllegalStateException("state: " + this.f13781do);
        }
        this.f13781do = 5;
        c3732tF.m8232case();
        Ccase ccase = new Ccase(this);
        Logger logger4 = C0114Av.f168do;
        return new Yy(m2300do, -1L, new Uy(ccase));
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: new, reason: not valid java name */
    public final void mo7169new() {
        this.f13783do.flush();
    }

    /* renamed from: this, reason: not valid java name */
    public final void m7170this(C0587Wl c0587Wl, String str) {
        if (this.f13781do != 0) {
            throw new IllegalStateException("state: " + this.f13781do);
        }
        Z5 z5 = this.f13783do;
        z5.p(str).p("\r\n");
        int length = c0587Wl.f4398do.length / 2;
        for (int i = 0; i < length; i++) {
            z5.p(c0587Wl.m2769new(i)).p(": ").p(c0587Wl.m2767case(i)).p("\r\n");
        }
        z5.p("\r\n");
        this.f13781do = 1;
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: try, reason: not valid java name */
    public final Tz.Cdo mo7171try(boolean z) {
        int i = this.f13781do;
        if (i != 1 && i != 3) {
            throw new IllegalStateException("state: " + this.f13781do);
        }
        try {
            String mo2323abstract = this.f13784do.mo2323abstract(this.f13782do);
            this.f13782do -= mo2323abstract.length();
            C3320mF m7449do = C3320mF.m7449do(mo2323abstract);
            int i2 = m7449do.f14323do;
            Tz.Cdo cdo = new Tz.Cdo();
            cdo.f3789do = m7449do.f14325do;
            cdo.f3781do = i2;
            cdo.f3788do = m7449do.f14324do;
            cdo.f3787do = m7167goto().m2770try();
            if (z && i2 == 100) {
                return null;
            }
            if (i2 == 100) {
                this.f13781do = 3;
                return cdo;
            }
            this.f13781do = 4;
            return cdo;
        } catch (EOFException e) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f13785do);
            iOException.initCause(e);
            throw iOException;
        }
    }
}
