package b.m.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* renamed from: b.m.b.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0185k extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0189m f1169a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f1170b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f1171c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0191o f1172d;

    public C0185k(C0191o c0191o, C0189m c0189m, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f1172d = c0191o;
        this.f1169a = c0189m;
        this.f1170b = viewPropertyAnimator;
        this.f1171c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1170b.setListener(null);
        this.f1171c.setAlpha(1.0f);
        this.f1171c.setTranslationX(RecentsState.NO_OFFSET);
        this.f1171c.setTranslationY(RecentsState.NO_OFFSET);
        this.f1172d.d(this.f1169a.f1181a);
        this.f1172d.r.remove(this.f1169a.f1181a);
        this.f1172d.l();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        C0191o c0191o = this.f1172d;
        w0 w0Var = this.f1169a.f1181a;
        Objects.requireNonNull(c0191o);
    }
}
