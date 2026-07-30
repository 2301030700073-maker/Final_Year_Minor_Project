package defpackage;

import android.animation.ValueAnimator;

/* renamed from: fu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2777fu implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ float f12996do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AbstractC2718eu f12997do;

    public C2777fu(AbstractC2718eu abstractC2718eu, float f) {
        this.f12997do = abstractC2718eu;
        this.f12996do = f;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f12997do.m6609this(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f12996do);
    }
}
