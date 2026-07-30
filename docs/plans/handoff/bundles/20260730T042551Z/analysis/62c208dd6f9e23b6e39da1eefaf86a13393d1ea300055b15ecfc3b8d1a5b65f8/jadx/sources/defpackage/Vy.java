package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0237Gm;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class Vy implements InterfaceC3959x6 {

    /* renamed from: do, reason: not valid java name */
    public final Bz f4275do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f4276do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2618dA f4277do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC3755tg f4278do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3947wv f4279do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f4280do;

    /* renamed from: if, reason: not valid java name */
    public boolean f4281if;

    /* renamed from: Vy$do, reason: invalid class name */
    public class Cdo extends M2 {
        public Cdo() {
        }

        @Override // defpackage.M2
        /* renamed from: final */
        public final void mo1384final() {
            Vy.this.m2677do();
        }
    }

    /* renamed from: Vy$if, reason: invalid class name */
    public final class Cif extends AbstractRunnableC0595Wt {

        /* renamed from: do, reason: not valid java name */
        public final A6 f4283do;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Cif(defpackage.C3410no r11) {
            /*
                r9 = this;
                defpackage.Vy.this = r10
                r0 = 1
                java.lang.Object[] r0 = new java.lang.Object[r0]
                Bz r10 = r10.f4275do
                Gm r10 = r10.f296do
                java.lang.String r1 = "/..."
                r10.getClass()
                Gm$do r2 = new Gm$do     // Catch: java.lang.IllegalArgumentException -> L17
                r2.<init>()     // Catch: java.lang.IllegalArgumentException -> L17
                r2.m760if(r10, r1)     // Catch: java.lang.IllegalArgumentException -> L17
                goto L18
            L17:
                r2 = 0
            L18:
                r2.getClass()
                java.lang.String r3 = ""
                java.lang.String r4 = " \"':;<=>@[]^`{}|/\\?#"
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 1
                java.lang.String r10 = defpackage.C0237Gm.m751if(r3, r4, r5, r6, r7, r8)
                r2.f1240if = r10
                java.lang.String r3 = ""
                java.lang.String r4 = " \"':;<=>@[]^`{}|/\\?#"
                java.lang.String r10 = defpackage.C0237Gm.m751if(r3, r4, r5, r6, r7, r8)
                r2.f1239for = r10
                Gm r10 = r2.m759do()
                r1 = 0
                java.lang.String r10 = r10.f1227case
                r0[r1] = r10
                java.lang.String r10 = "OkHttp %s"
                r9.<init>(r10, r0)
                r9.f4283do = r11
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.Vy.Cif.<init>(Vy, no):void");
        }

        @Override // defpackage.AbstractRunnableC0595Wt
        /* renamed from: do, reason: not valid java name */
        public final void mo2681do() {
            A6 a6 = this.f4283do;
            Vy vy = Vy.this;
            Cdo cdo = vy.f4276do;
            C3947wv c3947wv = vy.f4279do;
            cdo.m1385this();
            boolean z = false;
            try {
                try {
                } finally {
                    c3947wv.f16434do.m284new(this);
                }
            } catch (IOException e) {
                e = e;
            } catch (Throwable th) {
                th = th;
            }
            try {
                ((C3410no) a6).m7616if(vy, vy.m2678for());
            } catch (IOException e2) {
                e = e2;
                z = true;
                IOException m2680try = vy.m2680try(e);
                if (z) {
                    Ow.f2691do.mo1707class(4, "Callback failure for " + vy.m2676case(), m2680try);
                } else {
                    vy.f4278do.getClass();
                    ((C3410no) a6).m7615do(vy, m2680try);
                }
            } catch (Throwable th2) {
                th = th2;
                z = true;
                vy.m2677do();
                if (!z) {
                    ((C3410no) a6).m7615do(vy, new IOException("canceled due to " + th));
                }
                throw th;
            }
        }
    }

    public Vy(C3947wv c3947wv, Bz bz, boolean z) {
        this.f4279do = c3947wv;
        this.f4275do = bz;
        this.f4280do = z;
        this.f4277do = new C2618dA(c3947wv);
        Cdo cdo = new Cdo();
        this.f4276do = cdo;
        cdo.mo8083else(c3947wv.f16450for, TimeUnit.MILLISECONDS);
    }

    /* renamed from: new, reason: not valid java name */
    public static Vy m2675new(C3947wv c3947wv, Bz bz, boolean z) {
        Vy vy = new Vy(c3947wv, bz, z);
        vy.f4278do = ((C3814ug) c3947wv.f16447do).f15943do;
        return vy;
    }

    /* renamed from: case, reason: not valid java name */
    public final String m2676case() {
        C0237Gm.Cdo cdo;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4277do.f12435do ? "canceled " : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        sb.append(this.f4280do ? "web socket" : "call");
        sb.append(" to ");
        C0237Gm c0237Gm = this.f4275do.f296do;
        c0237Gm.getClass();
        try {
            cdo = new C0237Gm.Cdo();
            cdo.m760if(c0237Gm, "/...");
        } catch (IllegalArgumentException unused) {
            cdo = null;
        }
        cdo.getClass();
        cdo.f1240if = C0237Gm.m751if(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        cdo.f1239for = C0237Gm.m751if(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        sb.append(cdo.m759do().f1227case);
        return sb.toString();
    }

    public final Object clone() {
        return m2675new(this.f4279do, this.f4275do, this.f4280do);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2677do() {
        InterfaceC4115zm interfaceC4115zm;
        Wy wy;
        C2618dA c2618dA = this.f4277do;
        c2618dA.f12435do = true;
        C3732tF c3732tF = c2618dA.f12433do;
        if (c3732tF != null) {
            synchronized (c3732tF.f15673do) {
                c3732tF.f15679for = true;
                interfaceC4115zm = c3732tF.f15677do;
                wy = c3732tF.f15671do;
            }
            if (interfaceC4115zm != null) {
                interfaceC4115zm.cancel();
            } else if (wy != null) {
                SJ.m2130case(wy.f4419do);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final Tz m2678for() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f4279do.f16451for);
        arrayList.add(this.f4277do);
        arrayList.add(new S5(this.f4279do.f16437do));
        this.f4279do.getClass();
        arrayList.add(new C3723t6());
        arrayList.add(new C3278la(this.f4279do));
        if (!this.f4280do) {
            arrayList.addAll(this.f4279do.f16457new);
        }
        arrayList.add(new C4018y6(this.f4280do));
        Bz bz = this.f4275do;
        AbstractC3755tg abstractC3755tg = this.f4278do;
        C3947wv c3947wv = this.f4279do;
        Tz m2876do = new Xy(arrayList, null, null, null, 0, bz, this, abstractC3755tg, c3947wv.f16456new, c3947wv.f16458try, c3947wv.f16433case).m2876do(bz);
        if (!this.f4277do.f12435do) {
            return m2876do;
        }
        SJ.m2149try(m2876do);
        throw new IOException("Canceled");
    }

    /* renamed from: if, reason: not valid java name */
    public final Tz m2679if() {
        synchronized (this) {
            if (this.f4281if) {
                throw new IllegalStateException("Already Executed");
            }
            this.f4281if = true;
        }
        this.f4277do.f12432do = Ow.f2691do.mo1705break();
        this.f4276do.m1385this();
        this.f4278do.getClass();
        try {
            try {
                this.f4279do.f16434do.m283if(this);
                return m2678for();
            } catch (IOException e) {
                IOException m2680try = m2680try(e);
                this.f4278do.getClass();
                throw m2680try;
            }
        } finally {
            this.f4279do.f16434do.m285try(this);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final IOException m2680try(IOException iOException) {
        if (!this.f4276do.m1382class()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }
}
