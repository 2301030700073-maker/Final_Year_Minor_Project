package com.android.systemui.shared.recents.utilities;

import android.animation.TypeEvaluator;
import android.graphics.RectF;
import c.a.c.a.a;

/* loaded from: classes.dex */
public class RectFEvaluator implements TypeEvaluator {
    public final RectF mRect = new RectF();

    @Override // android.animation.TypeEvaluator
    public RectF evaluate(float f, RectF rectF, RectF rectF2) {
        float f2 = rectF.left;
        float a2 = a.a(rectF2.left, f2, f, f2);
        float f3 = rectF.top;
        float a3 = a.a(rectF2.top, f3, f, f3);
        float f4 = rectF.right;
        float a4 = a.a(rectF2.right, f4, f, f4);
        float f5 = rectF.bottom;
        this.mRect.set(a2, a3, a4, a.a(rectF2.bottom, f5, f, f5));
        return this.mRect;
    }
}
