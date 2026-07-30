package defpackage;

import java.util.concurrent.locks.LockSupport;

/* loaded from: classes3.dex */
public final class A5<T> extends Cgoto<T> {

    /* renamed from: do, reason: not valid java name */
    public final Thread f46do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3873vg f47do;

    public A5(InterfaceC3161jb interfaceC3161jb, Thread thread, AbstractC3873vg abstractC3873vg) {
        super(interfaceC3161jb, true);
        this.f46do = thread;
        this.f47do = abstractC3873vg;
    }

    @Override // defpackage.C2713ep
    /* renamed from: native, reason: not valid java name */
    public final void mo43native(Object obj) {
        Thread currentThread = Thread.currentThread();
        Thread thread = this.f46do;
        if (C0173Do.m394do(currentThread, thread)) {
            return;
        }
        LockSupport.unpark(thread);
    }
}
