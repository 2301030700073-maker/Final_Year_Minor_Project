package defpackage;

import android.content.Context;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import j$.time.Duration;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: hS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2871hS {

    /* renamed from: do, reason: not valid java name */
    public static C2871hS f13319do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Duration f13320do = Duration.ofMinutes(30);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TS f13321do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TelemetryLoggingClient f13322do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicLong f13323do = new AtomicLong(-1);

    public C2871hS(Context context, TS ts) {
        this.f13322do = TelemetryLogging.getClient(context, TelemetryLoggingOptions.builder().setApi("measurement:api").build());
        this.f13321do = ts;
    }

    /* renamed from: do, reason: not valid java name */
    public static C2871hS m6818do(TS ts) {
        if (f13319do == null) {
            f13319do = new C2871hS(ts.f3688do, ts);
        }
        return f13319do;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033 A[Catch: all -> 0x0068, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:12:0x0033, B:16:0x001a), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031 A[DONT_GENERATE] */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void m6819if(int r22, int r23, long r24, long r26) {
        /*
            r21 = this;
            r1 = r21
            monitor-enter(r21)
            TS r0 = r1.f13321do     // Catch: java.lang.Throwable -> L68
            com.google.android.gms.common.util.Clock r0 = r0.f3692do     // Catch: java.lang.Throwable -> L68
            long r2 = r0.elapsedRealtime()     // Catch: java.lang.Throwable -> L68
            java.util.concurrent.atomic.AtomicLong r0 = r1.f13323do     // Catch: java.lang.Throwable -> L68
            long r4 = r0.get()     // Catch: java.lang.Throwable -> L68
            r6 = -1
            r0 = 1
            r8 = 0
            int r9 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r9 != 0) goto L1a
            goto L2c
        L1a:
            java.util.concurrent.atomic.AtomicLong r4 = r1.f13323do     // Catch: java.lang.Throwable -> L68
            long r4 = r4.get()     // Catch: java.lang.Throwable -> L68
            long r4 = r2 - r4
            j$.time.Duration r6 = defpackage.C2871hS.f13320do     // Catch: java.lang.Throwable -> L68
            long r6 = r6.toMillis()     // Catch: java.lang.Throwable -> L68
            int r9 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r9 <= 0) goto L2e
        L2c:
            r4 = 1
            goto L2f
        L2e:
            r4 = 0
        L2f:
            if (r4 != 0) goto L33
            monitor-exit(r21)
            return
        L33:
            com.google.android.gms.common.internal.TelemetryLoggingClient r4 = r1.f13322do     // Catch: java.lang.Throwable -> L68
            com.google.android.gms.common.internal.TelemetryData r5 = new com.google.android.gms.common.internal.TelemetryData     // Catch: java.lang.Throwable -> L68
            com.google.android.gms.common.internal.MethodInvocation[] r0 = new com.google.android.gms.common.internal.MethodInvocation[r0]     // Catch: java.lang.Throwable -> L68
            com.google.android.gms.common.internal.MethodInvocation r6 = new com.google.android.gms.common.internal.MethodInvocation     // Catch: java.lang.Throwable -> L68
            r10 = 36301(0x8dcd, float:5.0869E-41)
            r12 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r9 = r6
            r11 = r22
            r13 = r24
            r15 = r26
            r20 = r23
            r9.<init>(r10, r11, r12, r13, r15, r17, r18, r19, r20)     // Catch: java.lang.Throwable -> L68
            r0[r8] = r6     // Catch: java.lang.Throwable -> L68
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: java.lang.Throwable -> L68
            r5.<init>(r8, r0)     // Catch: java.lang.Throwable -> L68
            FG r0 = r4.log(r5)     // Catch: java.lang.Throwable -> L68
            gS r4 = new gS     // Catch: java.lang.Throwable -> L68
            r4.<init>()     // Catch: java.lang.Throwable -> L68
            r0.mo601new(r4)     // Catch: java.lang.Throwable -> L68
            monitor-exit(r21)
            return
        L68:
            r0 = move-exception
            monitor-exit(r21)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2871hS.m6819if(int, int, long, long):void");
    }
}
