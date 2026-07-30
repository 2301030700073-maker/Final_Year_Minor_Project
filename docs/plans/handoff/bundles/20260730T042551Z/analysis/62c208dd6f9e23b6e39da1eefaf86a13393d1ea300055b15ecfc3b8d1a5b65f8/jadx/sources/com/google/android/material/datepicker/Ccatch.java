package com.google.android.material.datepicker;

import android.view.View;
import java.util.Calendar;

/* renamed from: com.google.android.material.datepicker.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cclass f10943do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f10944for;

    public Ccatch(Cclass cclass, int i) {
        this.f10943do = cclass;
        this.f10944for = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Cclass cclass = this.f10943do;
        Month m5793do = Month.m5793do(this.f10944for, cclass.f10945do.f10994do.f10925for);
        Cfor<?> cfor = cclass.f10945do;
        CalendarConstraints calendarConstraints = cfor.f10991do;
        Month month = calendarConstraints.f10900do;
        Calendar calendar = month.f10924do;
        Calendar calendar2 = m5793do.f10924do;
        if (calendar2.compareTo(calendar) < 0) {
            m5793do = month;
        } else {
            Month month2 = calendarConstraints.f10903if;
            if (calendar2.compareTo(month2.f10924do) > 0) {
                m5793do = month2;
            }
        }
        cfor.m5804try(m5793do);
        cfor.m5803case(1);
    }
}
