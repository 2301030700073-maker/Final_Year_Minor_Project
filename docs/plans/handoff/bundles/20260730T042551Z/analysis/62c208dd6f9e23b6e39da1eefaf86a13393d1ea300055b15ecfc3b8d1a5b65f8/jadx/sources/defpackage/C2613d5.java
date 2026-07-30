package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* renamed from: d5, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2613d5 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BaseTransientBottomBar f12425do;

    public C2613d5(BaseTransientBottomBar baseTransientBottomBar) {
        this.f12425do = baseTransientBottomBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f12425do.m5924try();
    }
}
