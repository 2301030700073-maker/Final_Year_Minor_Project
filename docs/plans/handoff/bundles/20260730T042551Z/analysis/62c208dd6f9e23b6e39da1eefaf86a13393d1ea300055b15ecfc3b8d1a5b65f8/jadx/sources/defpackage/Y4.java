package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* loaded from: classes3.dex */
public final class Y4 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f4640do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ BaseTransientBottomBar f4641do;

    public Y4(BaseTransientBottomBar baseTransientBottomBar, int i) {
        this.f4641do = baseTransientBottomBar;
        this.f4640do = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f4641do.m5923new(this.f4640do);
    }
}
