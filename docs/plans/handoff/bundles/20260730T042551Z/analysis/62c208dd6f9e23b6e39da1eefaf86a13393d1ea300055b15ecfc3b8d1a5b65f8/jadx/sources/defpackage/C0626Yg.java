package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: Yg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0626Yg extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InterfaceC0178Dt f4750do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4751do;

    public C0626Yg(T4 t4) {
        this.f4750do = t4;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f4751do = true;
        this.f4750do.mo412if();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        InterfaceC0178Dt interfaceC0178Dt = this.f4750do;
        interfaceC0178Dt.mo409do();
        if (this.f4751do) {
            return;
        }
        interfaceC0178Dt.mo408case();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f4750do.onAnimationStart(animator);
        this.f4751do = false;
    }
}
