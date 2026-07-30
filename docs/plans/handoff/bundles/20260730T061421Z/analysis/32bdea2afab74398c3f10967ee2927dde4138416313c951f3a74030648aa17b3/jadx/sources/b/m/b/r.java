package b.m.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.recyclerview.widget.FastScroller;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class r extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1198a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FastScroller f1199b;

    public r(FastScroller fastScroller) {
        this.f1199b = fastScroller;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f1198a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.f1198a) {
            this.f1198a = false;
            return;
        }
        if (((Float) this.f1199b.t.getAnimatedValue()).floatValue() == RecentsState.NO_OFFSET) {
            FastScroller fastScroller = this.f1199b;
            fastScroller.u = 0;
            fastScroller.c(0);
        } else {
            FastScroller fastScroller2 = this.f1199b;
            fastScroller2.u = 2;
            fastScroller2.m.invalidate();
        }
    }
}
