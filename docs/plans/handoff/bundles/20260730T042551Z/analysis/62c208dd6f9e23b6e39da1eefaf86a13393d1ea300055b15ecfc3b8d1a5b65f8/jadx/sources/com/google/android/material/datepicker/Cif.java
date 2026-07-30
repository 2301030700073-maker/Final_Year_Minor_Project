package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import defpackage.NJ;
import java.util.Calendar;

/* renamed from: com.google.android.material.datepicker.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cbreak f11013do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cfor f11014do;

    public Cif(Cfor cfor, Cbreak cbreak) {
        this.f11014do = cfor;
        this.f11013do = cbreak;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Cfor cfor = this.f11014do;
        int g0 = ((LinearLayoutManager) cfor.f10999if.f7312do).g0() - 1;
        if (g0 >= 0) {
            Calendar m1520new = NJ.m1520new(this.f11013do.f10934do.f10900do.f10924do);
            m1520new.add(2, g0);
            cfor.m5804try(new Month(m1520new));
        }
    }
}
