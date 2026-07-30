package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.gms.ads.internal.overlay.zzu;

/* loaded from: classes.dex */
public final class IV extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzu f1530do;

    public IV(zzu zzuVar) {
        this.f1530do = zzuVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        zzu zzuVar = this.f1530do;
        zzuVar.setEnabled(true);
        zzuVar.f9722do.setEnabled(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        zzu zzuVar = this.f1530do;
        zzuVar.setEnabled(true);
        zzuVar.f9722do.setEnabled(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        zzu zzuVar = this.f1530do;
        zzuVar.setEnabled(false);
        zzuVar.f9722do.setEnabled(false);
    }
}
