package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.joeykrim.rootcheck.R;
import defpackage.C3712sw;
import defpackage.C3841v6;
import defpackage.C3900w6;
import defpackage.NJ;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/* renamed from: com.google.android.material.datepicker.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto extends BaseAdapter {

    /* renamed from: do, reason: not valid java name */
    public static final int f11005do = NJ.m1521this(null).getMaximum(4);

    /* renamed from: if, reason: not valid java name */
    public static final int f11006if = (NJ.m1521this(null).getMaximum(7) + NJ.m1521this(null).getMaximum(5)) - 1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CalendarConstraints f11007do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DateSelector<?> f11008do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DayViewDecorator f11009do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Month f11010do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Collection<Long> f11011do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3900w6 f11012do;

    public Cgoto(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator) {
        this.f11010do = month;
        this.f11008do = dateSelector;
        this.f11007do = calendarConstraints;
        this.f11009do = dayViewDecorator;
        this.f11011do = dateSelector.a();
    }

    @Override // android.widget.Adapter
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Long getItem(int i) {
        if (i < m5806if()) {
            return null;
        }
        int m5806if = m5806if();
        Month month = this.f11010do;
        if (i > (m5806if + month.f10922case) - 1) {
            return null;
        }
        int m5806if2 = (i - m5806if()) + 1;
        Calendar m1520new = NJ.m1520new(month.f10924do);
        m1520new.set(5, m5806if2);
        return Long.valueOf(m1520new.getTimeInMillis());
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return f11006if;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i / this.f11010do.f10927try;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            r5 = this;
            android.content.Context r0 = r8.getContext()
            w6 r1 = r5.f11012do
            if (r1 != 0) goto Lf
            w6 r1 = new w6
            r1.<init>(r0)
            r5.f11012do = r1
        Lf:
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r7 != 0) goto L27
            android.content.Context r7 = r8.getContext()
            android.view.LayoutInflater r7 = android.view.LayoutInflater.from(r7)
            r0 = 2131427415(0x7f0b0057, float:1.8476446E38)
            android.view.View r7 = r7.inflate(r0, r8, r1)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
        L27:
            int r7 = r5.m5806if()
            int r7 = r6 - r7
            if (r7 < 0) goto L5d
            com.google.android.material.datepicker.Month r8 = r5.f11010do
            int r2 = r8.f10922case
            if (r7 < r2) goto L36
            goto L5d
        L36:
            r2 = 1
            int r7 = r7 + r2
            r0.setTag(r8)
            android.content.res.Resources r8 = r0.getResources()
            android.content.res.Configuration r8 = r8.getConfiguration()
            java.util.Locale r8 = r8.locale
            java.lang.Object[] r3 = new java.lang.Object[r2]
            java.lang.Integer r4 = java.lang.Integer.valueOf(r7)
            r3[r1] = r4
            java.lang.String r4 = "%d"
            java.lang.String r8 = java.lang.String.format(r8, r4, r3)
            r0.setText(r8)
            r0.setVisibility(r1)
            r0.setEnabled(r2)
            goto L66
        L5d:
            r7 = 8
            r0.setVisibility(r7)
            r0.setEnabled(r1)
            r7 = -1
        L66:
            java.lang.Long r6 = r5.getItem(r6)
            if (r6 != 0) goto L6d
            goto L74
        L6d:
            long r1 = r6.longValue()
            r5.m5807new(r0, r1, r7)
        L74:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.Cgoto.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m5806if() {
        int i = this.f11007do.f10901for;
        Month month = this.f11010do;
        Calendar calendar = month.f10924do;
        int i2 = calendar.get(7);
        if (i <= 0) {
            i = calendar.getFirstDayOfWeek();
        }
        int i3 = i2 - i;
        return i3 < 0 ? i3 + month.f10927try : i3;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5807new(TextView textView, long j, int i) {
        boolean z;
        boolean z2;
        String format;
        C3841v6 c3841v6;
        boolean z3;
        if (textView == null) {
            return;
        }
        Context context = textView.getContext();
        boolean z4 = NJ.m1518goto().getTimeInMillis() == j;
        DateSelector<?> dateSelector = this.f11008do;
        Iterator it = dateSelector.mo5789return().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Object obj = ((C3712sw) it.next()).f15568do;
            if (obj != null && ((Long) obj).longValue() == j) {
                z = true;
                break;
            }
        }
        Iterator it2 = dateSelector.mo5789return().iterator();
        while (true) {
            if (!it2.hasNext()) {
                z2 = false;
                break;
            }
            Object obj2 = ((C3712sw) it2.next()).f15569if;
            if (obj2 != null && ((Long) obj2).longValue() == j) {
                z2 = true;
                break;
            }
        }
        Calendar m1518goto = NJ.m1518goto();
        Calendar m1521this = NJ.m1521this(null);
        m1521this.setTimeInMillis(j);
        if (m1518goto.get(1) == m1521this.get(1)) {
            Locale locale = Locale.getDefault();
            format = Build.VERSION.SDK_INT >= 24 ? NJ.m1517for("MMMMEEEEd", locale).format(new Date(j)) : NJ.m1516else(0, locale).format(new Date(j));
        } else {
            Locale locale2 = Locale.getDefault();
            format = Build.VERSION.SDK_INT >= 24 ? NJ.m1517for("yMMMMEEEEd", locale2).format(new Date(j)) : NJ.m1516else(0, locale2).format(new Date(j));
        }
        if (z4) {
            format = String.format(context.getString(R.string.mtrl_picker_today_description), format);
        }
        if (z) {
            format = String.format(context.getString(R.string.mtrl_picker_start_date_description), format);
        } else if (z2) {
            format = String.format(context.getString(R.string.mtrl_picker_end_date_description), format);
        }
        textView.setContentDescription(format);
        if (this.f11007do.f10899do.mo5782this(j)) {
            textView.setEnabled(true);
            Iterator it3 = dateSelector.a().iterator();
            while (true) {
                if (!it3.hasNext()) {
                    z3 = false;
                    break;
                } else if (NJ.m1515do(j) == NJ.m1515do(((Long) it3.next()).longValue())) {
                    z3 = true;
                    break;
                }
            }
            textView.setSelected(z3);
            if (z3) {
                c3841v6 = this.f11012do.f16205if;
            } else {
                c3841v6 = NJ.m1518goto().getTimeInMillis() == j ? this.f11012do.f16204for : this.f11012do.f16202do;
            }
        } else {
            textView.setEnabled(false);
            c3841v6 = this.f11012do.f16203else;
        }
        if (this.f11009do == null || i == -1) {
            c3841v6.m8430if(textView);
            return;
        }
        int i2 = this.f11010do.f10926new;
        c3841v6.m8430if(textView);
        textView.setCompoundDrawables(null, null, null, null);
        textView.setContentDescription(format);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5808try(MaterialCalendarGridView materialCalendarGridView, long j) {
        Month m5794super = Month.m5794super(j);
        Month month = this.f11010do;
        if (m5794super.equals(month)) {
            Calendar m1520new = NJ.m1520new(month.f10924do);
            m1520new.setTimeInMillis(j);
            int i = m1520new.get(5);
            m5807new((TextView) materialCalendarGridView.getChildAt((materialCalendarGridView.getAdapter().m5806if() + (i - 1)) - materialCalendarGridView.getFirstVisiblePosition()), j, i);
        }
    }
}
