package com.db.chart.view;

/* renamed from: com.db.chart.view.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif extends Cdo {
    public Cif(ChartView chartView) {
        super(chartView);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5250case() {
        m5252new();
        m5253try();
        ChartView chartView = ((Cdo) this).f9182do;
        float f = chartView.f9159if;
        float f2 = chartView.f9155else;
        if (((Cdo) this).f9194new == 1.0f) {
            ((Cdo) this).f9194new = (((f2 - f) - 0.0f) / ((Cdo) this).f9191if) / 2.0f;
        }
        mo5243do(f, chartView.f9156for);
    }

    /* renamed from: else, reason: not valid java name */
    public final float m5251else(int i, double d) {
        if (!((Cdo) this).f9193if) {
            return ((Cdo) this).f9189for.get(i).floatValue();
        }
        return (float) ((((d - this.f9179case) * ((Cdo) this).f9190if) / (((Cdo) this).f9192if.get(1).intValue() - this.f9179case)) + ((Cdo) this).f9182do.f9159if);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5252new() {
        ChartView chartView = ((Cdo) this).f9182do;
        float f = chartView.f9145do;
        ((Cdo) this).f9187for = f;
        if (((Cdo) this).f9185do) {
            ((Cdo) this).f9187for = (chartView.f9149do.f9166do / 2.0f) + f;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5253try() {
        float f = ((Cdo) this).f9187for;
        ((Cdo) this).f9180do = f;
        int i = ((Cdo) this).f9188for;
        ChartView chartView = ((Cdo) this).f9182do;
        if (i == 3) {
            float f2 = f - ((Cdo) this).f9181do;
            ((Cdo) this).f9180do = f2;
            float descent = f2 - chartView.f9149do.f9170for.descent();
            ((Cdo) this).f9180do = descent;
            if (((Cdo) this).f9185do) {
                ((Cdo) this).f9180do = descent - (chartView.f9149do.f9166do / 2.0f);
                return;
            }
            return;
        }
        if (i == 2) {
            float f3 = f + ((Cdo) this).f9181do;
            ((Cdo) this).f9180do = f3;
            float m5245if = (m5245if() - chartView.f9149do.f9170for.descent()) + f3;
            ((Cdo) this).f9180do = m5245if;
            if (((Cdo) this).f9185do) {
                ((Cdo) this).f9180do = (chartView.f9149do.f9166do / 2.0f) + m5245if;
            }
        }
    }
}
