package defpackage;

import defpackage.C2623dF;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: eF, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2681eF extends Cthrows<C2623dF<?>> {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReferenceFieldUpdater f12633do = AtomicReferenceFieldUpdater.newUpdater(C2681eF.class, Object.class, "_state");
    private volatile Object _state;

    @Override // defpackage.Cthrows
    /* renamed from: do, reason: not valid java name */
    public final boolean mo6532do(C2623dF<?> c2623dF) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12633do;
        if (atomicReferenceFieldUpdater.get(this) != null) {
            return false;
        }
        atomicReferenceFieldUpdater.set(this, C3645ro.f15316do);
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6533for(C2623dF c2623dF) {
        f12633do.set(this, null);
    }

    /* renamed from: if, reason: not valid java name */
    public final Object m6534if(C2623dF.Cdo cdo) {
        boolean z = true;
        U6 u6 = new U6(1, C3645ro.m8008package(cdo));
        u6.m2359static();
        C0174Dp c0174Dp = C3645ro.f15316do;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f12633do;
            if (atomicReferenceFieldUpdater.compareAndSet(this, c0174Dp, u6)) {
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != c0174Dp) {
                z = false;
                break;
            }
        }
        if (!z) {
            u6.mo1746while(C3206kJ.f13965do);
        }
        Object m2358return = u6.m2358return();
        return m2358return == EnumC3750tb.COROUTINE_SUSPENDED ? m2358return : C3206kJ.f13965do;
    }
}
