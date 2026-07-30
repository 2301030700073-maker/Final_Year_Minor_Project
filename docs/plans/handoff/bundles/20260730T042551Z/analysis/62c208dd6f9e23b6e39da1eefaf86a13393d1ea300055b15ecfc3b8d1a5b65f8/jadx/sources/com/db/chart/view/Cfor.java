package com.db.chart.view;

import java.util.Collections;

/* renamed from: com.db.chart.view.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor extends Cdo {
    public Cfor(ChartView chartView) {
        super(chartView);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5246case() {
        m5248new();
        m5249try();
        ChartView chartView = ((Cdo) this).f9182do;
        int i = chartView.f9162new;
        float f = i;
        float f2 = chartView.f9164try;
        if (((Cdo) this).f9194new == 1.0f) {
            ((Cdo) this).f9194new = (((f2 - f) - 0.0f) / ((Cdo) this).f9191if) / 2.0f;
        }
        mo5243do(i, chartView.f9145do);
    }

    @Override // com.db.chart.view.Cdo
    /* renamed from: do */
    public final void mo5243do(float f, float f2) {
        super.mo5243do(f, f2);
        Collections.reverse(((Cdo) this).f9189for);
    }

    /* renamed from: else, reason: not valid java name */
    public final float m5247else(int i, double d) {
        return ((Cdo) this).f9193if ? (float) (((Cdo) ((Cdo) this).f9182do.f9151do).f9187for - (((d - this.f9179case) * ((Cdo) this).f9190if) / (((Cdo) this).f9192if.get(1).intValue() - this.f9179case))) : ((Cdo) this).f9189for.get(i).floatValue();
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5248new() {
        ChartView chartView = ((Cdo) this).f9182do;
        float f = chartView.f9159if;
        ((Cdo) this).f9187for = f;
        if (((Cdo) this).f9185do) {
            ((Cdo) this).f9187for = f - (chartView.f9149do.f9166do / 2.0f);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5249try() {
        float f = ((Cdo) this).f9187for;
        ((Cdo) this).f9180do = f;
        int i = ((Cdo) this).f9188for;
        ChartView chartView = ((Cdo) this).f9182do;
        if (i == 3) {
            float f2 = f + ((Cdo) this).f9181do;
            ((Cdo) this).f9180do = f2;
            if (((Cdo) this).f9185do) {
                ((Cdo) this).f9180do = (chartView.f9149do.f9166do / 2.0f) + f2;
                return;
            }
            return;
        }
        if (i == 2) {
            float f3 = f - ((Cdo) this).f9181do;
            ((Cdo) this).f9180do = f3;
            if (((Cdo) this).f9185do) {
                ((Cdo) this).f9180do = f3 - (chartView.f9149do.f9166do / 2.0f);
            }
        }
    }
}
