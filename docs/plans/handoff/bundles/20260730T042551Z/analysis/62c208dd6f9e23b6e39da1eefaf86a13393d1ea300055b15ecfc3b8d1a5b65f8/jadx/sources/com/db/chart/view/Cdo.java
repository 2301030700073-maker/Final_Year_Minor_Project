package com.db.chart.view;

import com.joeykrim.rootcheck.R;
import defpackage.AbstractC3606r7;
import defpackage.AbstractC3665s7;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.db.chart.view.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f9181do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ChartView f9182do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList<String> f9184do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ArrayList<Float> f9189for;

    /* renamed from: if, reason: not valid java name */
    public float f9190if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f9191if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ArrayList<Integer> f9192if;

    /* renamed from: new, reason: not valid java name */
    public float f9194new = 0.0f;

    /* renamed from: else, reason: not valid java name */
    public int f9186else = 1;

    /* renamed from: do, reason: not valid java name */
    public float f9180do = 0.0f;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f9188for = 2;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public DecimalFormat f9183do = new DecimalFormat();

    /* renamed from: for, reason: not valid java name */
    public float f9187for = 0.0f;

    /* renamed from: case, reason: not valid java name */
    public int f9179case = 0;

    /* renamed from: try, reason: not valid java name */
    public int f9196try = 0;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f9195new = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9185do = true;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f9193if = false;

    public Cdo(ChartView chartView) {
        this.f9182do = chartView;
        this.f9181do = (int) chartView.getResources().getDimension(R.dimen.axis_dist_from_label);
    }

    /* renamed from: do, reason: not valid java name */
    public void mo5243do(float f, float f2) {
        this.f9189for = new ArrayList<>(this.f9191if);
        float f3 = this.f9194new;
        this.f9190if = ((((f2 - f) - 0.0f) - 0.0f) - (2.0f * f3)) / (this.f9191if - 1);
        float f4 = f + 0.0f + f3;
        for (int i = 0; i < this.f9191if; i++) {
            this.f9189for.add(Float.valueOf(f4));
            f4 += this.f9190if;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5244for() {
        int i;
        int i2;
        int i3;
        boolean z = this.f9193if;
        ChartView chartView = this.f9182do;
        if (z) {
            Iterator<AbstractC3665s7> it = chartView.f9153do.iterator();
            float f = -2.1474836E9f;
            float f2 = 2.1474836E9f;
            while (it.hasNext()) {
                Iterator<AbstractC3606r7> it2 = it.next().f15397do.iterator();
                while (it2.hasNext()) {
                    float f3 = it2.next().f15213do;
                    if (f3 >= f) {
                        f = f3;
                    }
                    if (f3 <= f2) {
                        f2 = f3;
                    }
                }
            }
            if (this.f9179case == 0 && this.f9196try == 0) {
                if (f < 0.0f) {
                    this.f9196try = 0;
                } else {
                    this.f9196try = (int) Math.ceil(f);
                }
                if (f2 > 0.0f) {
                    this.f9179case = 0;
                } else {
                    this.f9179case = (int) Math.floor(f2);
                }
                while (true) {
                    i = this.f9196try;
                    i2 = this.f9179case;
                    i3 = this.f9186else;
                    if ((i - i2) % i3 == 0) {
                        break;
                    } else {
                        this.f9196try = i + 1;
                    }
                }
                if (i2 == i) {
                    this.f9196try = i + i3;
                }
            }
            ArrayList<Integer> arrayList = new ArrayList<>();
            int i4 = this.f9179case;
            while (i4 <= this.f9196try) {
                arrayList.add(Integer.valueOf(i4));
                i4 += this.f9186else;
            }
            int intValue = arrayList.get(arrayList.size() - 1).intValue();
            int i5 = this.f9196try;
            if (intValue < i5) {
                arrayList.add(Integer.valueOf(i5));
            }
            this.f9192if = arrayList;
            int size = arrayList.size();
            ArrayList<String> arrayList2 = new ArrayList<>(size);
            for (int i6 = 0; i6 < size; i6++) {
                arrayList2.add(this.f9183do.format(this.f9192if.get(i6)));
            }
            this.f9184do = arrayList2;
        } else {
            int m8055if = chartView.f9153do.get(0).m8055if();
            ArrayList<String> arrayList3 = new ArrayList<>(m8055if);
            for (int i7 = 0; i7 < m8055if; i7++) {
                arrayList3.add(chartView.f9153do.get(0).f15397do.get(i7).f15215do);
            }
            this.f9184do = arrayList3;
        }
        this.f9191if = this.f9184do.size();
    }

    /* renamed from: if, reason: not valid java name */
    public final int m5245if() {
        if (this.f9195new == -1) {
            ChartView chartView = this.f9182do;
            this.f9195new = (int) (chartView.f9149do.f9170for.descent() - chartView.f9149do.f9170for.ascent());
        }
        return this.f9195new;
    }
}
