package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.Cnew;

/* renamed from: Ti, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0518Ti extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cnew f3738do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f3739do = false;

    public C0518Ti(Cnew cnew) {
        this.f3738do = cnew;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Cnew cnew = this.f3738do;
        cnew.f11116for = 0;
        cnew.f11103do = null;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        Cnew cnew = this.f3738do;
        cnew.f11110do.m5843new(0, this.f3739do);
        cnew.f11116for = 2;
        cnew.f11103do = animator;
    }
}
