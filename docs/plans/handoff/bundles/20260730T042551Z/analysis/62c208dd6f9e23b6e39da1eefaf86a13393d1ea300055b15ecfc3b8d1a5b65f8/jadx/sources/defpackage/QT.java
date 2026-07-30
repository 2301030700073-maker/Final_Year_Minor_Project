package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class QT implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f2949break;

    /* renamed from: catch, reason: not valid java name */
    public final /* synthetic */ String f2950catch;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AtomicReference f2951do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4041yT f2952do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f2953do;

    public QT(C4041yT c4041yT, AtomicReference atomicReference, String str, String str2, boolean z) {
        this.f2951do = atomicReference;
        this.f2949break = str;
        this.f2950catch = str2;
        this.f2953do = z;
        this.f2952do = c4041yT;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3217kU m2261while = ((TS) ((C3393nT) this.f2952do).f14527do).m2261while();
        AtomicReference atomicReference = this.f2951do;
        String str = this.f2949break;
        String str2 = this.f2950catch;
        boolean z = this.f2953do;
        m2261while.mo1960catch();
        m2261while.m8474import();
        m2261while.m7267static(new RunnableC4042yU(m2261while, atomicReference, str, str2, m2261while.m7263interface(false), z));
    }
}
