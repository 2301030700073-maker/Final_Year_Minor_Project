package b.m.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.Objects;

/* renamed from: b.m.b.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0179h extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w0 f1157a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f1158b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f1159c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0191o f1160d;

    public C0179h(C0191o c0191o, w0 w0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f1160d = c0191o;
        this.f1157a = w0Var;
        this.f1158b = viewPropertyAnimator;
        this.f1159c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1158b.setListener(null);
        this.f1159c.setAlpha(1.0f);
        this.f1160d.d(this.f1157a);
        this.f1160d.q.remove(this.f1157a);
        this.f1160d.l();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.f1160d);
    }
}
