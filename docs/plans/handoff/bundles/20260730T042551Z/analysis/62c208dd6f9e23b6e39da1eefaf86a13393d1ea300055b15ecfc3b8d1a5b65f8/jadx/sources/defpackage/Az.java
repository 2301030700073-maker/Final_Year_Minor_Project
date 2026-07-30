package defpackage;

import android.os.SystemClock;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class Az {

    /* renamed from: do, reason: not valid java name */
    public final double f174do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f175do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f176do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0327Ko f177do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayBlockingQueue f178do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ThreadPoolExecutor f179do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3617rI<AbstractC0533Ub> f180do;

    /* renamed from: for, reason: not valid java name */
    public long f181for;

    /* renamed from: if, reason: not valid java name */
    public final double f182if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f183if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f184if;

    /* renamed from: Az$do, reason: invalid class name */
    public final class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final GG<AbstractC0700ac> f186do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final AbstractC0700ac f187do;

        public Cdo(AbstractC0700ac abstractC0700ac, GG gg) {
            this.f187do = abstractC0700ac;
            this.f186do = gg;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Az az = Az.this;
            AbstractC0700ac abstractC0700ac = this.f187do;
            az.m135if(abstractC0700ac, this.f186do);
            ((AtomicInteger) az.f177do.f1882if).set(0);
            double min = Math.min(3600000.0d, Math.pow(az.f182if, az.m134do()) * (60000.0d / az.f174do));
            String.format(Locale.US, "%.2f", Double.valueOf(min / 1000.0d));
            abstractC0700ac.mo3135for();
            try {
                Thread.sleep((long) min);
            } catch (InterruptedException unused) {
            }
        }
    }

    public Az(InterfaceC3617rI<AbstractC0533Ub> interfaceC3617rI, C2621dD c2621dD, C0327Ko c0327Ko) {
        double d = c2621dD.f12445do;
        this.f174do = d;
        this.f182if = c2621dD.f12450if;
        this.f176do = c2621dD.f12446do * 1000;
        this.f180do = interfaceC3617rI;
        this.f177do = c0327Ko;
        this.f184if = SystemClock.elapsedRealtime();
        int i = (int) d;
        this.f175do = i;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i);
        this.f178do = arrayBlockingQueue;
        this.f179do = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, arrayBlockingQueue);
        this.f183if = 0;
        this.f181for = 0L;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m134do() {
        if (this.f181for == 0) {
            this.f181for = System.currentTimeMillis();
        }
        int currentTimeMillis = (int) ((System.currentTimeMillis() - this.f181for) / this.f176do);
        int min = this.f178do.size() == this.f175do ? Math.min(100, this.f183if + currentTimeMillis) : Math.max(0, this.f183if - currentTimeMillis);
        if (this.f183if != min) {
            this.f183if = min;
            this.f181for = System.currentTimeMillis();
        }
        return min;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m135if(final AbstractC0700ac abstractC0700ac, final GG<AbstractC0700ac> gg) {
        abstractC0700ac.mo3135for();
        final boolean z = SystemClock.elapsedRealtime() - this.f184if < 2000;
        ((C3971xI) this.f180do).m8640do(new V3(abstractC0700ac.mo3134do(), Ex.HIGHEST, null), new EI() { // from class: zz
            /* JADX WARN: Removed duplicated region for block: B:24:0x0054  */
            @Override // defpackage.EI
            /* renamed from: case */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void mo444case(java.lang.Exception r9) {
                /*
                    r8 = this;
                    Az r0 = defpackage.Az.this
                    r0.getClass()
                    GG r1 = r2
                    if (r9 == 0) goto Ld
                    r1.m720for(r9)
                    goto L61
                Ld:
                    boolean r9 = r3
                    if (r9 == 0) goto L5c
                    java.util.concurrent.CountDownLatch r9 = new java.util.concurrent.CountDownLatch
                    r2 = 1
                    r9.<init>(r2)
                    java.lang.Thread r3 = new java.lang.Thread
                    Hl r4 = new Hl
                    r4.<init>(r2, r0, r9)
                    r3.<init>(r4)
                    r3.start()
                    java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
                    java.util.concurrent.ExecutorService r3 = defpackage.C0804cK.f8521do
                    r3 = 0
                    r4 = 2
                    long r4 = r0.toNanos(r4)     // Catch: java.lang.Throwable -> L50
                    long r6 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L50
                    long r6 = r6 + r4
                L34:
                    java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.Throwable -> L43 java.lang.InterruptedException -> L46
                    r9.await(r4, r0)     // Catch: java.lang.Throwable -> L43 java.lang.InterruptedException -> L46
                    if (r3 == 0) goto L5c
                    java.lang.Thread r9 = java.lang.Thread.currentThread()
                    r9.interrupt()
                    goto L5c
                L43:
                    r9 = move-exception
                    r2 = r3
                    goto L52
                L46:
                    long r3 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L4e
                    long r4 = r6 - r3
                    r3 = 1
                    goto L34
                L4e:
                    r9 = move-exception
                    goto L52
                L50:
                    r9 = move-exception
                    r2 = 0
                L52:
                    if (r2 == 0) goto L5b
                    java.lang.Thread r0 = java.lang.Thread.currentThread()
                    r0.interrupt()
                L5b:
                    throw r9
                L5c:
                    ac r9 = r4
                    r1.m722new(r9)
                L61:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.C4128zz.mo444case(java.lang.Exception):void");
            }
        });
    }
}
