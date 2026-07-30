package androidx.transition;

import androidx.transition.Transition;

/* renamed from: androidx.transition.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor implements Transition.Cnew {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Runnable f7945do;

    public Cfor(Runnable runnable) {
        this.f7945do = runnable;
    }

    @Override // androidx.transition.Transition.Cnew
    /* renamed from: case */
    public final void mo4604case(Transition transition) {
    }

    @Override // androidx.transition.Transition.Cnew
    /* renamed from: do */
    public final void mo4605do(Transition transition) {
        throw null;
    }

    @Override // androidx.transition.Transition.Cnew
    /* renamed from: else */
    public final void mo4606else(Transition transition) {
        this.f7945do.run();
    }

    @Override // androidx.transition.Transition.Cnew
    /* renamed from: for */
    public final void mo4607for(Transition transition) {
        mo4606else(transition);
    }

    @Override // androidx.transition.Transition.Cnew
    /* renamed from: if */
    public final void mo4608if() {
    }

    @Override // androidx.transition.Transition.Cnew
    /* renamed from: new */
    public final void mo4609new(Transition transition) {
    }

    @Override // androidx.transition.Transition.Cnew
    /* renamed from: try */
    public final void mo4610try() {
    }
}
