package com.db.chart.view;

import android.content.Context;
import android.util.AttributeSet;
import defpackage.AbstractC3606r7;
import defpackage.AbstractC3665s7;
import defpackage.I4;
import defpackage.J4;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class BaseStackBarChartView extends BaseBarChartView {

    /* renamed from: for, reason: not valid java name */
    public final boolean f9140for;

    public BaseStackBarChartView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9140for = true;
    }

    /* renamed from: super, reason: not valid java name */
    public static int m5232super(int i, ArrayList<AbstractC3665s7> arrayList) {
        boolean z;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                z = false;
                break;
            }
            if (arrayList.get(i3).m8054do(i).f15213do < 0.0f) {
                z = true;
                break;
            }
            i3++;
        }
        if (!z) {
            while (i2 < size && arrayList.get(i2).m8054do(i).f15213do == 0.0f) {
                i2++;
            }
            return i2;
        }
        int i4 = size - 1;
        while (i4 >= 0 && arrayList.get(i4).m8054do(i).f15213do >= 0.0f) {
            i4--;
        }
        return i4;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m5233throw(int i, ArrayList<AbstractC3665s7> arrayList) {
        boolean z;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                z = false;
                break;
            }
            if (arrayList.get(i3).m8054do(i).f15213do > 0.0f) {
                z = true;
                break;
            }
            i3++;
        }
        if (!z) {
            while (i2 < size && arrayList.get(i2).m8054do(i).f15213do == 0.0f) {
                i2++;
            }
            return i2;
        }
        int i4 = size - 1;
        while (i4 >= 0 && arrayList.get(i4).m8054do(i).f15213do <= 0.0f) {
            i4--;
        }
        return i4;
    }

    @Override // com.db.chart.view.ChartView
    /* renamed from: catch, reason: not valid java name */
    public final void mo5234catch() {
        Cfor cfor;
        Cif cif;
        int i;
        if (this.f9140for) {
            int size = ((ChartView) this).f9153do.size();
            int m8055if = ((ChartView) this).f9153do.get(0).m8055if();
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < m8055if; i4++) {
                float f = 0.0f;
                float f2 = 0.0f;
                for (int i5 = 0; i5 < size; i5++) {
                    float f3 = ((AbstractC3606r7) ((I4) ((J4) ((ChartView) this).f9153do.get(i5)).m8054do(i4))).f15213do;
                    if (f3 >= 0.0f) {
                        f += f3;
                    } else {
                        f2 += f3;
                    }
                }
                double d = f;
                if (i2 < ((int) Math.ceil(d))) {
                    i2 = (int) Math.ceil(d);
                }
                double d2 = f2 * (-1.0f);
                if (i3 > ((int) Math.ceil(d2)) * (-1)) {
                    i3 = ((int) Math.ceil(d2)) * (-1);
                }
            }
            while (true) {
                int i6 = ((ChartView) this).f9157for;
                cfor = ((ChartView) this).f9150do;
                cif = ((ChartView) this).f9151do;
                if (i2 % (i6 == 2 ? cfor.f9186else : cif.f9186else) == 0) {
                    break;
                } else {
                    i2++;
                }
            }
            while (true) {
                i = ((ChartView) this).f9157for;
                if (i3 % (i == 2 ? cfor.f9186else : cif.f9186else) == 0) {
                    break;
                } else {
                    i3--;
                }
            }
            int i7 = i == 2 ? cfor.f9186else : cif.f9186else;
            if (i == 2) {
                cfor.getClass();
                if ((i2 - i3) % i7 != 0) {
                    throw new IllegalArgumentException("Step value must be a divisor of distance between minValue and maxValue");
                }
                cfor.f9186else = i7;
                cfor.f9196try = i2;
                cfor.f9179case = i3;
            } else {
                cif.getClass();
                if ((i2 - i3) % i7 != 0) {
                    throw new IllegalArgumentException("Step value must be a divisor of distance between minValue and maxValue");
                }
                cif.f9186else = i7;
                cif.f9196try = i2;
                cif.f9179case = i3;
            }
        }
        super.mo5234catch();
    }

    @Override // com.db.chart.view.BaseBarChartView
    /* renamed from: class */
    public final void mo5229class(float f, float f2, int i) {
        ((BaseBarChartView) this).f9134try = (f2 - f) - ((BaseBarChartView) this).f9132do.f9135do;
    }
}
