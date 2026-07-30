package defpackage;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* renamed from: xB, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3964xB extends AbstractC0319Kg {

    /* renamed from: do, reason: not valid java name */
    public final ExecutorC3574qb f16527do;

    public C3964xB(int i, int i2, String str, long j) {
        this.f16527do = new ExecutorC3574qb(i, i2, str, j);
    }

    @Override // defpackage.AbstractC3338mb
    /* renamed from: if */
    public final void mo1340if(InterfaceC3161jb interfaceC3161jb, Runnable runnable) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = ExecutorC3574qb.f15121do;
        this.f16527do.m7893if(runnable, OG.f2613do, false);
    }
}
