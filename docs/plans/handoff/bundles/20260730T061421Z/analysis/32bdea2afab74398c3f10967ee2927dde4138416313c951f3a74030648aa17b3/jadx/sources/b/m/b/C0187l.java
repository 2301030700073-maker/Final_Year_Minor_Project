package b.m.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* renamed from: b.m.b.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0187l extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0189m f1173a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f1174b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f1175c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0191o f1176d;

    public C0187l(C0191o c0191o, C0189m c0189m, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f1176d = c0191o;
        this.f1173a = c0189m;
        this.f1174b = viewPropertyAnimator;
        this.f1175c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1174b.setListener(null);
        this.f1175c.setAlpha(1.0f);
        this.f1175c.setTranslationX(RecentsState.NO_OFFSET);
        this.f1175c.setTranslationY(RecentsState.NO_OFFSET);
        this.f1176d.d(this.f1173a.f1182b);
        this.f1176d.r.remove(this.f1173a.f1182b);
        this.f1176d.l();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        C0191o c0191o = this.f1176d;
        w0 w0Var = this.f1173a.f1182b;
        Objects.requireNonNull(c0191o);
    }
}
