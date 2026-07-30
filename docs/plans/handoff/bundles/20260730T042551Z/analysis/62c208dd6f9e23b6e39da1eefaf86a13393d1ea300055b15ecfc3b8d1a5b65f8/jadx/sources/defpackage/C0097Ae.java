package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: Ae, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0097Ae<T> extends KB<T> {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f113do = AtomicIntegerFieldUpdater.newUpdater(C0097Ae.class, "_decision");
    private volatile int _decision;

    public C0097Ae(AbstractC0620Ya abstractC0620Ya, InterfaceC3161jb interfaceC3161jb) {
        super(abstractC0620Ya, interfaceC3161jb);
    }

    @Override // defpackage.KB, defpackage.C2713ep
    /* renamed from: native */
    public final void mo43native(Object obj) {
        w(obj);
    }

    @Override // defpackage.KB, defpackage.Cgoto
    public final void w(Object obj) {
        boolean z;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f113do;
            int i = atomicIntegerFieldUpdater.get(this);
            z = true;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("Already resumed".toString());
                }
                z = false;
            } else if (atomicIntegerFieldUpdater.compareAndSet(this, 0, 2)) {
                break;
            }
        }
        if (z) {
            return;
        }
        C3850vF.m8458return(C3645ro.m8008package(((KB) this).f1773do), C3850vF.m8457public(obj), null);
    }
}
