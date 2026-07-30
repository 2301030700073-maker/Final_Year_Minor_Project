package com.db.chart.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.util.AttributeSet;
import com.db.chart.view.BaseBarChartView;
import defpackage.AbstractC3606r7;
import defpackage.AbstractC3665s7;
import defpackage.I4;
import defpackage.J4;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HorizontalStackBarChartView extends BaseStackBarChartView {
    public HorizontalStackBarChartView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5240this(1);
        m5238goto();
    }

    @Override // com.db.chart.view.BaseBarChartView, com.db.chart.view.ChartView
    /* renamed from: case */
    public final void mo5226case(Canvas canvas, ArrayList<AbstractC3665s7> arrayList) {
        float f;
        int i;
        int i2;
        float f2;
        int i3;
        int i4;
        int i5;
        float f3;
        float f4;
        HorizontalStackBarChartView horizontalStackBarChartView = this;
        ArrayList<AbstractC3665s7> arrayList2 = arrayList;
        int size = arrayList.size();
        int m8055if = arrayList2.get(0).m8055if();
        float m5241try = m5241try();
        int i6 = 0;
        while (i6 < m8055if) {
            BaseBarChartView.Cdo cdo = ((BaseBarChartView) horizontalStackBarChartView).f9132do;
            cdo.getClass();
            int m5232super = BaseStackBarChartView.m5232super(i6, arrayList2);
            int m5233throw = BaseStackBarChartView.m5233throw(i6, arrayList2);
            float f5 = m5241try;
            float f6 = f5;
            int i7 = 0;
            float f7 = 0.0f;
            float f8 = 0.0f;
            while (i7 < size) {
                J4 j4 = (J4) arrayList2.get(i7);
                I4 i42 = (I4) j4.m8054do(i6);
                float abs = Math.abs(m5241try - i42.f15219if);
                float f9 = f6;
                if (((AbstractC3665s7) j4).f15398do) {
                    float f10 = ((AbstractC3606r7) i42).f15213do;
                    if (f10 != 0.0f && abs >= 2.0f) {
                        int i8 = m5233throw;
                        cdo.f9136do.setColor(((AbstractC3606r7) i42).f15214do);
                        cdo.f9136do.setAlpha((int) (((AbstractC3665s7) j4).f15396do * 255.0f));
                        ChartView.m5235if(cdo.f9136do, ((AbstractC3665s7) j4).f15396do, i42);
                        float f11 = i42.f15218for;
                        float f12 = ((BaseBarChartView) horizontalStackBarChartView).f9134try / 2.0f;
                        float f13 = f11 - f12;
                        float f14 = f12 + f11;
                        if (f10 > 0.0f) {
                            float f15 = (abs - f8) + m5241try;
                            if (i7 == m5232super) {
                                int i9 = (int) f13;
                                int i10 = (int) f15;
                                int i11 = (int) f14;
                                i = size;
                                i2 = m8055if;
                                float f16 = f5;
                                i3 = i6;
                                i4 = i7;
                                f2 = m5241try;
                                i5 = i8;
                                f4 = abs;
                                m5231final(canvas, (int) f5, i9, i10, i11);
                                if (m5232super != i5 && cdo.f9137for != 0.0f) {
                                    canvas.drawRect(new Rect((int) (f15 - ((f15 - f16) / 2.0f)), i9, i10, i11), cdo.f9136do);
                                }
                            } else {
                                i = size;
                                i2 = m8055if;
                                f2 = m5241try;
                                i3 = i6;
                                i5 = i8;
                                float f17 = f5;
                                i4 = i7;
                                f4 = abs;
                                if (i4 == i5) {
                                    int i12 = (int) f17;
                                    int i13 = (int) f13;
                                    int i14 = (int) f14;
                                    m5231final(canvas, i12, i13, (int) f15, i14);
                                    canvas.drawRect(new Rect(i12, i13, (int) (f17 + ((f15 - f17) / 2.0f)), i14), cdo.f9136do);
                                } else {
                                    canvas.drawRect(new Rect((int) f17, (int) f13, (int) f15, (int) f14), cdo.f9136do);
                                }
                            }
                            if (f4 != 0.0f) {
                                f8 -= f4 - 0.0f;
                            }
                            f5 = f15;
                            f6 = f9;
                            i7 = i4 + 1;
                            horizontalStackBarChartView = this;
                            arrayList2 = arrayList;
                            m5233throw = i5;
                            m5241try = f2;
                            size = i;
                            m8055if = i2;
                            i6 = i3;
                        } else {
                            i = size;
                            i2 = m8055if;
                            f2 = m5241try;
                            i3 = i6;
                            i5 = i8;
                            float f18 = f5;
                            i4 = i7;
                            float f19 = abs + f7;
                            float f20 = f2 - f19;
                            if (i4 == m5232super) {
                                int i15 = (int) f13;
                                int i16 = (int) f9;
                                int i17 = (int) f14;
                                f3 = f19;
                                f = f18;
                                m5231final(canvas, (int) f20, i15, i16, i17);
                                if (m5232super != i5 && cdo.f9137for != 0.0f) {
                                    canvas.drawRect(new Rect((int) (f9 - ((f9 - f20) / 2.0f)), i15, i16, i17), cdo.f9136do);
                                }
                            } else {
                                f3 = f19;
                                f = f18;
                                if (i4 == i5) {
                                    int i18 = (int) f20;
                                    int i19 = (int) f13;
                                    int i20 = (int) f14;
                                    m5231final(canvas, i18, i19, (int) f9, i20);
                                    canvas.drawRect(new Rect(i18, i19, (int) (((f9 - f20) / 2.0f) + f20), i20), cdo.f9136do);
                                } else {
                                    canvas.drawRect(new Rect((int) f20, (int) f13, (int) f9, (int) f14), cdo.f9136do);
                                }
                            }
                            f6 = f20;
                            if (abs != 0.0f) {
                                f7 = f3;
                            }
                            f5 = f;
                            i7 = i4 + 1;
                            horizontalStackBarChartView = this;
                            arrayList2 = arrayList;
                            m5233throw = i5;
                            m5241try = f2;
                            size = i;
                            m8055if = i2;
                            i6 = i3;
                        }
                    }
                }
                f = f5;
                i = size;
                i2 = m8055if;
                f2 = m5241try;
                i3 = i6;
                i4 = i7;
                i5 = m5233throw;
                f6 = f9;
                f5 = f;
                i7 = i4 + 1;
                horizontalStackBarChartView = this;
                arrayList2 = arrayList;
                m5233throw = i5;
                m5241try = f2;
                size = i;
                m8055if = i2;
                i6 = i3;
            }
            i6++;
            horizontalStackBarChartView = this;
            arrayList2 = arrayList;
        }
    }

    @Override // com.db.chart.view.ChartView
    /* renamed from: else */
    public final void mo5227else(ArrayList<AbstractC3665s7> arrayList) {
        if (arrayList.get(0).m8055if() != 1) {
            mo5229class(arrayList.get(0).m8054do(1).f15218for, arrayList.get(0).m8054do(0).f15218for, -1);
            return;
        }
        float f = ((ChartView) this).f9145do - ((ChartView) this).f9162new;
        m5239new();
        ((BaseBarChartView) this).f9134try = f - 0.0f;
    }

    @Override // com.db.chart.view.ChartView
    /* renamed from: for */
    public final ArrayList<ArrayList<Region>> mo5228for(ArrayList<AbstractC3665s7> arrayList) {
        int i;
        int i2;
        int i3;
        ArrayList<AbstractC3665s7> arrayList2 = arrayList;
        int size = arrayList.size();
        int m8055if = arrayList2.get(0).m8055if();
        ArrayList<ArrayList<Region>> arrayList3 = new ArrayList<>(size);
        for (int i4 = 0; i4 < size; i4++) {
            arrayList3.add(new ArrayList<>(m8055if));
        }
        float m5241try = m5241try();
        int i5 = 0;
        while (i5 < m8055if) {
            float f = 0.0f;
            float f2 = m5241try;
            float f3 = f2;
            int i6 = 0;
            float f4 = 0.0f;
            float f5 = 0.0f;
            while (i6 < size) {
                J4 j4 = (J4) arrayList2.get(i6);
                I4 i42 = (I4) j4.m8054do(i5);
                float abs = Math.abs(m5241try - i42.f15219if);
                if (((AbstractC3665s7) j4).f15398do) {
                    float f6 = ((AbstractC3606r7) i42).f15213do;
                    if (f6 != f && abs >= 2.0f) {
                        if (f6 > f) {
                            float f7 = (abs - f5) + m5241try;
                            ArrayList<Region> arrayList4 = arrayList3.get(i6);
                            float f8 = i42.f15218for;
                            i = size;
                            float f9 = ((BaseBarChartView) this).f9134try / 2.0f;
                            i2 = m8055if;
                            i3 = i5;
                            arrayList4.add(new Region((int) f3, (int) (f8 - f9), (int) f7, (int) (f9 + f8)));
                            f5 -= abs - 2.0f;
                            f3 = f7;
                        } else {
                            i = size;
                            i2 = m8055if;
                            i3 = i5;
                            f4 += abs;
                            float f10 = m5241try - f4;
                            ArrayList<Region> arrayList5 = arrayList3.get(i6);
                            float f11 = i42.f15218for;
                            float f12 = ((BaseBarChartView) this).f9134try / 2.0f;
                            arrayList5.add(new Region((int) f10, (int) (f11 - f12), (int) f2, (int) (f12 + f11)));
                            f2 = f10;
                        }
                        i6++;
                        arrayList2 = arrayList;
                        size = i;
                        m8055if = i2;
                        i5 = i3;
                        f = 0.0f;
                    }
                }
                i = size;
                i2 = m8055if;
                i3 = i5;
                i6++;
                arrayList2 = arrayList;
                size = i;
                m8055if = i2;
                i5 = i3;
                f = 0.0f;
            }
            i5++;
            arrayList2 = arrayList;
        }
        return arrayList3;
    }
}
