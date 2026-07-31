package com.google.android.material.datepicker;

import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Calendar;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.games.onthisday.DateDecorator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MonthAdapter extends BaseAdapter {
    public final CalendarConstraints calendarConstraints;
    public FragmentNewsBinding calendarStyle;
    public final SingleDateSelector dateSelector;
    public final DateDecorator dayViewDecorator;
    public final Month month;
    public ArrayList previouslySelectedDates;
    public static final int MAXIMUM_WEEKS = UtcDates.getUtcCalendarOf(null).getMaximum(4);
    public static final int MAXIMUM_GRID_CELLS = (UtcDates.getUtcCalendarOf(null).getMaximum(7) + UtcDates.getUtcCalendarOf(null).getMaximum(5)) - 1;

    public MonthAdapter(Month month, SingleDateSelector singleDateSelector, CalendarConstraints calendarConstraints, DateDecorator dateDecorator) {
        this.month = month;
        this.dateSelector = singleDateSelector;
        this.calendarConstraints = calendarConstraints;
        this.dayViewDecorator = dateDecorator;
        this.previouslySelectedDates = singleDateSelector.getSelectedDays();
    }

    public final int findNextValidDayPosition(int i) {
        do {
            i++;
            if (i > lastPositionInMonth()) {
                return -1;
            }
        } while (!isDayPositionValid(i));
        return i;
    }

    public final int findPreviousValidDayPosition(int i) {
        do {
            i--;
            if (i < firstPositionInMonth()) {
                return -1;
            }
        } while (!isDayPositionValid(i));
        return i;
    }

    public final int firstPositionInMonth() {
        int i = this.calendarConstraints.firstDayOfWeek;
        Month month = this.month;
        Calendar calendar = month.firstOfMonth;
        int i2 = calendar.get(7);
        if (i <= 0) {
            i = calendar.getFirstDayOfWeek();
        }
        int i3 = i2 - i;
        return i3 < 0 ? i3 + month.daysInWeek : i3;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return MAXIMUM_GRID_CELLS;
    }

    @Override // android.widget.Adapter
    public final Long getItem(int i) {
        if (i < firstPositionInMonth() || i > lastPositionInMonth()) {
            return null;
        }
        int firstPositionInMonth = (i - firstPositionInMonth()) + 1;
        Calendar dayCopy = UtcDates.getDayCopy(this.month.firstOfMonth);
        dayCopy.set(5, firstPositionInMonth);
        return Long.valueOf(dayCopy.getTimeInMillis());
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i / this.month.daysInWeek;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            r5 = this;
            android.content.Context r0 = r8.getContext()
            org.wikipedia.databinding.FragmentNewsBinding r1 = r5.calendarStyle
            if (r1 != 0) goto Lf
            org.wikipedia.databinding.FragmentNewsBinding r1 = new org.wikipedia.databinding.FragmentNewsBinding
            r1.<init>(r0)
            r5.calendarStyle = r1
        Lf:
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r7 != 0) goto L27
            android.content.Context r7 = r8.getContext()
            android.view.LayoutInflater r7 = android.view.LayoutInflater.from(r7)
            r0 = 2131493705(0x7f0c0349, float:1.8610898E38)
            android.view.View r7 = r7.inflate(r0, r8, r1)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
        L27:
            int r7 = r5.firstPositionInMonth()
            int r7 = r6 - r7
            if (r7 < 0) goto L5d
            com.google.android.material.datepicker.Month r8 = r5.month
            int r2 = r8.daysInMonth
            if (r7 < r2) goto L36
            goto L5d
        L36:
            r2 = 1
            int r7 = r7 + r2
            r0.setTag(r8)
            android.content.res.Resources r8 = r0.getResources()
            android.content.res.Configuration r8 = r8.getConfiguration()
            java.util.Locale r8 = r8.locale
            java.lang.Integer r3 = java.lang.Integer.valueOf(r7)
            java.lang.Object[] r4 = new java.lang.Object[r2]
            r4[r1] = r3
            java.lang.String r3 = "%d"
            java.lang.String r8 = java.lang.String.format(r8, r3, r4)
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
            return r0
        L6d:
            long r1 = r6.longValue()
            r5.updateSelectedState(r0, r1, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.MonthAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }

    public final boolean isDayPositionValid(int i) {
        Long item = getItem(i);
        return item != null && this.calendarConstraints.validator.isValid(item.longValue());
    }

    public final int lastPositionInMonth() {
        return (firstPositionInMonth() + this.month.daysInMonth) - 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateSelectedState(android.widget.TextView r18, long r19, int r21) {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.MonthAdapter.updateSelectedState(android.widget.TextView, long, int):void");
    }

    public final void updateSelectedStateForDate(MaterialCalendarGridView materialCalendarGridView, long j) {
        Month create = Month.create(j);
        Month month = this.month;
        if (create.equals(month)) {
            Calendar dayCopy = UtcDates.getDayCopy(month.firstOfMonth);
            dayCopy.setTimeInMillis(j);
            int i = dayCopy.get(5);
            updateSelectedState((TextView) materialCalendarGridView.getChildAt((materialCalendarGridView.getAdapter().firstPositionInMonth() + (i - 1)) - materialCalendarGridView.getFirstVisiblePosition()), j, i);
        }
    }
}
