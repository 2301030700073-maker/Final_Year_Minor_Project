package com.db.chart.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Region;
import android.util.AttributeSet;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC3606r7;
import defpackage.AbstractC3665s7;
import defpackage.C3176jq;
import defpackage.C3645ro;
import defpackage.Xw;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class LineChartView extends ChartView {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f9174do;

    /* renamed from: new, reason: not valid java name */
    public final float f9175new;

    /* renamed from: com.db.chart.view.LineChartView$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: do, reason: not valid java name */
        public Paint f9176do;

        /* renamed from: for, reason: not valid java name */
        public Paint f9177for;

        /* renamed from: if, reason: not valid java name */
        public Paint f9178if;
    }

    public LineChartView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5240this(2);
        context.getTheme().obtainStyledAttributes(attributeSet, C3645ro.f15325if, 0, 0);
        this.f9174do = new Cdo();
        this.f9175new = getResources().getDimension(R.dimen.dot_region_radius);
    }

    @Override // com.db.chart.view.ChartView
    /* renamed from: case */
    public final void mo5226case(Canvas canvas, ArrayList<AbstractC3665s7> arrayList) {
        Iterator<AbstractC3665s7> it = arrayList.iterator();
        while (it.hasNext()) {
            C3176jq c3176jq = (C3176jq) it.next();
            if (((AbstractC3665s7) c3176jq).f15398do) {
                Cdo cdo = this.f9174do;
                cdo.f9177for.setColor(c3176jq.f13806do);
                cdo.f9177for.setStrokeWidth(c3176jq.f13808if);
                Paint paint = cdo.f9177for;
                paint.setAlpha((int) (((AbstractC3665s7) c3176jq).f15396do * 255.0f));
                int i = (int) (((AbstractC3665s7) c3176jq).f15396do * 255.0f);
                int[] iArr = c3176jq.f13807do;
                int i2 = iArr[0];
                if (i >= i2) {
                    i = i2;
                }
                paint.setShadowLayer(0.0f, 0.0f, 0.0f, Color.argb(i, iArr[1], iArr[2], iArr[3]));
                cdo.f9177for.setPathEffect(null);
                float f = ((ChartView) this).f9145do;
                Path path = new Path();
                Path path2 = new Path();
                int m8055if = c3176jq.m8055if();
                for (int i3 = 0; i3 < m8055if; i3++) {
                    float f2 = c3176jq.m8054do(i3).f15219if;
                    float f3 = c3176jq.m8054do(i3).f15218for;
                    if (f3 < f) {
                        f = f3;
                    }
                    if (i3 == 0) {
                        path.moveTo(f2, f3);
                        path2.moveTo(f2, f3);
                    } else {
                        path.lineTo(f2, f3);
                        path2.lineTo(f2, f3);
                    }
                }
                canvas.drawPath(path, cdo.f9177for);
                int m8055if2 = c3176jq.m8055if();
                for (int i4 = 0; i4 < m8055if2; i4++) {
                    Xw xw = (Xw) c3176jq.m8054do(i4);
                    if (((AbstractC3606r7) xw).f15216do) {
                        cdo.f9176do.setColor(((AbstractC3606r7) xw).f15214do);
                        cdo.f9176do.setAlpha((int) (((AbstractC3665s7) c3176jq).f15396do * 255.0f));
                        ChartView.m5235if(cdo.f9176do, ((AbstractC3665s7) c3176jq).f15396do, xw);
                        canvas.drawCircle(xw.f15219if, xw.f15218for, 0.0f, cdo.f9176do);
                    }
                }
            }
        }
    }

    @Override // com.db.chart.view.ChartView
    /* renamed from: for */
    public final ArrayList<ArrayList<Region>> mo5228for(ArrayList<AbstractC3665s7> arrayList) {
        ArrayList<ArrayList<Region>> arrayList2 = new ArrayList<>(arrayList.size());
        Iterator<AbstractC3665s7> it = arrayList.iterator();
        while (it.hasNext()) {
            AbstractC3665s7 next = it.next();
            ArrayList<Region> arrayList3 = new ArrayList<>(next.m8055if());
            Iterator<AbstractC3606r7> it2 = next.f15397do.iterator();
            while (it2.hasNext()) {
                AbstractC3606r7 next2 = it2.next();
                float f = next2.f15219if;
                float f2 = next2.f15218for;
                float f3 = this.f9175new;
                arrayList3.add(new Region((int) (f - f3), (int) (f2 - f3), (int) (f + f3), (int) (f2 + f3)));
            }
            arrayList2.add(arrayList3);
        }
        return arrayList2;
    }

    @Override // com.db.chart.view.ChartView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Cdo cdo = this.f9174do;
        cdo.getClass();
        Paint paint = new Paint();
        cdo.f9176do = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        cdo.f9176do.setAntiAlias(true);
        Paint paint2 = new Paint();
        cdo.f9178if = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        cdo.f9178if.setAntiAlias(true);
        Paint paint3 = new Paint();
        cdo.f9177for = paint3;
        paint3.setStyle(Paint.Style.STROKE);
        cdo.f9177for.setAntiAlias(true);
        new Paint().setStyle(Paint.Style.FILL);
    }

    @Override // com.db.chart.view.ChartView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Cdo cdo = this.f9174do;
        cdo.f9177for = null;
        cdo.f9176do = null;
    }
}
