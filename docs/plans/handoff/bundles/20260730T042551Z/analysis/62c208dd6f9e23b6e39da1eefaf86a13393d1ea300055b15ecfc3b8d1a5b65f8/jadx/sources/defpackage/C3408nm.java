package defpackage;

import com.google.android.gms.common.api.Api;
import defpackage.By;
import defpackage.C3938wm;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: nm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3408nm implements Closeable {

    /* renamed from: if, reason: not valid java name */
    public static final ThreadPoolExecutor f14557if;

    /* renamed from: break, reason: not valid java name */
    public final String f14558break;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final By.Cdo f14561do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final M4 f14562do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Socket f14563do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet f14565do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledThreadPoolExecutor f14566do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ThreadPoolExecutor f14567do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f14568do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f14569do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4056ym f14570do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f14571do;

    /* renamed from: else, reason: not valid java name */
    public long f14572else;

    /* renamed from: for, reason: not valid java name */
    public int f14573for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final M4 f14576if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f14577if;

    /* renamed from: new, reason: not valid java name */
    public int f14578new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashMap f14564do = new LinkedHashMap();

    /* renamed from: do, reason: not valid java name */
    public long f14560do = 0;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public long f14575if = 0;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public long f14574for = 0;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public long f14579new = 0;

    /* renamed from: try, reason: not valid java name */
    public long f14580try = 0;

    /* renamed from: case, reason: not valid java name */
    public long f14559case = 0;

    /* renamed from: nm$case, reason: invalid class name */
    public class Ccase extends AbstractRunnableC0595Wt implements C3938wm.Cif {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C3938wm f14582do;

        public Ccase(C3938wm c3938wm) {
            super("OkHttp %s", C3408nm.this.f14558break);
            this.f14582do = c3938wm;
        }

        @Override // defpackage.AbstractRunnableC0595Wt
        /* renamed from: do */
        public final void mo2681do() {
            C3408nm c3408nm = C3408nm.this;
            C3938wm c3938wm = this.f14582do;
            try {
                try {
                    c3938wm.m8587for(this);
                    do {
                    } while (c3938wm.m8589if(false, this));
                    c3408nm.m7608do(1, 6);
                } catch (IOException unused) {
                    c3408nm.m7608do(2, 2);
                } catch (Throwable th) {
                    try {
                        c3408nm.m7608do(3, 3);
                    } catch (IOException unused2) {
                    }
                    SJ.m2149try(c3938wm);
                    throw th;
                }
            } catch (IOException unused3) {
            }
            SJ.m2149try(c3938wm);
        }
    }

    /* renamed from: nm$do, reason: invalid class name */
    public class Cdo extends AbstractRunnableC0595Wt {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long f14583do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f14585for;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Object[] objArr, int i, long j) {
            super("OkHttp Window Update %s stream %d", objArr);
            this.f14585for = i;
            this.f14583do = j;
        }

        @Override // defpackage.AbstractRunnableC0595Wt
        /* renamed from: do */
        public final void mo2681do() {
            C3408nm c3408nm = C3408nm.this;
            try {
                c3408nm.f14570do.m8768const(this.f14585for, this.f14583do);
            } catch (IOException unused) {
                c3408nm.m7611if();
            }
        }
    }

    /* renamed from: nm$for, reason: invalid class name */
    public final class Cfor extends AbstractRunnableC0595Wt {
        public Cfor() {
            super("OkHttp %s ping", C3408nm.this.f14558break);
        }

        @Override // defpackage.AbstractRunnableC0595Wt
        /* renamed from: do */
        public final void mo2681do() {
            C3408nm c3408nm;
            boolean z;
            synchronized (C3408nm.this) {
                c3408nm = C3408nm.this;
                long j = c3408nm.f14575if;
                long j2 = c3408nm.f14560do;
                if (j < j2) {
                    z = true;
                } else {
                    c3408nm.f14560do = j2 + 1;
                    z = false;
                }
            }
            try {
                if (z) {
                    c3408nm.m7608do(2, 2);
                } else {
                    try {
                        c3408nm.f14570do.m8771goto(1, 0, false);
                    } catch (IOException unused) {
                        c3408nm.m7608do(2, 2);
                    }
                }
            } catch (IOException unused2) {
            }
        }
    }

    /* renamed from: nm$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public int f14587do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Z5 f14588do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public InterfaceC0671a6 f14589do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f14590do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Socket f14591do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cnew f14592do = Cnew.f14593do;
    }

    /* renamed from: nm$new, reason: invalid class name */
    public static abstract class Cnew {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f14593do = new Cdo();

        /* renamed from: nm$new$do, reason: invalid class name */
        public class Cdo extends Cnew {
            @Override // defpackage.C3408nm.Cnew
            /* renamed from: if */
            public final void mo2788if(C3997xm c3997xm) {
                c3997xm.m8663for(5);
            }
        }

        /* renamed from: do */
        public void mo2784do(C3408nm c3408nm) {
        }

        /* renamed from: if */
        public abstract void mo2788if(C3997xm c3997xm);
    }

    /* renamed from: nm$try, reason: invalid class name */
    public final class Ctry extends AbstractRunnableC0595Wt {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f14595do;

        /* renamed from: for, reason: not valid java name */
        public final int f14596for;

        /* renamed from: new, reason: not valid java name */
        public final int f14597new;

        public Ctry(int i, int i2) {
            super("OkHttp %s ping %08x%08x", C3408nm.this.f14558break, Integer.valueOf(i), Integer.valueOf(i2));
            this.f14595do = true;
            this.f14596for = i;
            this.f14597new = i2;
        }

        @Override // defpackage.AbstractRunnableC0595Wt
        /* renamed from: do */
        public final void mo2681do() {
            int i = this.f14596for;
            int i2 = this.f14597new;
            boolean z = this.f14595do;
            C3408nm c3408nm = C3408nm.this;
            c3408nm.getClass();
            try {
                c3408nm.f14570do.m8771goto(i, i2, z);
            } catch (IOException unused) {
                try {
                    c3408nm.m7608do(2, 2);
                } catch (IOException unused2) {
                }
            }
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        SynchronousQueue synchronousQueue = new SynchronousQueue();
        byte[] bArr = SJ.f3495do;
        f14557if = new ThreadPoolExecutor(0, Api.BaseClientBuilder.API_PRIORITY_OTHER, 60L, timeUnit, synchronousQueue, new RJ("OkHttp Http2Connection", true));
    }

    public C3408nm(Cif cif) {
        M4 m4 = new M4();
        this.f14562do = m4;
        M4 m42 = new M4();
        this.f14576if = m42;
        this.f14565do = new LinkedHashSet();
        this.f14561do = By.f295do;
        this.f14571do = true;
        this.f14569do = cif.f14592do;
        this.f14578new = 3;
        m4.m1392if(7, 16777216);
        String str = cif.f14590do;
        this.f14558break = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new RJ(SJ.m2132class("OkHttp %s Writer", str), false));
        this.f14566do = scheduledThreadPoolExecutor;
        if (cif.f14587do != 0) {
            Cfor cfor = new Cfor();
            long j = cif.f14587do;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(cfor, j, j, TimeUnit.MILLISECONDS);
        }
        this.f14567do = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new RJ(SJ.m2132class("OkHttp %s Push Observer", str), true));
        m42.m1392if(7, 65535);
        m42.m1392if(5, 16384);
        this.f14572else = m42.m1391do();
        this.f14563do = cif.f14591do;
        this.f14570do = new C4056ym(cif.f14588do, true);
        this.f14568do = new Ccase(new C3938wm(cif.f14589do, true));
    }

    /* renamed from: break, reason: not valid java name */
    public final synchronized void m7604break(long j) {
        long j2 = this.f14559case + j;
        this.f14559case = j2;
        if (j2 >= this.f14562do.m1391do() / 2) {
            m7613public(0, this.f14559case);
            this.f14559case = 0L;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final synchronized void m7605case(AbstractRunnableC0595Wt abstractRunnableC0595Wt) {
        if (!this.f14577if) {
            this.f14567do.execute(abstractRunnableC0595Wt);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r3), r8.f14570do.f16829for);
        r6 = r3;
        r8.f14572else -= r6;
     */
    /* renamed from: class, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7606class(int r9, boolean r10, defpackage.U5 r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 != 0) goto Ld
            ym r12 = r8.f14570do
            r12.m8772if(r10, r9, r11, r0)
            return
        Ld:
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 <= 0) goto L65
            monitor-enter(r8)
        L12:
            long r3 = r8.f14572else     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 > 0) goto L30
            java.util.LinkedHashMap r3 = r8.f14564do     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            boolean r3 = r3.containsKey(r4)     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            if (r3 == 0) goto L28
            r8.wait()     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            goto L12
        L28:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
            throw r9     // Catch: java.lang.Throwable -> L54 java.lang.InterruptedException -> L56
        L30:
            long r3 = java.lang.Math.min(r12, r3)     // Catch: java.lang.Throwable -> L54
            int r4 = (int) r3     // Catch: java.lang.Throwable -> L54
            ym r3 = r8.f14570do     // Catch: java.lang.Throwable -> L54
            int r3 = r3.f16829for     // Catch: java.lang.Throwable -> L54
            int r3 = java.lang.Math.min(r4, r3)     // Catch: java.lang.Throwable -> L54
            long r4 = r8.f14572else     // Catch: java.lang.Throwable -> L54
            long r6 = (long) r3     // Catch: java.lang.Throwable -> L54
            long r4 = r4 - r6
            r8.f14572else = r4     // Catch: java.lang.Throwable -> L54
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L54
            long r12 = r12 - r6
            ym r4 = r8.f14570do
            if (r10 == 0) goto L4f
            int r5 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r5 != 0) goto L4f
            r5 = 1
            goto L50
        L4f:
            r5 = 0
        L50:
            r4.m8772if(r5, r9, r11, r3)
            goto Ld
        L54:
            r9 = move-exception
            goto L63
        L56:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L54
            r9.interrupt()     // Catch: java.lang.Throwable -> L54
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L54
            r9.<init>()     // Catch: java.lang.Throwable -> L54
            throw r9     // Catch: java.lang.Throwable -> L54
        L63:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L54
            throw r9
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3408nm.m7606class(int, boolean, U5, long):void");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m7608do(1, 6);
    }

    /* renamed from: const, reason: not valid java name */
    public final void m7607const(int i, int i2) {
        try {
            this.f14566do.execute(new C3349mm(this, new Object[]{this.f14558break, Integer.valueOf(i)}, i, i2));
        } catch (RejectedExecutionException unused) {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7608do(int i, int i2) {
        C3997xm[] c3997xmArr = null;
        try {
            m7614this(i);
            e = null;
        } catch (IOException e) {
            e = e;
        }
        synchronized (this) {
            if (!this.f14564do.isEmpty()) {
                c3997xmArr = (C3997xm[]) this.f14564do.values().toArray(new C3997xm[this.f14564do.size()]);
                this.f14564do.clear();
            }
        }
        if (c3997xmArr != null) {
            for (C3997xm c3997xm : c3997xmArr) {
                try {
                    c3997xm.m8663for(i2);
                } catch (IOException e2) {
                    if (e != null) {
                        e = e2;
                    }
                }
            }
        }
        try {
            this.f14570do.close();
        } catch (IOException e3) {
            if (e == null) {
                e = e3;
            }
        }
        try {
            this.f14563do.close();
        } catch (IOException e4) {
            e = e4;
        }
        this.f14566do.shutdown();
        this.f14567do.shutdown();
        if (e != null) {
            throw e;
        }
    }

    public final void flush() {
        this.f14570do.flush();
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized C3997xm m7609for(int i) {
        return (C3997xm) this.f14564do.get(Integer.valueOf(i));
    }

    /* renamed from: goto, reason: not valid java name */
    public final synchronized C3997xm m7610goto(int i) {
        C3997xm c3997xm;
        c3997xm = (C3997xm) this.f14564do.remove(Integer.valueOf(i));
        notifyAll();
        return c3997xm;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7611if() {
        try {
            m7608do(2, 2);
        } catch (IOException unused) {
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final synchronized int m7612new() {
        M4 m4;
        m4 = this.f14576if;
        return (m4.f2094do & 16) != 0 ? ((int[]) m4.f2095do)[4] : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m7613public(int i, long j) {
        try {
            this.f14566do.execute(new Cdo(new Object[]{this.f14558break, Integer.valueOf(i)}, i, j));
        } catch (RejectedExecutionException unused) {
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m7614this(int i) {
        synchronized (this.f14570do) {
            synchronized (this) {
                if (this.f14577if) {
                    return;
                }
                this.f14577if = true;
                this.f14570do.m8773new(this.f14573for, i, SJ.f3495do);
            }
        }
    }
}
