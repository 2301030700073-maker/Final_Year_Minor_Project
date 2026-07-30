package com.google.android.material.datepicker;

import android.content.Context;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.joeykrim.rootcheck.R;
import defpackage.C3841v6;
import defpackage.C3900w6;
import defpackage.Cpublic;
import defpackage.NJ;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* renamed from: com.google.android.material.datepicker.class, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cclass extends RecyclerView.Ctry<Cdo> {

    /* renamed from: do, reason: not valid java name */
    public final Cfor<?> f10945do;

    /* renamed from: com.google.android.material.datepicker.class$do, reason: invalid class name */
    public static class Cdo extends RecyclerView.Cdefault {

        /* renamed from: do, reason: not valid java name */
        public final TextView f10946do;

        public Cdo(TextView textView) {
            super(textView);
            this.f10946do = textView;
        }
    }

    public Cclass(Cfor<?> cfor) {
        this.f10945do = cfor;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: for */
    public final int mo1023for() {
        return this.f10945do.f10991do.f10904new;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: goto */
    public final void mo1024goto(Cdo cdo, int i) {
        Cfor<?> cfor = this.f10945do;
        int i2 = cfor.f10991do.f10900do.f10926new + i;
        String format = String.format(Locale.getDefault(), "%d", Integer.valueOf(i2));
        TextView textView = cdo.f10946do;
        textView.setText(format);
        Context context = textView.getContext();
        textView.setContentDescription(NJ.m1518goto().get(1) == i2 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i2)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i2)));
        C3900w6 c3900w6 = cfor.f10995do;
        Calendar m1518goto = NJ.m1518goto();
        C3841v6 c3841v6 = m1518goto.get(1) == i2 ? c3900w6.f16200case : c3900w6.f16206new;
        Iterator it = cfor.f10992do.a().iterator();
        while (it.hasNext()) {
            m1518goto.setTimeInMillis(((Long) it.next()).longValue());
            if (m1518goto.get(1) == i2) {
                c3841v6 = c3900w6.f16207try;
            }
        }
        c3841v6.m8430if(textView);
        textView.setOnClickListener(new Ccatch(this, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: this */
    public final RecyclerView.Cdefault mo1027this(RecyclerView recyclerView, int i) {
        return new Cdo((TextView) Cpublic.m7826new(recyclerView, R.layout.mtrl_calendar_year, recyclerView, false));
    }
}
