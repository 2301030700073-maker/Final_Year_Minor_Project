package com.like;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import defpackage.C0745bK;

/* loaded from: classes3.dex */
public class CircleView extends View {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f12330do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f12331do = new Cif();

    /* renamed from: case, reason: not valid java name */
    public int f12332case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f12333do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArgbEvaluator f12334do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Bitmap f12335do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Canvas f12336do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f12337do;

    /* renamed from: else, reason: not valid java name */
    public int f12338else;

    /* renamed from: for, reason: not valid java name */
    public int f12339for;

    /* renamed from: if, reason: not valid java name */
    public float f12340if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Paint f12341if;

    /* renamed from: new, reason: not valid java name */
    public int f12342new;

    /* renamed from: try, reason: not valid java name */
    public int f12343try;

    /* renamed from: com.like.CircleView$do, reason: invalid class name */
    public static class Cdo extends Property<CircleView, Float> {
        public Cdo() {
            super(Float.class, "innerCircleRadiusProgress");
        }

        @Override // android.util.Property
        public final Float get(CircleView circleView) {
            return Float.valueOf(circleView.f12340if);
        }

        @Override // android.util.Property
        public final void set(CircleView circleView, Float f) {
            CircleView circleView2 = circleView;
            circleView2.f12340if = f.floatValue();
            circleView2.postInvalidate();
        }
    }

    /* renamed from: com.like.CircleView$if, reason: invalid class name */
    public static class Cif extends Property<CircleView, Float> {
        public Cif() {
            super(Float.class, "outerCircleRadiusProgress");
        }

        @Override // android.util.Property
        public final Float get(CircleView circleView) {
            return Float.valueOf(circleView.f12333do);
        }

        @Override // android.util.Property
        public final void set(CircleView circleView, Float f) {
            circleView.m6394do(f.floatValue());
        }
    }

    public CircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12339for = -43230;
        this.f12342new = -16121;
        this.f12334do = new ArgbEvaluator();
        Paint paint = new Paint();
        this.f12337do = paint;
        Paint paint2 = new Paint();
        this.f12341if = paint2;
        this.f12333do = 0.0f;
        this.f12340if = 0.0f;
        this.f12343try = 0;
        this.f12332case = 0;
        paint.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6394do(float f) {
        this.f12333do = f;
        this.f12337do.setColor(((Integer) this.f12334do.evaluate((float) C0745bK.m4830if((float) Math.min(Math.max(f, 0.5d), 1.0d), 0.5d, 1.0d, 0.0d, 1.0d), Integer.valueOf(this.f12339for), Integer.valueOf(this.f12342new))).intValue());
        postInvalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f12336do.drawColor(16777215, PorterDuff.Mode.CLEAR);
        this.f12336do.drawCircle(getWidth() / 2, getHeight() / 2, this.f12333do * this.f12338else, this.f12337do);
        this.f12336do.drawCircle(getWidth() / 2, getHeight() / 2, this.f12340if * this.f12338else, this.f12341if);
        canvas.drawBitmap(this.f12335do, 0.0f, 0.0f, (Paint) null);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int i4 = this.f12343try;
        if (i4 == 0 || (i3 = this.f12332case) == 0) {
            return;
        }
        setMeasuredDimension(i4, i3);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f12338else = i / 2;
        this.f12335do = Bitmap.createBitmap(getWidth(), getWidth(), Bitmap.Config.ARGB_8888);
        this.f12336do = new Canvas(this.f12335do);
    }

    public CircleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f12339for = -43230;
        this.f12342new = -16121;
        this.f12334do = new ArgbEvaluator();
        Paint paint = new Paint();
        this.f12337do = paint;
        Paint paint2 = new Paint();
        this.f12341if = paint2;
        this.f12333do = 0.0f;
        this.f12340if = 0.0f;
        this.f12343try = 0;
        this.f12332case = 0;
        paint.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }
}
