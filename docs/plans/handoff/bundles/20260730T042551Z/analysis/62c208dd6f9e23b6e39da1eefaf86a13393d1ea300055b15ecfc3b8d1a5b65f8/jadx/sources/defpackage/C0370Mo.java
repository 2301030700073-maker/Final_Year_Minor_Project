package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: Mo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0370Mo extends AbstractC0713ap {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f2241do = AtomicIntegerFieldUpdater.newUpdater(C0370Mo.class, "_invoked");
    private volatile int _invoked;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2650dk<Throwable, C3206kJ> f2242do;

    /* JADX WARN: Multi-variable type inference failed */
    public C0370Mo(InterfaceC2650dk<? super Throwable, C3206kJ> interfaceC2650dk) {
        this.f2242do = interfaceC2650dk;
    }

    @Override // defpackage.InterfaceC2650dk
    /* renamed from: this */
    public final /* bridge */ /* synthetic */ C3206kJ mo364this(Throwable th) {
        mo1461throw(th);
        return C3206kJ.f13965do;
    }

    @Override // defpackage.W8
    /* renamed from: throw, reason: not valid java name */
    public final void mo1461throw(Throwable th) {
        if (f2241do.compareAndSet(this, 0, 1)) {
            this.f2242do.mo364this(th);
        }
    }
}
