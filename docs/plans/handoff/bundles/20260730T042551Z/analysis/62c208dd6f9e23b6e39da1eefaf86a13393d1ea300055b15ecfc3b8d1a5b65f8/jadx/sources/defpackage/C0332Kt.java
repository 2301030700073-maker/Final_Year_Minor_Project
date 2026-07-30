package defpackage;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;

/* renamed from: Kt, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0332Kt implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f1892do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View[] f1893do;

    /* renamed from: Kt$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do, reason: not valid java name */
        void mo1220do(ValueAnimator valueAnimator, View view);
    }

    @SuppressLint({"LambdaLast"})
    public C0332Kt(Cdo cdo, View... viewArr) {
        this.f1892do = cdo;
        this.f1893do = viewArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static C0332Kt m1219do(View... viewArr) {
        return new C0332Kt(new C3580qh(2), viewArr);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        for (View view : this.f1893do) {
            this.f1892do.mo1220do(valueAnimator, view);
        }
    }
}
