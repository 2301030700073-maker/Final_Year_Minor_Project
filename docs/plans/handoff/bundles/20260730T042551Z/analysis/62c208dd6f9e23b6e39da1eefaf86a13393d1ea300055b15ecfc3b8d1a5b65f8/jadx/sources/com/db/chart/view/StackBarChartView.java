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
public class StackBarChartView extends BaseStackBarChartView {
    public StackBarChartView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5240this(2);
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
        StackBarChartView stackBarChartView = this;
        ArrayList<AbstractC3665s7> arrayList2 = arrayList;
        int size = arrayList.size();
        int m8055if = arrayList2.get(0).m8055if();
        float m5241try = m5241try();
        int i6 = 0;
        while (i6 < m8055if) {
            BaseBarChartView.Cdo cdo = ((BaseBarChartView) stackBarChartView).f9132do;
            cdo.getClass();
            int m5232super = BaseStackBarChartView.m5232super(i6, arrayList2);
            int m5233throw = BaseStackBarChartView.m5233throw(i6, arrayList2);
            float f4 = m5241try;
            float f5 = f4;
            int i7 = 0;
            float f6 = 0.0f;
            float f7 = 0.0f;
            while (i7 < size) {
                J4 j4 = (J4) arrayList2.get(i7);
                I4 i42 = (I4) j4.m8054do(i6);
                float abs = Math.abs(m5241try - i42.f15218for);
                float f8 = f5;
                if (((AbstractC3665s7) j4).f15398do) {
                    float f9 = ((AbstractC3606r7) i42).f15213do;
                    if (f9 != 0.0f && abs >= 2.0f) {
                        int i8 = m5233throw;
                        cdo.f9136do.setColor(((AbstractC3606r7) i42).f15214do);
                        cdo.f9136do.setAlpha((int) (((AbstractC3665s7) j4).f15396do * 255.0f));
                        ChartView.m5235if(cdo.f9136do, ((AbstractC3665s7) j4).f15396do, i42);
                        float f10 = i42.f15219if;
                        float f11 = ((BaseBarChartView) stackBarChartView).f9134try / 2.0f;
                        float f12 = f10 - f11;
                        float f13 = f11 + f10;
                        if (f9 > 0.0f) {
                            float f14 = m5241try - (abs + f7);
                            if (i7 == m5232super) {
                                int i9 = (int) f12;
                                int i10 = (int) f14;
                                int i11 = (int) f13;
                                i = size;
                                i2 = m8055if;
                                float f15 = f4;
                                i3 = i6;
                                i4 = i7;
                                f2 = m5241try;
                                i5 = i8;
                                f3 = abs;
                                m5231final(canvas, i9, i10, i11, (int) f4);
                                if (m5232super != i5 && cdo.f9137for != 0.0f) {
                                    canvas.drawRect(new Rect(i9, i10, i11, (int) (((f15 - f14) / 2.0f) + f14)), cdo.f9136do);
                                }
                            } else {
                                i = size;
                                i2 = m8055if;
                                f2 = m5241try;
                                i3 = i6;
                                i5 = i8;
                                float f16 = f4;
                                i4 = i7;
                                f3 = abs;
                                if (i4 == i5) {
                                    int i12 = (int) f12;
                                    int i13 = (int) f13;
                                    int i14 = (int) f16;
                                    m5231final(canvas, i12, (int) f14, i13, i14);
                                    canvas.drawRect(new Rect(i12, (int) (f16 - ((f16 - f14) / 2.0f)), i13, i14), cdo.f9136do);
                                } else {
                                    canvas.drawRect(new Rect((int) f12, (int) f14, (int) f13, (int) f16), cdo.f9136do);
                                }
                            }
                            if (f3 != 0.0f) {
                                f7 = f3 + 2.0f + f7;
                            }
                            f4 = f14;
                            f5 = f8;
                            i7 = i4 + 1;
                            stackBarChartView = this;
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
                            float f17 = f4;
                            i4 = i7;
                            float f18 = (abs - f6) + f2;
                            if (i4 == m5232super) {
                                int i15 = (int) f12;
                                int i16 = (int) f8;
                                int i17 = (int) f13;
                                f = f17;
                                m5231final(canvas, i15, i16, i17, (int) f18);
                                if (m5232super != i5 && cdo.f9137for != 0.0f) {
                                    canvas.drawRect(new Rect(i15, i16, i17, (int) (f8 + ((f18 - f8) / 2.0f))), cdo.f9136do);
                                }
                            } else {
                                f = f17;
                                if (i4 == i5) {
                                    int i18 = (int) f12;
                                    int i19 = (int) f13;
                                    int i20 = (int) f18;
                                    m5231final(canvas, i18, (int) f8, i19, i20);
                                    canvas.drawRect(new Rect(i18, (int) (f18 - ((f18 - f8) / 2.0f)), i19, i20), cdo.f9136do);
                                } else {
                                    canvas.drawRect(new Rect((int) f12, (int) f8, (int) f13, (int) f18), cdo.f9136do);
                                }
                            }
                            if (abs != 0.0f) {
                                f6 -= abs;
                            }
                            f5 = f18;
                            f4 = f;
                            i7 = i4 + 1;
                            stackBarChartView = this;
                            arrayList2 = arrayList;
                            m5233throw = i5;
                            m5241try = f2;
                            size = i;
                            m8055if = i2;
                            i6 = i3;
                        }
                    }
                }
                f = f4;
                i = size;
                i2 = m8055if;
                f2 = m5241try;
                i3 = i6;
                i4 = i7;
                i5 = m5233throw;
                f5 = f8;
                f4 = f;
                i7 = i4 + 1;
                stackBarChartView = this;
                arrayList2 = arrayList;
                m5233throw = i5;
                m5241try = f2;
                size = i;
                m8055if = i2;
                i6 = i3;
            }
            i6++;
            stackBarChartView = this;
            arrayList2 = arrayList;
        }
    }

    @Override // com.db.chart.view.ChartView
    /* renamed from: else */
    public final void mo5227else(ArrayList<AbstractC3665s7> arrayList) {
        if (arrayList.get(0).m8055if() != 1) {
            mo5229class(arrayList.get(0).m8054do(0).f15219if, arrayList.get(0).m8054do(1).f15219if, -1);
            return;
        }
        float f = ((ChartView) this).f9156for - ((ChartView) this).f9159if;
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
                float abs = Math.abs(m5241try - i42.f15218for);
                if (((AbstractC3665s7) j4).f15398do) {
                    float f6 = ((AbstractC3606r7) i42).f15213do;
                    if (f6 != f && abs >= 2.0f) {
                        if (f6 > f) {
                            float f7 = m5241try - (abs + f5);
                            ArrayList<Region> arrayList4 = arrayList3.get(i6);
                            float f8 = i42.f15219if;
                            i = size;
                            float f9 = ((BaseBarChartView) this).f9134try / 2.0f;
                            i2 = m8055if;
                            i3 = i5;
                            arrayList4.add(new Region((int) (f8 - f9), (int) f7, (int) (f9 + f8), (int) f3));
                            f5 += abs + 2.0f;
                            f3 = f7;
                        } else {
                            i = size;
                            i2 = m8055if;
                            i3 = i5;
                            float f10 = (abs - f4) + m5241try;
                            ArrayList<Region> arrayList5 = arrayList3.get(i6);
                            float f11 = i42.f15219if;
                            float f12 = ((BaseBarChartView) this).f9134try / 2.0f;
                            arrayList5.add(new Region((int) (f11 - f12), (int) f2, (int) (f12 + f11), (int) f10));
                            f4 -= abs;
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
