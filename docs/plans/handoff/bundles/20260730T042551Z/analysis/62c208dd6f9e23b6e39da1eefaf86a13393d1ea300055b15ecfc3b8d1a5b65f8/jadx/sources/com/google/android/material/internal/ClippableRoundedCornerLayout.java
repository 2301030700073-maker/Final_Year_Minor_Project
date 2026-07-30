package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class ClippableRoundedCornerLayout extends FrameLayout {

    /* renamed from: do, reason: not valid java name */
    public float f11169do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Path f11170do;

    public ClippableRoundedCornerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f11170do == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.clipPath(this.f11170do);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(save);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5840do(float f, float f2, float f3, float f4, float f5) {
        RectF rectF = new RectF(f, f2, f3, f4);
        if (this.f11170do == null) {
            this.f11170do = new Path();
        }
        this.f11169do = f5;
        this.f11170do.reset();
        this.f11170do.addRoundRect(rectF, f5, f5, Path.Direction.CW);
        this.f11170do.close();
        invalidate();
    }

    public ClippableRoundedCornerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
