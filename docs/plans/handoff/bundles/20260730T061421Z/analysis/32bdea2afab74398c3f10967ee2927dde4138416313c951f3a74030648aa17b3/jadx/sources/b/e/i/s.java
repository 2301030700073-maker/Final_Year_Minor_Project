package b.e.i;

import android.animation.ValueAnimator;
import android.view.View;
import b.b.c.U;

/* loaded from: classes.dex */
public class s implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ U f779a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f780b;

    public s(t tVar, U u, View view) {
        this.f779a = u;
        this.f780b = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        ((View) this.f779a.f283a.f289d.getParent()).invalidate();
    }
}
