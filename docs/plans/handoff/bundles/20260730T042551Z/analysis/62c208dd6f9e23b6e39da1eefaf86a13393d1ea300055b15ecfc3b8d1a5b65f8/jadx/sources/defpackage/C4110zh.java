package defpackage;

import android.animation.ValueAnimator;
import android.view.View;
import androidx.appcompat.widget.ActionMenuView;

/* renamed from: zh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4110zh implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final View f16936do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f16937do = new float[2];

    /* renamed from: if, reason: not valid java name */
    public final View f16938if;

    public C4110zh(ActionMenuView actionMenuView, ActionMenuView actionMenuView2) {
        this.f16936do = actionMenuView;
        this.f16938if = actionMenuView2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float[] fArr = this.f16937do;
        O2.m1586for(fArr, floatValue);
        View view = this.f16936do;
        if (view != null) {
            view.setAlpha(fArr[0]);
        }
        View view2 = this.f16938if;
        if (view2 != null) {
            view2.setAlpha(fArr[1]);
        }
    }
}
