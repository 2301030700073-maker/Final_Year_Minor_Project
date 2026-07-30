package com.google.android.material.tabs;

import android.animation.ValueAnimator;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* renamed from: com.google.android.material.tabs.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f11601do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ TabLayout.Cnew f11602do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ View f11603if;

    public Cif(TabLayout.Cnew cnew, View view, View view2) {
        this.f11602do = cnew;
        this.f11601do = view;
        this.f11603if = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f11602do.m5963if(this.f11601do, this.f11603if, valueAnimator.getAnimatedFraction());
    }
}
