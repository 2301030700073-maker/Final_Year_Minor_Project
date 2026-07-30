package com.like;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import defpackage.C0745bK;

/* loaded from: classes3.dex */
public class DotsView extends View {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f12344do = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public int f12345break;

    /* renamed from: case, reason: not valid java name */
    public float f12346case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public int f12347case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f12348do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArgbEvaluator f12349do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint[] f12350do;

    /* renamed from: else, reason: not valid java name */
    public float f12351else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public int f12352else;

    /* renamed from: for, reason: not valid java name */
    public float f12353for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f12354for;

    /* renamed from: goto, reason: not valid java name */
    public float f12355goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public int f12356goto;

    /* renamed from: if, reason: not valid java name */
    public float f12357if;

    /* renamed from: new, reason: not valid java name */
    public float f12358new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f12359new;

    /* renamed from: this, reason: not valid java name */
    public int f12360this;

    /* renamed from: try, reason: not valid java name */
    public float f12361try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f12362try;

    /* renamed from: com.like.DotsView$do, reason: invalid class name */
    public static class Cdo extends Property<DotsView, Float> {
        public Cdo() {
            super(Float.class, "dotsProgress");
        }

        @Override // android.util.Property
        public final Float get(DotsView dotsView) {
            return Float.valueOf(dotsView.f12358new);
        }

        @Override // android.util.Property
        public final void set(DotsView dotsView, Float f) {
            dotsView.m6395do(f.floatValue());
        }
    }

    public DotsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12354for = -16121;
        this.f12359new = -26624;
        this.f12362try = -43230;
        this.f12347case = -769226;
        int i = 0;
        this.f12352else = 0;
        this.f12356goto = 0;
        this.f12350do = new Paint[4];
        this.f12358new = 0.0f;
        this.f12361try = 0.0f;
        this.f12346case = 0.0f;
        this.f12351else = 0.0f;
        this.f12355goto = 0.0f;
        this.f12349do = new ArgbEvaluator();
        while (true) {
            Paint[] paintArr = this.f12350do;
            if (i >= paintArr.length) {
                return;
            }
            Paint paint = new Paint();
            paintArr[i] = paint;
            paint.setStyle(Paint.Style.FILL);
            i++;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6395do(float f) {
        this.f12358new = f;
        if (f < 0.3f) {
            this.f12355goto = (float) C0745bK.m4830if(f, 0.0d, 0.30000001192092896d, 0.0d, this.f12357if);
        } else {
            this.f12355goto = this.f12357if;
        }
        float f2 = this.f12358new;
        if (f2 == 0.0f) {
            this.f12351else = 0.0f;
        } else {
            double d = f2;
            if (d < 0.2d) {
                this.f12351else = this.f12353for;
            } else if (d < 0.5d) {
                double d2 = this.f12353for;
                this.f12351else = (float) C0745bK.m4830if(d, 0.20000000298023224d, 0.5d, d2, 0.3d * d2);
            } else {
                this.f12351else = (float) C0745bK.m4830if(d, 0.5d, 1.0d, this.f12353for * 0.3f, 0.0d);
            }
        }
        float f3 = this.f12358new;
        if (f3 < 0.3f) {
            this.f12361try = (float) C0745bK.m4830if(f3, 0.0d, 0.30000001192092896d, 0.0d, this.f12348do * 0.8f);
        } else {
            this.f12361try = (float) C0745bK.m4830if(f3, 0.30000001192092896d, 1.0d, 0.8f * r5, this.f12348do);
        }
        float f4 = this.f12358new;
        if (f4 == 0.0f) {
            this.f12346case = 0.0f;
        } else {
            double d3 = f4;
            if (d3 < 0.7d) {
                this.f12346case = this.f12353for;
            } else {
                this.f12346case = (float) C0745bK.m4830if(d3, 0.699999988079071d, 1.0d, this.f12353for, 0.0d);
            }
        }
        float f5 = this.f12358new;
        ArgbEvaluator argbEvaluator = this.f12349do;
        Paint[] paintArr = this.f12350do;
        if (f5 < 0.5f) {
            float m4830if = (float) C0745bK.m4830if(f5, 0.0d, 0.5d, 0.0d, 1.0d);
            paintArr[0].setColor(((Integer) argbEvaluator.evaluate(m4830if, Integer.valueOf(this.f12354for), Integer.valueOf(this.f12359new))).intValue());
            paintArr[1].setColor(((Integer) argbEvaluator.evaluate(m4830if, Integer.valueOf(this.f12359new), Integer.valueOf(this.f12362try))).intValue());
            paintArr[2].setColor(((Integer) argbEvaluator.evaluate(m4830if, Integer.valueOf(this.f12362try), Integer.valueOf(this.f12347case))).intValue());
            paintArr[3].setColor(((Integer) argbEvaluator.evaluate(m4830if, Integer.valueOf(this.f12347case), Integer.valueOf(this.f12354for))).intValue());
        } else {
            float m4830if2 = (float) C0745bK.m4830if(f5, 0.5d, 1.0d, 0.0d, 1.0d);
            paintArr[0].setColor(((Integer) argbEvaluator.evaluate(m4830if2, Integer.valueOf(this.f12359new), Integer.valueOf(this.f12362try))).intValue());
            paintArr[1].setColor(((Integer) argbEvaluator.evaluate(m4830if2, Integer.valueOf(this.f12362try), Integer.valueOf(this.f12347case))).intValue());
            paintArr[2].setColor(((Integer) argbEvaluator.evaluate(m4830if2, Integer.valueOf(this.f12347case), Integer.valueOf(this.f12354for))).intValue());
            paintArr[3].setColor(((Integer) argbEvaluator.evaluate(m4830if2, Integer.valueOf(this.f12354for), Integer.valueOf(this.f12359new))).intValue());
        }
        int m4830if3 = (int) C0745bK.m4830if((float) Math.min(Math.max(this.f12358new, 0.6000000238418579d), 1.0d), 0.6000000238418579d, 1.0d, 255.0d, 0.0d);
        paintArr[0].setAlpha(m4830if3);
        paintArr[1].setAlpha(m4830if3);
        paintArr[2].setAlpha(m4830if3);
        paintArr[3].setAlpha(m4830if3);
        postInvalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Paint[] paintArr;
        int i = 0;
        int i2 = 0;
        while (true) {
            paintArr = this.f12350do;
            if (i2 >= 7) {
                break;
            }
            double d = ((i2 * 51) * 3.141592653589793d) / 180.0d;
            canvas.drawCircle((int) ((Math.cos(d) * this.f12361try) + this.f12360this), (int) ((Math.sin(d) * this.f12361try) + this.f12345break), this.f12346case, paintArr[i2 % paintArr.length]);
            i2++;
        }
        while (i < 7) {
            double d2 = (((i * 51) - 10) * 3.141592653589793d) / 180.0d;
            i++;
            canvas.drawCircle((int) ((Math.cos(d2) * this.f12355goto) + this.f12360this), (int) ((Math.sin(d2) * this.f12355goto) + this.f12345break), this.f12351else, paintArr[i % paintArr.length]);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int i4 = this.f12352else;
        if (i4 == 0 || (i3 = this.f12356goto) == 0) {
            return;
        }
        setMeasuredDimension(i4, i3);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = i / 2;
        this.f12360this = i5;
        this.f12345break = i2 / 2;
        this.f12353for = 5.0f;
        float f = i5 - (5.0f * 2.0f);
        this.f12348do = f;
        this.f12357if = f * 0.8f;
    }

    public DotsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f12354for = -16121;
        this.f12359new = -26624;
        this.f12362try = -43230;
        this.f12347case = -769226;
        int i2 = 0;
        this.f12352else = 0;
        this.f12356goto = 0;
        this.f12350do = new Paint[4];
        this.f12358new = 0.0f;
        this.f12361try = 0.0f;
        this.f12346case = 0.0f;
        this.f12351else = 0.0f;
        this.f12355goto = 0.0f;
        this.f12349do = new ArgbEvaluator();
        while (true) {
            Paint[] paintArr = this.f12350do;
            if (i2 >= paintArr.length) {
                return;
            }
            Paint paint = new Paint();
            paintArr[i2] = paint;
            paint.setStyle(Paint.Style.FILL);
            i2++;
        }
    }
}
