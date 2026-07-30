package com.db.chart.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Region;
import android.util.AttributeSet;
import com.db.chart.view.BaseBarChartView;
import defpackage.AbstractC3606r7;
import defpackage.AbstractC3665s7;
import defpackage.I4;
import defpackage.J4;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HorizontalBarChartView extends BaseBarChartView {
    public HorizontalBarChartView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5240this(1);
        m5238goto();
    }

    @Override // com.db.chart.view.BaseBarChartView, com.db.chart.view.ChartView
    /* renamed from: case */
    public final void mo5226case(Canvas canvas, ArrayList<AbstractC3665s7> arrayList) {
        int size = arrayList.size();
        int m8055if = arrayList.get(0).m8055if();
        for (int i = 0; i < m8055if; i++) {
            float f = arrayList.get(0).m8054do(i).f15218for - ((BaseBarChartView) this).f9133new;
            for (int i2 = 0; i2 < size; i2++) {
                J4 j4 = (J4) arrayList.get(i2);
                I4 i4 = (I4) j4.m8054do(i);
                if (((AbstractC3665s7) j4).f15398do && ((AbstractC3606r7) i4).f15213do != 0.0f) {
                    BaseBarChartView.Cdo cdo = ((BaseBarChartView) this).f9132do;
                    cdo.f9136do.setColor(((AbstractC3606r7) i4).f15214do);
                    cdo.f9136do.setAlpha((int) (((AbstractC3665s7) j4).f15396do * 255.0f));
                    ChartView.m5235if(cdo.f9136do, ((AbstractC3665s7) j4).f15396do, i4);
                    if (((AbstractC3606r7) i4).f15213do > 0.0f) {
                        m5231final(canvas, m5241try(), f, i4.f15219if, f + ((BaseBarChartView) this).f9134try);
                    } else {
                        m5231final(canvas, i4.f15219if, f, m5241try(), f + ((BaseBarChartView) this).f9134try);
                    }
                    f += ((BaseBarChartView) this).f9134try;
                    if (i2 != size - 1) {
                        f += cdo.f9138if;
                    }
                }
            }
        }
    }

    @Override // com.db.chart.view.ChartView
    /* renamed from: else */
    public final void mo5227else(ArrayList<AbstractC3665s7> arrayList) {
        if (arrayList.get(0).m8055if() == 1) {
            ((BaseBarChartView) this).f9132do.f9135do = 0.0f;
            int size = arrayList.size();
            float f = ((ChartView) this).f9145do - ((ChartView) this).f9162new;
            m5239new();
            mo5229class(0.0f, f - 0.0f, size);
        } else {
            mo5229class(arrayList.get(0).m8054do(1).f15218for, arrayList.get(0).m8054do(0).f15218for, arrayList.size());
        }
        m5230const(arrayList.size());
    }

    @Override // com.db.chart.view.ChartView
    /* renamed from: for */
    public final ArrayList<ArrayList<Region>> mo5228for(ArrayList<AbstractC3665s7> arrayList) {
        int size = arrayList.size();
        int m8055if = arrayList.get(0).m8055if();
        ArrayList<ArrayList<Region>> arrayList2 = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList2.add(new ArrayList<>(m8055if));
        }
        for (int i2 = 0; i2 < m8055if; i2++) {
            float f = arrayList.get(0).m8054do(i2).f15218for - ((BaseBarChartView) this).f9133new;
            for (int i3 = 0; i3 < size; i3++) {
                I4 i4 = (I4) ((J4) arrayList.get(i3)).m8054do(i2);
                if (((AbstractC3606r7) i4).f15213do > 0.0f) {
                    arrayList2.get(i3).add(new Region((int) m5241try(), (int) f, (int) i4.f15219if, (int) (((BaseBarChartView) this).f9134try + f)));
                } else {
                    arrayList2.get(i3).add(new Region((int) i4.f15219if, (int) f, (int) m5241try(), (int) (((BaseBarChartView) this).f9134try + f)));
                }
                if (i3 != size - 1) {
                    f += ((BaseBarChartView) this).f9132do.f9138if;
                }
            }
        }
        return arrayList2;
    }
}
