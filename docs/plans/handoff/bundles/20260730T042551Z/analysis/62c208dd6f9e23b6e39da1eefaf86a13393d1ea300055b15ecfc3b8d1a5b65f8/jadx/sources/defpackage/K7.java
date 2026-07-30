package defpackage;

import android.animation.ValueAnimator;
import defpackage.M7;

/* loaded from: classes.dex */
public final class K7 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ M7.Cdo f1767do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ M7 f1768do;

    public K7(M7 m7, M7.Cdo cdo) {
        this.f1768do = m7;
        this.f1767do = cdo;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        M7 m7 = this.f1768do;
        m7.getClass();
        M7.Cdo cdo = this.f1767do;
        M7.m1393if(floatValue, cdo);
        m7.m1394do(floatValue, cdo, false);
        m7.invalidateSelf();
    }
}
