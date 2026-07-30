package com.google.android.material.transformation;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import defpackage.C0516Tg;

@Deprecated
/* loaded from: classes3.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: do, reason: not valid java name */
    public AnimatorSet f11777do;

    public ExpandableTransformationBehavior() {
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: switch */
    public void mo6025switch(View view, View view2, boolean z, boolean z2) {
        AnimatorSet animatorSet = this.f11777do;
        boolean z3 = animatorSet != null;
        if (z3) {
            animatorSet.cancel();
        }
        AnimatorSet mo6026throws = mo6026throws(view, view2, z, z3);
        this.f11777do = mo6026throws;
        mo6026throws.addListener(new C0516Tg(this));
        this.f11777do.start();
        if (z2) {
            return;
        }
        this.f11777do.end();
    }

    /* renamed from: throws, reason: not valid java name */
    public abstract AnimatorSet mo6026throws(View view, View view2, boolean z, boolean z2);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
