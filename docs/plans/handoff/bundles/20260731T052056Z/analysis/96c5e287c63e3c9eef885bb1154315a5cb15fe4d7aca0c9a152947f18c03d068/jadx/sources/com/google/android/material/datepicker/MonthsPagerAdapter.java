package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.datepicker.MaterialDatePicker;
import java.util.Calendar;
import java.util.Iterator;
import java.util.WeakHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.games.onthisday.DateDecorator;
import org.wikipedia.language.LanguageUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MonthsPagerAdapter extends RecyclerView.Adapter {
    public final CalendarConstraints calendarConstraints;
    public final SingleDateSelector dateSelector;
    public final DateDecorator dayViewDecorator;
    public final int itemHeight;
    public int keyboardFocusDirection = 0;
    public final MaterialCalendar.AnonymousClass3 onDayClickListener;
    public final MaterialCalendar.AnonymousClass3 onMonthNavigationListener;
    public Month visibleMonth;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ViewHolder extends RecyclerView.ViewHolder {
        public final MaterialCalendarGridView monthGrid;
        public final TextView monthTitle;

        public ViewHolder(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
            this.monthTitle = textView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            new ViewCompat.AnonymousClass1(R.id.tag_accessibility_heading, Boolean.class, 0, 28, 3).set(textView, Boolean.TRUE);
            this.monthGrid = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
            if (z) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    public MonthsPagerAdapter(ContextThemeWrapper contextThemeWrapper, SingleDateSelector singleDateSelector, CalendarConstraints calendarConstraints, DateDecorator dateDecorator, MaterialCalendar.AnonymousClass3 anonymousClass3, MaterialCalendar.AnonymousClass3 anonymousClass32) {
        Month month = calendarConstraints.start;
        Month month2 = calendarConstraints.end;
        Month month3 = calendarConstraints.openAt;
        if (month.compareTo(month3) > 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("firstPage cannot be after currentPage");
            throw null;
        }
        if (month3.compareTo(month2) > 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("currentPage cannot be after lastPage");
            throw null;
        }
        this.itemHeight = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * MonthAdapter.MAXIMUM_WEEKS) + (MaterialDatePicker.readMaterialCalendarStyleBoolean(contextThemeWrapper, android.R.attr.windowFullscreen) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.calendarConstraints = calendarConstraints;
        this.dateSelector = singleDateSelector;
        this.dayViewDecorator = dateDecorator;
        this.onDayClickListener = anonymousClass3;
        this.onMonthNavigationListener = anonymousClass32;
        this.visibleMonth = month3;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.calendarConstraints.monthSpan;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        Calendar dayCopy = UtcDates.getDayCopy(this.calendarConstraints.start.firstOfMonth);
        dayCopy.add(2, i);
        dayCopy.set(5, 1);
        Calendar dayCopy2 = UtcDates.getDayCopy(dayCopy);
        dayCopy2.get(2);
        dayCopy2.get(1);
        dayCopy2.getMaximum(7);
        dayCopy2.getActualMaximum(5);
        dayCopy2.getTimeInMillis();
        return dayCopy2.getTimeInMillis();
    }

    public final Month getPageMonth(int i) {
        Calendar dayCopy = UtcDates.getDayCopy(this.calendarConstraints.start.firstOfMonth);
        dayCopy.add(2, i);
        return new Month(dayCopy);
    }

    public final int getPosition(Month month) {
        return this.calendarConstraints.start.monthsUntil(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        CalendarConstraints calendarConstraints = this.calendarConstraints;
        Calendar dayCopy = UtcDates.getDayCopy(calendarConstraints.start.firstOfMonth);
        dayCopy.add(2, i);
        Month month = new Month(dayCopy);
        TextView textView = viewHolder2.monthTitle;
        String str = month.longName;
        if (str == null) {
            str = LanguageUtil.getYearMonth(month.firstOfMonth.getTimeInMillis());
            month.longName = str;
        }
        textView.setText(str);
        final MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) viewHolder2.monthGrid.findViewById(R.id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !month.equals(materialCalendarGridView.getAdapter().month)) {
            MonthAdapter monthAdapter = new MonthAdapter(month, this.dateSelector, calendarConstraints, this.dayViewDecorator);
            materialCalendarGridView.setNumColumns(month.daysInWeek);
            materialCalendarGridView.setAdapter((ListAdapter) monthAdapter);
        } else {
            materialCalendarGridView.invalidate();
            MonthAdapter adapter = materialCalendarGridView.getAdapter();
            SingleDateSelector singleDateSelector = adapter.dateSelector;
            Iterator it = adapter.previouslySelectedDates.iterator();
            while (it.hasNext()) {
                adapter.updateSelectedStateForDate(materialCalendarGridView, ((Long) it.next()).longValue());
            }
            if (singleDateSelector != null) {
                Iterator it2 = singleDateSelector.getSelectedDays().iterator();
                while (it2.hasNext()) {
                    adapter.updateSelectedStateForDate(materialCalendarGridView, ((Long) it2.next()).longValue());
                }
                adapter.previouslySelectedDates = singleDateSelector.getSelectedDays();
            }
        }
        materialCalendarGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.google.android.material.datepicker.MonthsPagerAdapter.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                MaterialCalendarGridView materialCalendarGridView2 = materialCalendarGridView;
                MonthAdapter adapter2 = materialCalendarGridView2.getAdapter();
                if (i2 < adapter2.firstPositionInMonth() || i2 > adapter2.lastPositionInMonth()) {
                    return;
                }
                MaterialCalendar.AnonymousClass3 anonymousClass3 = MonthsPagerAdapter.this.onDayClickListener;
                Long item = materialCalendarGridView2.getAdapter().getItem(i2);
                long longValue = item.longValue();
                MaterialCalendar materialCalendar = MaterialCalendar.this;
                if (materialCalendar.calendarConstraints.validator.isValid(longValue)) {
                    materialCalendar.dateSelector.selectedItem = item;
                    Iterator it3 = materialCalendar.onSelectionChangedListeners.iterator();
                    while (it3.hasNext()) {
                        ((MaterialDatePicker.AnonymousClass2) it3.next()).onSelectionChanged(materialCalendar.dateSelector.selectedItem);
                    }
                    materialCalendar.recyclerView.getAdapter().notifyDataSetChanged();
                    RecyclerView recyclerView = materialCalendar.yearSelector;
                    if (recyclerView != null) {
                        recyclerView.getAdapter().notifyDataSetChanged();
                    }
                }
            }
        });
        materialCalendarGridView.onMonthNavigationListener = this.onMonthNavigationListener;
        boolean readMaterialCalendarStyleBoolean = MaterialDatePicker.readMaterialCalendarStyleBoolean(viewHolder2.itemView.getContext(), android.R.attr.windowFullscreen);
        if (readMaterialCalendarStyleBoolean || month.equals(this.visibleMonth)) {
            materialCalendarGridView.setFocusable(true);
            materialCalendarGridView.setDescendantFocusability(131072);
        } else {
            materialCalendarGridView.setFocusable(false);
            materialCalendarGridView.setDescendantFocusability(393216);
        }
        if (readMaterialCalendarStyleBoolean || !month.equals(this.visibleMonth)) {
            return;
        }
        final int i2 = this.keyboardFocusDirection;
        this.keyboardFocusDirection = 0;
        materialCalendarGridView.post(new Runnable(this) { // from class: com.google.android.material.datepicker.MonthsPagerAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                int i3;
                int findNextValidDayPosition;
                MaterialCalendarGridView materialCalendarGridView2 = materialCalendarGridView;
                if (!materialCalendarGridView2.hasFocus() || (i3 = i2) == 0) {
                    return;
                }
                MonthAdapter adapter2 = materialCalendarGridView2.getAdapter();
                if (i3 == 1) {
                    findNextValidDayPosition = adapter2.findPreviousValidDayPosition(adapter2.lastPositionInMonth() + 1);
                    if (findNextValidDayPosition == -1) {
                        findNextValidDayPosition = adapter2.lastPositionInMonth();
                    }
                } else {
                    findNextValidDayPosition = adapter2.findNextValidDayPosition(adapter2.firstPositionInMonth() - 1);
                    if (findNextValidDayPosition == -1) {
                        findNextValidDayPosition = adapter2.firstPositionInMonth();
                    }
                }
                materialCalendarGridView2.setSelection(findNextValidDayPosition);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!MaterialDatePicker.readMaterialCalendarStyleBoolean(viewGroup.getContext(), android.R.attr.windowFullscreen)) {
            return new ViewHolder(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.itemHeight));
        return new ViewHolder(linearLayout, true);
    }
}
