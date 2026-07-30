package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.Cnew;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* renamed from: Si, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0496Si extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cnew f3541do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3542do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ boolean f3543if = false;

    public C0496Si(Cnew cnew) {
        this.f3541do = cnew;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f3542do = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Cnew cnew = this.f3541do;
        cnew.f11116for = 0;
        cnew.f11103do = null;
        if (this.f3542do) {
            return;
        }
        FloatingActionButton floatingActionButton = cnew.f11110do;
        boolean z = this.f3543if;
        floatingActionButton.m5843new(z ? 8 : 4, z);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        Cnew cnew = this.f3541do;
        cnew.f11110do.m5843new(0, this.f3543if);
        cnew.f11116for = 1;
        cnew.f11103do = animator;
        this.f3542do = false;
    }
}
