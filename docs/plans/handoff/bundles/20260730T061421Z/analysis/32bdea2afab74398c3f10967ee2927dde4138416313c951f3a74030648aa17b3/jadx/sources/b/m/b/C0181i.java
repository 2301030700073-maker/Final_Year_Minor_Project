package b.m.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.Objects;

/* renamed from: b.m.b.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0181i extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w0 f1161a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1162b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f1163c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0191o f1164d;

    public C0181i(C0191o c0191o, w0 w0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f1164d = c0191o;
        this.f1161a = w0Var;
        this.f1162b = view;
        this.f1163c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f1162b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1163c.setListener(null);
        this.f1164d.d(this.f1161a);
        this.f1164d.o.remove(this.f1161a);
        this.f1164d.l();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.f1164d);
    }
}
