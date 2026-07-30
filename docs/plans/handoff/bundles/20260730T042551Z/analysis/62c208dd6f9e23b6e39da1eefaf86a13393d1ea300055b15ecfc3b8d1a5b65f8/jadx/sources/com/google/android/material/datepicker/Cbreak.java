package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.Cfor;
import com.joeykrim.rootcheck.R;
import defpackage.C3385nL;
import defpackage.Cpublic;
import defpackage.NJ;
import defpackage.PK;
import defpackage.QK;
import java.util.Calendar;
import java.util.Iterator;
import java.util.WeakHashMap;

/* renamed from: com.google.android.material.datepicker.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak extends RecyclerView.Ctry<Cdo> {

    /* renamed from: do, reason: not valid java name */
    public final CalendarConstraints f10934do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DateSelector<?> f10935do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DayViewDecorator f10936do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor.Cnew f10937do;

    /* renamed from: if, reason: not valid java name */
    public final int f10938if;

    /* renamed from: com.google.android.material.datepicker.break$do, reason: invalid class name */
    public static class Cdo extends RecyclerView.Cdefault {

        /* renamed from: do, reason: not valid java name */
        public final TextView f10939do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final MaterialCalendarGridView f10940do;

        public Cdo(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
            this.f10939do = textView;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            new PK().m1917try(textView, Boolean.TRUE);
            this.f10940do = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
            if (z) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    public Cbreak(ContextThemeWrapper contextThemeWrapper, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator, Cfor.C0070for c0070for) {
        Calendar calendar = calendarConstraints.f10900do.f10924do;
        Month month = calendarConstraints.f10902for;
        if (calendar.compareTo(month.f10924do) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (month.f10924do.compareTo(calendarConstraints.f10903if.f10924do) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int i = Cgoto.f11005do;
        int i2 = Cfor.f10988try;
        this.f10938if = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i) + (Celse.m5797case(contextThemeWrapper) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f10934do = calendarConstraints;
        this.f10935do = dateSelector;
        this.f10936do = dayViewDecorator;
        this.f10937do = c0070for;
        m4465const();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: for */
    public final int mo1023for() {
        return this.f10934do.f10905try;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: goto */
    public final void mo1024goto(Cdo cdo, int i) {
        Cdo cdo2 = cdo;
        CalendarConstraints calendarConstraints = this.f10934do;
        Calendar m1520new = NJ.m1520new(calendarConstraints.f10900do.f10924do);
        m1520new.add(2, i);
        Month month = new Month(m1520new);
        cdo2.f10939do.setText(month.m5795throw());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) cdo2.f10940do.findViewById(R.id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !month.equals(materialCalendarGridView.getAdapter().f11010do)) {
            Cgoto cgoto = new Cgoto(month, this.f10935do, calendarConstraints, this.f10936do);
            materialCalendarGridView.setNumColumns(month.f10927try);
            materialCalendarGridView.setAdapter((ListAdapter) cgoto);
        } else {
            materialCalendarGridView.invalidate();
            Cgoto adapter = materialCalendarGridView.getAdapter();
            Iterator<Long> it = adapter.f11011do.iterator();
            while (it.hasNext()) {
                adapter.m5808try(materialCalendarGridView, it.next().longValue());
            }
            DateSelector<?> dateSelector = adapter.f11008do;
            if (dateSelector != null) {
                Iterator it2 = dateSelector.a().iterator();
                while (it2.hasNext()) {
                    adapter.m5808try(materialCalendarGridView, ((Long) it2.next()).longValue());
                }
                adapter.f11011do = dateSelector.a();
            }
        }
        materialCalendarGridView.setOnItemClickListener(new Cthis(this, materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: new */
    public final long mo1026new(int i) {
        Calendar m1520new = NJ.m1520new(this.f10934do.f10900do.f10924do);
        m1520new.add(2, i);
        return new Month(m1520new).f10924do.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: this */
    public final RecyclerView.Cdefault mo1027this(RecyclerView recyclerView, int i) {
        LinearLayout linearLayout = (LinearLayout) Cpublic.m7826new(recyclerView, R.layout.mtrl_calendar_month_labeled, recyclerView, false);
        if (!Celse.m5797case(recyclerView.getContext())) {
            return new Cdo(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f10938if));
        return new Cdo(linearLayout, true);
    }
}
