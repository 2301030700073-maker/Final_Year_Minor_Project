package com.db.chart.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC3665s7;
import defpackage.C3645ro;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class BaseBarChartView extends ChartView {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f9132do;

    /* renamed from: new, reason: not valid java name */
    public float f9133new;

    /* renamed from: try, reason: not valid java name */
    public float f9134try;

    /* renamed from: com.db.chart.view.BaseBarChartView$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: do, reason: not valid java name */
        public float f9135do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Paint f9136do;

        /* renamed from: for, reason: not valid java name */
        public float f9137for;

        /* renamed from: if, reason: not valid java name */
        public final float f9138if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Paint f9139if;

        public Cdo(BaseBarChartView baseBarChartView, TypedArray typedArray) {
            this.f9135do = typedArray.getDimension(0, baseBarChartView.getResources().getDimension(R.dimen.bar_spacing));
            this.f9138if = typedArray.getDimension(0, baseBarChartView.getResources().getDimension(R.dimen.set_spacing));
        }
    }

    public BaseBarChartView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9132do = new Cdo(this, context.getTheme().obtainStyledAttributes(attributeSet, C3645ro.f15325if, 0, 0));
    }

    @Override // com.db.chart.view.ChartView
    /* renamed from: case */
    public void mo5226case(Canvas canvas, ArrayList<AbstractC3665s7> arrayList) {
    }

    /* renamed from: class, reason: not valid java name */
    public void mo5229class(float f, float f2, int i) {
        float f3 = f2 - f;
        Cdo cdo = this.f9132do;
        this.f9134try = ((f3 - (cdo.f9135do / 2.0f)) - (cdo.f9138if * (i - 1))) / i;
    }

    /* renamed from: const, reason: not valid java name */
    public final void m5230const(int i) {
        int i2 = i % 2;
        Cdo cdo = this.f9132do;
        if (i2 != 0) {
            this.f9133new = (((i - 1) / 2) * cdo.f9138if) + ((i * this.f9134try) / 2.0f);
        } else {
            this.f9133new = ((cdo.f9138if / 2.0f) * (i - 1)) + ((i * this.f9134try) / 2.0f);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final void m5231final(Canvas canvas, float f, float f2, float f3, float f4) {
        RectF rectF = new RectF((int) f, (int) f2, (int) f3, (int) f4);
        Cdo cdo = this.f9132do;
        float f5 = cdo.f9137for;
        canvas.drawRoundRect(rectF, f5, f5, cdo.f9136do);
    }

    @Override // com.db.chart.view.ChartView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Cdo cdo = this.f9132do;
        cdo.getClass();
        Paint paint = new Paint();
        cdo.f9136do = paint;
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        cdo.f9139if = paint2;
        paint2.setColor(-16777216);
        cdo.f9139if.setStyle(Paint.Style.FILL);
    }

    @Override // com.db.chart.view.ChartView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Cdo cdo = this.f9132do;
        cdo.f9136do = null;
        cdo.f9139if = null;
    }
}
