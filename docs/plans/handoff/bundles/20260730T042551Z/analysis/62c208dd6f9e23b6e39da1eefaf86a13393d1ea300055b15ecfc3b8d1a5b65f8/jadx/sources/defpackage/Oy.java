package defpackage;

import android.content.Context;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.util.Timer;
import com.google.protobuf.Ccatch;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class Oy {

    /* renamed from: do, reason: not valid java name */
    public final double f2694do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final L9 f2695do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f2696do;

    /* renamed from: if, reason: not valid java name */
    public final double f2697if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Cdo f2698if;

    /* renamed from: Oy$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Q0 f2699do = Q0.m1818new();

        /* renamed from: new, reason: not valid java name */
        public static final long f2700new = TimeUnit.SECONDS.toMicros(1);

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public My f2703do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final QJ f2704do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f2706do;

        /* renamed from: for, reason: not valid java name */
        public long f2707for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public My f2708for;

        /* renamed from: if, reason: not valid java name */
        public long f2709if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public My f2710if;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f2702do = 500;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public double f2701do = 500;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Timer f2705do = new Timer();

        public Cdo(My my, QJ qj, L9 l9, String str) {
            X9 x9;
            long longValue;
            this.f2704do = qj;
            this.f2703do = my;
            long m1290class = str == "Trace" ? l9.m1290class() : l9.m1290class();
            if (str == "Trace") {
                longValue = l9.m1303while();
            } else {
                synchronized (X9.class) {
                    if (X9.f4467do == null) {
                        X9.f4467do = new X9();
                    }
                    x9 = X9.f4467do;
                }
                C2779fw<Long> m1291const = l9.m1291const(x9);
                if (m1291const.m6695if() && L9.m1282import(m1291const.m6694do().longValue())) {
                    l9.f1932do.m6823for(m1291const.m6694do().longValue(), "com.google.firebase.perf.NetworkEventCountForeground");
                    longValue = m1291const.m6694do().longValue();
                } else {
                    C2779fw<Long> m1295for = l9.m1295for(x9);
                    if (m1295for.m6695if() && L9.m1282import(m1295for.m6694do().longValue())) {
                        longValue = m1295for.m6694do().longValue();
                    } else {
                        Long l = 700L;
                        longValue = l.longValue();
                    }
                }
            }
            TimeUnit timeUnit = TimeUnit.SECONDS;
            this.f2710if = new My(longValue, m1290class, timeUnit);
            this.f2709if = longValue;
            long m1290class2 = str == "Trace" ? l9.m1290class() : l9.m1290class();
            long m1718for = m1718for(l9, str);
            this.f2708for = new My(m1718for, m1290class2, timeUnit);
            this.f2707for = m1718for;
            this.f2706do = false;
        }

        /* renamed from: for, reason: not valid java name */
        public static long m1718for(L9 l9, String str) {
            W9 w9;
            if (str == "Trace") {
                return l9.m1302throw();
            }
            l9.getClass();
            synchronized (W9.class) {
                if (W9.f4343do == null) {
                    W9.f4343do = new W9();
                }
                w9 = W9.f4343do;
            }
            C2779fw<Long> m1291const = l9.m1291const(w9);
            if (m1291const.m6695if() && L9.m1282import(m1291const.m6694do().longValue())) {
                l9.f1932do.m6823for(m1291const.m6694do().longValue(), "com.google.firebase.perf.NetworkEventCountBackground");
                return m1291const.m6694do().longValue();
            }
            C2779fw<Long> m1295for = l9.m1295for(w9);
            if (m1295for.m6695if() && L9.m1282import(m1295for.m6694do().longValue())) {
                return m1295for.m6694do().longValue();
            }
            Long l = 70L;
            return l.longValue();
        }

        /* renamed from: do, reason: not valid java name */
        public final synchronized void m1719do(boolean z) {
            this.f2703do = z ? this.f2710if : this.f2708for;
            this.f2702do = z ? this.f2709if : this.f2707for;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0068 A[Catch: all -> 0x008f, TryCatch #0 {, blocks: (B:3:0x0001, B:9:0x0034, B:10:0x005c, B:12:0x0068, B:13:0x0076, B:15:0x007e, B:19:0x0083, B:21:0x0087, B:24:0x003c, B:25:0x0059, B:26:0x0046, B:27:0x0050), top: B:2:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x007e A[Catch: all -> 0x008f, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:9:0x0034, B:10:0x005c, B:12:0x0068, B:13:0x0076, B:15:0x007e, B:19:0x0083, B:21:0x0087, B:24:0x003c, B:25:0x0059, B:26:0x0046, B:27:0x0050), top: B:2:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0083 A[Catch: all -> 0x008f, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:9:0x0034, B:10:0x005c, B:12:0x0068, B:13:0x0076, B:15:0x007e, B:19:0x0083, B:21:0x0087, B:24:0x003c, B:25:0x0059, B:26:0x0046, B:27:0x0050), top: B:2:0x0001 }] */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final synchronized boolean m1720if() {
            /*
                r13 = this;
                monitor-enter(r13)
                QJ r0 = r13.f2704do     // Catch: java.lang.Throwable -> L8f
                r0.getClass()     // Catch: java.lang.Throwable -> L8f
                com.google.firebase.perf.util.Timer r0 = new com.google.firebase.perf.util.Timer     // Catch: java.lang.Throwable -> L8f
                r0.<init>()     // Catch: java.lang.Throwable -> L8f
                com.google.firebase.perf.util.Timer r1 = r13.f2705do     // Catch: java.lang.Throwable -> L8f
                r1.getClass()     // Catch: java.lang.Throwable -> L8f
                long r2 = r0.f11972if     // Catch: java.lang.Throwable -> L8f
                long r4 = r1.f11972if     // Catch: java.lang.Throwable -> L8f
                long r2 = r2 - r4
                double r1 = (double) r2     // Catch: java.lang.Throwable -> L8f
                My r3 = r13.f2703do     // Catch: java.lang.Throwable -> L8f
                r3.getClass()     // Catch: java.lang.Throwable -> L8f
                int[] r4 = defpackage.My.Cdo.f2279do     // Catch: java.lang.Throwable -> L8f
                java.util.concurrent.TimeUnit r5 = r3.f2277do     // Catch: java.lang.Throwable -> L8f
                int r6 = r5.ordinal()     // Catch: java.lang.Throwable -> L8f
                r4 = r4[r6]     // Catch: java.lang.Throwable -> L8f
                long r6 = r3.f2278if     // Catch: java.lang.Throwable -> L8f
                long r8 = r3.f2276do     // Catch: java.lang.Throwable -> L8f
                r3 = 1
                r10 = 1
                if (r4 == r3) goto L50
                r12 = 2
                if (r4 == r12) goto L46
                r12 = 3
                if (r4 == r12) goto L3c
                double r8 = (double) r8     // Catch: java.lang.Throwable -> L8f
                long r4 = r5.toSeconds(r6)     // Catch: java.lang.Throwable -> L8f
                double r4 = (double) r4     // Catch: java.lang.Throwable -> L8f
                double r8 = r8 / r4
                goto L5c
            L3c:
                double r4 = (double) r8     // Catch: java.lang.Throwable -> L8f
                double r6 = (double) r6     // Catch: java.lang.Throwable -> L8f
                double r4 = r4 / r6
                java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L8f
                long r6 = r6.toMillis(r10)     // Catch: java.lang.Throwable -> L8f
                goto L59
            L46:
                double r4 = (double) r8     // Catch: java.lang.Throwable -> L8f
                double r6 = (double) r6     // Catch: java.lang.Throwable -> L8f
                double r4 = r4 / r6
                java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L8f
                long r6 = r6.toMicros(r10)     // Catch: java.lang.Throwable -> L8f
                goto L59
            L50:
                double r4 = (double) r8     // Catch: java.lang.Throwable -> L8f
                double r6 = (double) r6     // Catch: java.lang.Throwable -> L8f
                double r4 = r4 / r6
                java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L8f
                long r6 = r6.toNanos(r10)     // Catch: java.lang.Throwable -> L8f
            L59:
                double r6 = (double) r6     // Catch: java.lang.Throwable -> L8f
                double r8 = r4 * r6
            L5c:
                double r1 = r1 * r8
                long r4 = defpackage.Oy.Cdo.f2700new     // Catch: java.lang.Throwable -> L8f
                double r4 = (double) r4     // Catch: java.lang.Throwable -> L8f
                double r1 = r1 / r4
                r4 = 0
                int r6 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                if (r6 <= 0) goto L76
                double r4 = r13.f2701do     // Catch: java.lang.Throwable -> L8f
                double r4 = r4 + r1
                long r1 = r13.f2702do     // Catch: java.lang.Throwable -> L8f
                double r1 = (double) r1     // Catch: java.lang.Throwable -> L8f
                double r1 = java.lang.Math.min(r4, r1)     // Catch: java.lang.Throwable -> L8f
                r13.f2701do = r1     // Catch: java.lang.Throwable -> L8f
                r13.f2705do = r0     // Catch: java.lang.Throwable -> L8f
            L76:
                double r0 = r13.f2701do     // Catch: java.lang.Throwable -> L8f
                r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
                int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
                if (r2 < 0) goto L83
                double r0 = r0 - r4
                r13.f2701do = r0     // Catch: java.lang.Throwable -> L8f
                monitor-exit(r13)
                return r3
            L83:
                boolean r0 = r13.f2706do     // Catch: java.lang.Throwable -> L8f
                if (r0 == 0) goto L8c
                Q0 r0 = defpackage.Oy.Cdo.f2699do     // Catch: java.lang.Throwable -> L8f
                r0.m1819case()     // Catch: java.lang.Throwable -> L8f
            L8c:
                monitor-exit(r13)
                r0 = 0
                return r0
            L8f:
                r0 = move-exception
                monitor-exit(r13)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.Oy.Cdo.m1720if():boolean");
        }
    }

    public Oy(Context context, My my) {
        QJ qj = new QJ(17);
        double nextDouble = new Random().nextDouble();
        double nextDouble2 = new Random().nextDouble();
        L9 m1286try = L9.m1286try();
        this.f2696do = null;
        this.f2698if = null;
        if (!(0.0d <= nextDouble && nextDouble < 1.0d)) {
            throw new IllegalArgumentException("Sampling bucket ID should be in range [0.0, 1.0).");
        }
        if (!(0.0d <= nextDouble2 && nextDouble2 < 1.0d)) {
            throw new IllegalArgumentException("Fragment sampling bucket ID should be in range [0.0, 1.0).");
        }
        this.f2694do = nextDouble;
        this.f2697if = nextDouble2;
        this.f2695do = m1286try;
        this.f2696do = new Cdo(my, qj, m1286try, "Trace");
        this.f2698if = new Cdo(my, qj, m1286try, "Network");
        C0685aK.m3118do(context);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m1715do(Ccatch.Cfor cfor) {
        return cfor.size() > 0 && ((Hw) cfor.get(0)).m900protected() > 0 && ((Hw) cfor.get(0)).m899interface() == QC.GAUGES_AND_SYSTEM_EVENTS;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m1716for() {
        Y9 y9;
        double doubleValue;
        L9 l9 = this.f2695do;
        l9.getClass();
        synchronized (Y9.class) {
            if (Y9.f4667do == null) {
                Y9.f4667do = new Y9();
            }
            y9 = Y9.f4667do;
        }
        RemoteConfigManager remoteConfigManager = l9.f1931do;
        y9.getClass();
        C2779fw<Double> c2779fw = remoteConfigManager.getDouble("fpr_vc_network_request_sampling_rate");
        if (c2779fw.m6695if() && L9.m1285static(c2779fw.m6694do().doubleValue())) {
            l9.f1932do.m6825new("com.google.firebase.perf.NetworkRequestSamplingRate", c2779fw.m6694do().doubleValue());
            doubleValue = c2779fw.m6694do().doubleValue();
        } else {
            C2779fw<Double> m1297if = l9.m1297if(y9);
            doubleValue = (m1297if.m6695if() && L9.m1285static(m1297if.m6694do().doubleValue())) ? m1297if.m6694do().doubleValue() : l9.f1931do.isLastFetchFailed() ? Double.valueOf(Double.valueOf(1.0d).doubleValue() / 1000.0d).doubleValue() : Double.valueOf(1.0d).doubleValue();
        }
        return this.f2694do < doubleValue;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (defpackage.L9.m1285static(r3) != false) goto L25;
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1717if() {
        /*
            r7 = this;
            L9 r0 = r7.f2695do
            r0.getClass()
            java.lang.Class<U9> r1 = defpackage.U9.class
            monitor-enter(r1)
            U9 r2 = defpackage.U9.f3840do     // Catch: java.lang.Throwable -> La7
            if (r2 != 0) goto L13
            U9 r2 = new U9     // Catch: java.lang.Throwable -> La7
            r2.<init>()     // Catch: java.lang.Throwable -> La7
            defpackage.U9.f3840do = r2     // Catch: java.lang.Throwable -> La7
        L13:
            U9 r2 = defpackage.U9.f3840do     // Catch: java.lang.Throwable -> La7
            monitor-exit(r1)
            fw r1 = r0.m1287break(r2)
            boolean r3 = r1.m6695if()
            if (r3 == 0) goto L34
            java.lang.Object r1 = r1.m6694do()
            java.lang.Double r1 = (java.lang.Double) r1
            double r3 = r1.doubleValue()
            r5 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r3 = r3 / r5
            boolean r1 = defpackage.L9.m1285static(r3)
            if (r1 == 0) goto L34
            goto L9d
        L34:
            com.google.firebase.perf.config.RemoteConfigManager r1 = r0.f1931do
            java.lang.String r3 = "fpr_vc_fragment_sampling_rate"
            fw r1 = r1.getDouble(r3)
            boolean r3 = r1.m6695if()
            if (r3 == 0) goto L6e
            java.lang.Object r3 = r1.m6694do()
            java.lang.Double r3 = (java.lang.Double) r3
            double r3 = r3.doubleValue()
            boolean r3 = defpackage.L9.m1285static(r3)
            if (r3 == 0) goto L6e
            he r0 = r0.f1932do
            java.lang.String r2 = "com.google.firebase.perf.FragmentSamplingRate"
            java.lang.Object r3 = r1.m6694do()
            java.lang.Double r3 = (java.lang.Double) r3
            double r3 = r3.doubleValue()
            r0.m6825new(r2, r3)
            java.lang.Object r0 = r1.m6694do()
            java.lang.Double r0 = (java.lang.Double) r0
            double r3 = r0.doubleValue()
            goto L9d
        L6e:
            fw r0 = r0.m1297if(r2)
            boolean r1 = r0.m6695if()
            if (r1 == 0) goto L93
            java.lang.Object r1 = r0.m6694do()
            java.lang.Double r1 = (java.lang.Double) r1
            double r1 = r1.doubleValue()
            boolean r1 = defpackage.L9.m1285static(r1)
            if (r1 == 0) goto L93
            java.lang.Object r0 = r0.m6694do()
            java.lang.Double r0 = (java.lang.Double) r0
            double r3 = r0.doubleValue()
            goto L9d
        L93:
            r0 = 0
            java.lang.Double r0 = java.lang.Double.valueOf(r0)
            double r3 = r0.doubleValue()
        L9d:
            double r0 = r7.f2697if
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 >= 0) goto La5
            r0 = 1
            goto La6
        La5:
            r0 = 0
        La6:
            return r0
        La7:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Oy.m1717if():boolean");
    }
}
