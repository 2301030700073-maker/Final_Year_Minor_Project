package b.m.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* renamed from: b.m.b.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0183j extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w0 f1165a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1166b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f1167c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1168d;
    public final /* synthetic */ ViewPropertyAnimator e;
    public final /* synthetic */ C0191o f;

    public C0183j(C0191o c0191o, w0 w0Var, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f = c0191o;
        this.f1165a = w0Var;
        this.f1166b = i;
        this.f1167c = view;
        this.f1168d = i2;
        this.e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        if (this.f1166b != 0) {
            this.f1167c.setTranslationX(RecentsState.NO_OFFSET);
        }
        if (this.f1168d != 0) {
            this.f1167c.setTranslationY(RecentsState.NO_OFFSET);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.e.setListener(null);
        this.f.d(this.f1165a);
        this.f.p.remove(this.f1165a);
        this.f.l();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.f);
    }
}
