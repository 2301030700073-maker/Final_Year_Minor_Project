package defpackage;

import android.transition.Transition;

/* renamed from: Lj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0344Lj implements Transition.TransitionListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Runnable f1993do;

    public C0344Lj(Runnable runnable) {
        this.f1993do = runnable;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        this.f1993do.run();
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
    }
}
