package defpackage;

import com.google.android.gms.common.api.Api;
import defpackage.C3732tF;
import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: ma, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3337ma {

    /* renamed from: do, reason: not valid java name */
    public static final ThreadPoolExecutor f14354do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f14355do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f14356do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayDeque f14357do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f14358do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3576qd f14359do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14360do;

    /* renamed from: ma$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            while (true) {
                long m7457do = C3337ma.this.m7457do(System.nanoTime());
                if (m7457do == -1) {
                    return;
                }
                if (m7457do > 0) {
                    long j = m7457do / 1000000;
                    long j2 = m7457do - (1000000 * j);
                    synchronized (C3337ma.this) {
                        try {
                            C3337ma.this.wait(j, (int) j2);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        SynchronousQueue synchronousQueue = new SynchronousQueue();
        byte[] bArr = SJ.f3495do;
        f14354do = new ThreadPoolExecutor(0, Api.BaseClientBuilder.API_PRIORITY_OTHER, 60L, timeUnit, synchronousQueue, new RJ("OkHttp ConnectionPool", true));
    }

    public C3337ma() {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        this.f14358do = new Cdo();
        this.f14357do = new ArrayDeque();
        this.f14359do = new C3576qd(6);
        this.f14355do = 5;
        this.f14356do = timeUnit.toNanos(5L);
    }

    /* renamed from: do, reason: not valid java name */
    public final long m7457do(long j) {
        synchronized (this) {
            Iterator it = this.f14357do.iterator();
            Wy wy = null;
            long j2 = Long.MIN_VALUE;
            int i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                Wy wy2 = (Wy) it.next();
                if (m7458if(wy2, j) > 0) {
                    i2++;
                } else {
                    i++;
                    long j3 = j - wy2.f4414do;
                    if (j3 > j2) {
                        wy = wy2;
                        j2 = j3;
                    }
                }
            }
            long j4 = this.f14356do;
            if (j2 < j4 && i <= this.f14355do) {
                if (i > 0) {
                    return j4 - j2;
                }
                if (i2 > 0) {
                    return j4;
                }
                this.f14360do = false;
                return -1L;
            }
            this.f14357do.remove(wy);
            SJ.m2130case(wy.f4426if);
            return 0L;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final int m7458if(Wy wy, long j) {
        ArrayList arrayList = wy.f4420do;
        int i = 0;
        while (i < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                Ow.f2691do.mo1708const(((C3732tF.Cdo) reference).f15681do, "A connection to " + wy.f4415do.f2870do.f15178do + " was leaked. Did you forget to close a response body?");
                arrayList.remove(i);
                wy.f4424do = true;
                if (arrayList.isEmpty()) {
                    wy.f4414do = j - this.f14356do;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }
}
