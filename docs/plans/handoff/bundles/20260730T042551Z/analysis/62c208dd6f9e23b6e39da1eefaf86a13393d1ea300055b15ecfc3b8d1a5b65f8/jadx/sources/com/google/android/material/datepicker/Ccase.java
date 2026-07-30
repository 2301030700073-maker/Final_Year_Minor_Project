package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import defpackage.NJ;
import java.util.Calendar;

/* renamed from: com.google.android.material.datepicker.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cbreak f10941do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cfor f10942do;

    public Ccase(Cfor cfor, Cbreak cbreak) {
        this.f10942do = cfor;
        this.f10941do = cbreak;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Cfor cfor = this.f10942do;
        int f0 = ((LinearLayoutManager) cfor.f10999if.f7312do).f0() + 1;
        if (f0 < cfor.f10999if.f7323do.mo1023for()) {
            Calendar m1520new = NJ.m1520new(this.f10941do.f10934do.f10900do.f10924do);
            m1520new.add(2, f0);
            cfor.m5804try(new Month(m1520new));
        }
    }
}
