package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class RT implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f3181break;

    /* renamed from: catch, reason: not valid java name */
    public final /* synthetic */ String f3182catch;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AtomicReference f3183do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4041yT f3184do;

    public RT(C4041yT c4041yT, AtomicReference atomicReference, String str, String str2) {
        this.f3183do = atomicReference;
        this.f3181break = str;
        this.f3182catch = str2;
        this.f3184do = c4041yT;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3217kU m2261while = ((TS) ((C3393nT) this.f3184do).f14527do).m2261while();
        AtomicReference atomicReference = this.f3183do;
        String str = this.f3181break;
        String str2 = this.f3182catch;
        m2261while.mo1960catch();
        m2261while.m8474import();
        m2261while.m7267static(new RunnableC3924wU(m2261while, atomicReference, str, str2, m2261while.m7263interface(false)));
    }
}
