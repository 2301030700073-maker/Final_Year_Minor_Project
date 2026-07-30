package com.google.android.material.snackbar;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import defpackage.C2613d5;
import defpackage.Z4;

/* renamed from: com.google.android.material.snackbar.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BaseTransientBottomBar f11502do;

    public Celse(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11502do = baseTransientBottomBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseTransientBottomBar baseTransientBottomBar = this.f11502do;
        BaseTransientBottomBar.Ccase ccase = baseTransientBottomBar.f11464do;
        if (ccase == null) {
            return;
        }
        ViewParent parent = ccase.getParent();
        BaseTransientBottomBar.Ccase ccase2 = baseTransientBottomBar.f11464do;
        if (parent != null) {
            ccase2.setVisibility(0);
        }
        if (ccase2.f11487for == 1) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setInterpolator(baseTransientBottomBar.f11460do);
            ofFloat.addUpdateListener(new Cdo(baseTransientBottomBar));
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
            ofFloat2.setInterpolator(baseTransientBottomBar.f11471for);
            ofFloat2.addUpdateListener(new Cif(baseTransientBottomBar));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat, ofFloat2);
            animatorSet.setDuration(baseTransientBottomBar.f11458do);
            animatorSet.addListener(new C2613d5(baseTransientBottomBar));
            animatorSet.start();
            return;
        }
        int height = ccase2.getHeight();
        ViewGroup.LayoutParams layoutParams = ccase2.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            height += ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        ccase2.setTranslationY(height);
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(height, 0);
        valueAnimator.setInterpolator(baseTransientBottomBar.f11474if);
        valueAnimator.setDuration(baseTransientBottomBar.f11470for);
        valueAnimator.addListener(new Z4(baseTransientBottomBar));
        valueAnimator.addUpdateListener(new Cfor(baseTransientBottomBar, height));
        valueAnimator.start();
    }
}
