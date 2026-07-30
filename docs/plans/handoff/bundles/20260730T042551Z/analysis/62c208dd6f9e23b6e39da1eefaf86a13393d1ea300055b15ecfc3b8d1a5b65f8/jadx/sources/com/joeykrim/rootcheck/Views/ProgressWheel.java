package com.joeykrim.rootcheck.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import defpackage.VJ;

/* loaded from: classes3.dex */
public class ProgressWheel extends View {

    /* renamed from: case, reason: not valid java name */
    public int f12251case;

    /* renamed from: do, reason: not valid java name */
    public final Paint f12252do;

    /* renamed from: else, reason: not valid java name */
    public int f12253else;

    /* renamed from: for, reason: not valid java name */
    public final int f12254for;

    /* renamed from: goto, reason: not valid java name */
    public final int f12255goto;

    /* renamed from: new, reason: not valid java name */
    public int f12256new;

    /* renamed from: try, reason: not valid java name */
    public int f12257try;

    public ProgressWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12254for = 3;
        this.f12256new = 2;
        this.f12257try = 2;
        this.f12251case = 2;
        this.f12253else = 2;
        this.f12255goto = -13854764;
        this.f12252do = new Paint();
        new RectF();
        new RectF();
    }

    @Override // android.view.View
    public final int getPaddingBottom() {
        return this.f12257try;
    }

    @Override // android.view.View
    public final int getPaddingLeft() {
        return this.f12251case;
    }

    @Override // android.view.View
    public final int getPaddingRight() {
        return this.f12253else;
    }

    @Override // android.view.View
    public final int getPaddingTop() {
        return this.f12256new;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int paddingTop = (measuredHeight - getPaddingTop()) - getPaddingBottom();
        if (paddingLeft > paddingTop) {
            paddingLeft = paddingTop;
        }
        setMeasuredDimension(getPaddingRight() + getPaddingLeft() + paddingLeft, getPaddingBottom() + getPaddingTop() + paddingLeft);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Math.min(i, i2);
        this.f12256new = (int) VJ.m2592try(getPaddingTop(), getContext());
        this.f12257try = (int) VJ.m2592try(getPaddingBottom(), getContext());
        this.f12251case = (int) VJ.m2592try(getPaddingLeft(), getContext());
        this.f12253else = (int) VJ.m2592try(getPaddingRight(), getContext());
        int width = getWidth();
        int height = getHeight();
        new RectF(this.f12251case, this.f12256new, width - this.f12253else, height - this.f12257try);
        new RectF(this.f12251case, this.f12256new, width - this.f12253else, height - this.f12257try);
        int i5 = width - this.f12253else;
        int i6 = this.f12254for;
        int i7 = (i5 - i6) / 2;
        Paint paint = this.f12252do;
        paint.setColor(this.f12255goto);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(VJ.m2592try(i6, getContext()));
        invalidate();
    }
}
