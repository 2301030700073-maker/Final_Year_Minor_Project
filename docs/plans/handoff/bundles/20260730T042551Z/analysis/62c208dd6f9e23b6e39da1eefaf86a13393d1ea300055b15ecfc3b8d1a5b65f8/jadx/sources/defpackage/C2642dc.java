package defpackage;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: dc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2642dc implements Thread.UncaughtExceptionHandler {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0467Rb f12510do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f12511do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Thread.UncaughtExceptionHandler f12512do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f12513do = new AtomicBoolean(false);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3200kD f12514do;

    /* renamed from: dc$do, reason: invalid class name */
    public interface Cdo {
    }

    public C2642dc(C0226Gb c0226Gb, C2856hD c2856hD, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, InterfaceC0467Rb interfaceC0467Rb) {
        this.f12511do = c0226Gb;
        this.f12514do = c2856hD;
        this.f12512do = uncaughtExceptionHandler;
        this.f12510do = interfaceC0467Rb;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0044, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
    
        java.lang.System.exit(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0028, code lost:
    
        if (r2 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0038, code lost:
    
        if (r2 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003a, code lost:
    
        r2.uncaughtException(r7, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0041, code lost:
    
        r0.set(false);
     */
    /* JADX WARN: Removed duplicated region for block: B:5:0x001c A[Catch: all -> 0x0026, Exception -> 0x0038, TRY_LEAVE, TryCatch #2 {Exception -> 0x0038, all -> 0x0026, blocks: (B:5:0x001c, B:22:0x0010), top: B:21:0x0010 }] */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void uncaughtException(java.lang.Thread r7, java.lang.Throwable r8) {
        /*
            r6 = this;
            java.util.concurrent.atomic.AtomicBoolean r0 = r6.f12513do
            r1 = 1
            r0.set(r1)
            java.lang.Thread$UncaughtExceptionHandler r2 = r6.f12512do
            r3 = 0
            if (r7 != 0) goto Ld
        Lb:
            r4 = 0
            goto L1a
        Ld:
            if (r8 != 0) goto L10
            goto Lb
        L10:
            Rb r4 = r6.f12510do     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L38
            boolean r4 = r4.mo2059new()     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L38
            if (r4 == 0) goto L19
            goto Lb
        L19:
            r4 = 1
        L1a:
            if (r4 == 0) goto L28
            dc$do r4 = r6.f12511do     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L38
            kD r5 = r6.f12514do     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L38
            Gb r4 = (defpackage.C0226Gb) r4     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L38
            r4.m741do(r5, r7, r8)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L38
            goto L28
        L26:
            r4 = move-exception
            goto L2b
        L28:
            if (r2 == 0) goto L3e
            goto L3a
        L2b:
            if (r2 == 0) goto L31
            r2.uncaughtException(r7, r8)
            goto L34
        L31:
            java.lang.System.exit(r1)
        L34:
            r0.set(r3)
            throw r4
        L38:
            if (r2 == 0) goto L3e
        L3a:
            r2.uncaughtException(r7, r8)
            goto L41
        L3e:
            java.lang.System.exit(r1)
        L41:
            r0.set(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2642dc.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
    }
}
