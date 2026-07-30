package b.i.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class O extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f867a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f868b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f869c;

    public O(X x, ViewGroup viewGroup, View view, r rVar) {
        this.f867a = viewGroup;
        this.f868b = view;
        this.f869c = rVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f867a.endViewTransition(this.f868b);
        animator.removeListener(this);
        r rVar = this.f869c;
        View view = rVar.mView;
        if (view == null || !rVar.mHidden) {
            return;
        }
        view.setVisibility(8);
    }
}
