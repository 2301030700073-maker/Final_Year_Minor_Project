package defpackage;

import defpackage.C0587Wl;
import defpackage.C3997xm;
import defpackage.InterfaceC3940wo;
import defpackage.Tz;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/* renamed from: lm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3290lm implements InterfaceC4115zm {

    /* renamed from: do, reason: not valid java name */
    public static final List<String> f14233do = SJ.m2136final("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* renamed from: if, reason: not valid java name */
    public static final List<String> f14234if = SJ.m2136final("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3408nm f14235do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EnumC3538py f14236do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3732tF f14237do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3940wo.Cdo f14238do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3997xm f14239do;

    /* renamed from: lm$do, reason: invalid class name */
    public class Cdo extends AbstractC4053yj {

        /* renamed from: do, reason: not valid java name */
        public long f14240do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f14242do;

        public Cdo(C3997xm.Cif cif) {
            super(cif);
            this.f14242do = false;
            this.f14240do = 0L;
        }

        @Override // defpackage.AbstractC4053yj, defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            super.close();
            if (this.f14242do) {
                return;
            }
            this.f14242do = true;
            C3290lm c3290lm = C3290lm.this;
            c3290lm.f14237do.m8239this(false, c3290lm, null);
        }

        @Override // defpackage.KE
        /* renamed from: throw */
        public final long mo631throw(U5 u5, long j) {
            try {
                long mo631throw = ((AbstractC4053yj) this).f16822do.mo631throw(u5, j);
                if (mo631throw > 0) {
                    this.f14240do += mo631throw;
                }
                return mo631throw;
            } catch (IOException e) {
                if (!this.f14242do) {
                    this.f14242do = true;
                    C3290lm c3290lm = C3290lm.this;
                    c3290lm.f14237do.m8239this(false, c3290lm, e);
                }
                throw e;
            }
        }
    }

    public C3290lm(C3947wv c3947wv, Xy xy, C3732tF c3732tF, C3408nm c3408nm) {
        this.f14238do = xy;
        this.f14237do = c3732tF;
        this.f14235do = c3408nm;
        EnumC3538py enumC3538py = EnumC3538py.H2_PRIOR_KNOWLEDGE;
        this.f14236do = c3947wv.f16442do.contains(enumC3538py) ? enumC3538py : EnumC3538py.HTTP_2;
    }

    @Override // defpackage.InterfaceC4115zm
    public final void cancel() {
        C3997xm c3997xm = this.f14239do;
        if (c3997xm == null || !c3997xm.m8666new(6)) {
            return;
        }
        c3997xm.f16601do.m7607const(c3997xm.f16598do, 6);
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: case */
    public final void mo7163case(Bz bz) {
        int i;
        C3997xm c3997xm;
        boolean z;
        if (this.f14239do != null) {
            return;
        }
        boolean z2 = bz.f298do != null;
        C0587Wl c0587Wl = bz.f297do;
        ArrayList arrayList = new ArrayList((c0587Wl.f4398do.length / 2) + 4);
        arrayList.add(new C0565Vl(C0565Vl.f4184try, bz.f299do));
        C3488p6 c3488p6 = C0565Vl.f4179case;
        C0237Gm c0237Gm = bz.f296do;
        arrayList.add(new C0565Vl(c3488p6, Hz.m901do(c0237Gm)));
        String m244do = bz.m244do("Host");
        if (m244do != null) {
            arrayList.add(new C0565Vl(C0565Vl.f4182goto, m244do));
        }
        arrayList.add(new C0565Vl(C0565Vl.f4180else, c0237Gm.f1229do));
        int length = c0587Wl.f4398do.length / 2;
        for (int i2 = 0; i2 < length; i2++) {
            C3488p6 m7786this = C3488p6.m7786this(c0587Wl.m2769new(i2).toLowerCase(Locale.US));
            if (!f14233do.contains(m7786this.mo2900return())) {
                arrayList.add(new C0565Vl(m7786this, c0587Wl.m2767case(i2)));
            }
        }
        C3408nm c3408nm = this.f14235do;
        boolean z3 = !z2;
        synchronized (c3408nm.f14570do) {
            synchronized (c3408nm) {
                if (c3408nm.f14578new > 1073741823) {
                    c3408nm.m7614this(5);
                }
                if (c3408nm.f14577if) {
                    throw new C3396na();
                }
                i = c3408nm.f14578new;
                c3408nm.f14578new = i + 2;
                c3997xm = new C3997xm(i, c3408nm, z3, false, null);
                z = !z2 || c3408nm.f14572else == 0 || c3997xm.f16607if == 0;
                if (c3997xm.m8660case()) {
                    c3408nm.f14564do.put(Integer.valueOf(i), c3997xm);
                }
            }
            c3408nm.f14570do.m8767class(i, arrayList, z3);
        }
        if (z) {
            c3408nm.f14570do.flush();
        }
        this.f14239do = c3997xm;
        C3997xm.Cfor cfor = c3997xm.f16603do;
        long j = ((Xy) this.f14238do).f4624for;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        cfor.mo8083else(j, timeUnit);
        this.f14239do.f16608if.mo8083else(((Xy) this.f14238do).f4626new, timeUnit);
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: do */
    public final void mo7164do() {
        C3997xm c3997xm = this.f14239do;
        synchronized (c3997xm) {
            if (!c3997xm.f16605do && !c3997xm.m8668try()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        c3997xm.f16602do.close();
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: for */
    public final InterfaceC3908wE mo7166for(Bz bz, long j) {
        C3997xm c3997xm = this.f14239do;
        synchronized (c3997xm) {
            if (!c3997xm.f16605do && !c3997xm.m8668try()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return c3997xm.f16602do;
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: if */
    public final Yy mo7168if(Tz tz) {
        this.f14237do.f15675do.getClass();
        String m2300do = tz.m2300do("Content-Type");
        long m292do = C0149Cm.m292do(tz);
        Cdo cdo = new Cdo(this.f14239do.f16604do);
        Logger logger = C0114Av.f168do;
        return new Yy(m2300do, m292do, new Uy(cdo));
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: new */
    public final void mo7169new() {
        this.f14235do.flush();
    }

    @Override // defpackage.InterfaceC4115zm
    /* renamed from: try */
    public final Tz.Cdo mo7171try(boolean z) {
        C0587Wl c0587Wl;
        C3997xm c3997xm = this.f14239do;
        synchronized (c3997xm) {
            c3997xm.f16603do.m1385this();
            while (c3997xm.f16600do.isEmpty() && c3997xm.f16606if == 0) {
                try {
                    c3997xm.m8659break();
                } catch (Throwable th) {
                    c3997xm.f16603do.m8670super();
                    throw th;
                }
            }
            c3997xm.f16603do.m8670super();
            if (c3997xm.f16600do.isEmpty()) {
                throw new C3791uF(c3997xm.f16606if);
            }
            c0587Wl = (C0587Wl) c3997xm.f16600do.removeFirst();
        }
        EnumC3538py enumC3538py = this.f14236do;
        ArrayList arrayList = new ArrayList(20);
        int length = c0587Wl.f4398do.length / 2;
        C3320mF c3320mF = null;
        for (int i = 0; i < length; i++) {
            String m2769new = c0587Wl.m2769new(i);
            String m2767case = c0587Wl.m2767case(i);
            if (m2769new.equals(":status")) {
                c3320mF = C3320mF.m7449do("HTTP/1.1 " + m2767case);
            } else if (!f14234if.contains(m2769new)) {
                AbstractC4058yo.f16832do.getClass();
                arrayList.add(m2769new);
                arrayList.add(m2767case.trim());
            }
        }
        if (c3320mF == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        Tz.Cdo cdo = new Tz.Cdo();
        cdo.f3789do = enumC3538py;
        cdo.f3781do = c3320mF.f14323do;
        cdo.f3788do = c3320mF.f14324do;
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        C0587Wl.Cdo cdo2 = new C0587Wl.Cdo();
        Collections.addAll(cdo2.f4399do, strArr);
        cdo.f3787do = cdo2;
        if (z) {
            AbstractC4058yo.f16832do.getClass();
            if (cdo.f3781do == 100) {
                return null;
            }
        }
        return cdo;
    }
}
