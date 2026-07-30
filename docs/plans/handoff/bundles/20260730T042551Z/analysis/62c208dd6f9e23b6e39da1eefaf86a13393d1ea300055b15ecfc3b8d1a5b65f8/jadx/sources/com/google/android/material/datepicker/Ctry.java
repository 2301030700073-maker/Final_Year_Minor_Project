package com.google.android.material.datepicker;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import defpackage.NJ;
import java.util.Calendar;

/* renamed from: com.google.android.material.datepicker.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry extends RecyclerView.Cthrow {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ MaterialButton f11020do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cbreak f11021do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cfor f11022do;

    public Ctry(Cfor cfor, Cbreak cbreak, MaterialButton materialButton) {
        this.f11022do = cfor;
        this.f11021do = cbreak;
        this.f11020do = materialButton;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cthrow
    /* renamed from: do */
    public final void mo4457do(int i, RecyclerView recyclerView) {
        if (i == 0) {
            recyclerView.announceForAccessibility(this.f11020do.getText());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cthrow
    /* renamed from: if */
    public final void mo4458if(RecyclerView recyclerView, int i, int i2) {
        Cfor cfor = this.f11022do;
        int f0 = i < 0 ? ((LinearLayoutManager) cfor.f10999if.f7312do).f0() : ((LinearLayoutManager) cfor.f10999if.f7312do).g0();
        Cbreak cbreak = this.f11021do;
        Calendar m1520new = NJ.m1520new(cbreak.f10934do.f10900do.f10924do);
        m1520new.add(2, f0);
        cfor.f10994do = new Month(m1520new);
        Calendar m1520new2 = NJ.m1520new(cbreak.f10934do.f10900do.f10924do);
        m1520new2.add(2, f0);
        this.f11020do.setText(new Month(m1520new2).m5795throw());
    }
}
