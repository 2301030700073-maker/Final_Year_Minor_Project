package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import androidx.work.Data;
import com.fsck.k9.R;
import com.takisoft.datetimepicker.R$styleable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import org.slf4j.event.EventRecodingLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class CalendarView extends FrameLayout {
    public static final SimpleDateFormat DATE_FORMATTER = new SimpleDateFormat("MM/dd/yyyy");
    public final EventRecodingLogger mDelegate;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnDateChangeListener {
    }

    public CalendarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2 = Data.Companion.isLightTheme(context) ? R.style.Widget_Material_Light_CalendarView : R.style.Widget_Material_CalendarView;
        context.obtainStyledAttributes(attributeSet, R$styleable.CalendarView, i, i2).recycle();
        this.mDelegate = new EventRecodingLogger(this, context, attributeSet, i, i2);
    }

    public static boolean parseDate(String str, Calendar calendar) {
        if (str != null && !str.isEmpty()) {
            try {
                calendar.setTime(DATE_FORMATTER.parse(str));
                return true;
            } catch (ParseException unused) {
                Log.w("CalendarView", "Date: " + str + " not in format: MM/dd/yyyy");
            }
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return CalendarView.class.getName();
    }

    public long getDate() {
        return ((DayPickerView) this.mDelegate.logger).mSelectedDay.getTimeInMillis();
    }

    public int getDateTextAppearance() {
        return ((DayPickerView) this.mDelegate.logger).mAdapter.mDayTextAppearance;
    }

    public int getFirstDayOfWeek() {
        return ((DayPickerView) this.mDelegate.logger).mAdapter.mFirstDayOfWeek;
    }

    @Deprecated
    public int getFocusedMonthDateColor() {
        this.mDelegate.getClass();
        return 0;
    }

    public long getMaxDate() {
        return ((DayPickerView) this.mDelegate.logger).mMaxDate.getTimeInMillis();
    }

    public long getMinDate() {
        return ((DayPickerView) this.mDelegate.logger).mMinDate.getTimeInMillis();
    }

    @Deprecated
    public Drawable getSelectedDateVerticalBar() {
        this.mDelegate.getClass();
        return null;
    }

    @Deprecated
    public int getSelectedWeekBackgroundColor() {
        this.mDelegate.getClass();
        return 0;
    }

    @Deprecated
    public boolean getShowWeekNumber() {
        this.mDelegate.getClass();
        return false;
    }

    @Deprecated
    public int getShownWeekCount() {
        this.mDelegate.getClass();
        return 0;
    }

    @Deprecated
    public int getUnfocusedMonthDateColor() {
        this.mDelegate.getClass();
        return 0;
    }

    public int getWeekDayTextAppearance() {
        return ((DayPickerView) this.mDelegate.logger).mAdapter.mDayOfWeekTextAppearance;
    }

    @Deprecated
    public int getWeekNumberColor() {
        this.mDelegate.getClass();
        return 0;
    }

    @Deprecated
    public int getWeekSeparatorLineColor() {
        this.mDelegate.getClass();
        return 0;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mDelegate.getClass();
    }

    public void setDate(long j) {
        ((DayPickerView) this.mDelegate.logger).setDate(j, true, true);
    }

    public void setDateTextAppearance(int i) {
        DayPickerPagerAdapter dayPickerPagerAdapter = ((DayPickerView) this.mDelegate.logger).mAdapter;
        dayPickerPagerAdapter.mDayTextAppearance = i;
        dayPickerPagerAdapter.notifyDataSetChanged();
    }

    public void setFirstDayOfWeek(int i) {
        ((DayPickerView) this.mDelegate.logger).setFirstDayOfWeek(i);
    }

    @Deprecated
    public void setFocusedMonthDateColor(int i) {
        this.mDelegate.getClass();
    }

    public void setMaxDate(long j) {
        DayPickerView dayPickerView = (DayPickerView) this.mDelegate.logger;
        dayPickerView.mMaxDate.setTimeInMillis(j);
        dayPickerView.onRangeChanged();
    }

    public void setMinDate(long j) {
        DayPickerView dayPickerView = (DayPickerView) this.mDelegate.logger;
        dayPickerView.mMinDate.setTimeInMillis(j);
        dayPickerView.onRangeChanged();
    }

    public void setOnDateChangeListener(OnDateChangeListener onDateChangeListener) {
        this.mDelegate.eventQueue = onDateChangeListener;
    }

    @Deprecated
    public void setSelectedDateVerticalBar(int i) {
        this.mDelegate.getClass();
    }

    @Deprecated
    public void setSelectedWeekBackgroundColor(int i) {
        this.mDelegate.getClass();
    }

    @Deprecated
    public void setShowWeekNumber(boolean z) {
        this.mDelegate.getClass();
    }

    @Deprecated
    public void setShownWeekCount(int i) {
        this.mDelegate.getClass();
    }

    @Deprecated
    public void setUnfocusedMonthDateColor(int i) {
        this.mDelegate.getClass();
    }

    public void setWeekDayTextAppearance(int i) {
        DayPickerPagerAdapter dayPickerPagerAdapter = ((DayPickerView) this.mDelegate.logger).mAdapter;
        dayPickerPagerAdapter.mDayOfWeekTextAppearance = i;
        dayPickerPagerAdapter.notifyDataSetChanged();
    }

    @Deprecated
    public void setWeekNumberColor(int i) {
        this.mDelegate.getClass();
    }

    @Deprecated
    public void setWeekSeparatorLineColor(int i) {
        this.mDelegate.getClass();
    }

    @Deprecated
    public void setSelectedDateVerticalBar(Drawable drawable) {
        this.mDelegate.getClass();
    }

    public CalendarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.calendarViewStyle);
    }

    public CalendarView(Context context) {
        this(context, null);
    }

    public CalendarView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        context.obtainStyledAttributes(attributeSet, R$styleable.CalendarView, i, i2).recycle();
        this.mDelegate = new EventRecodingLogger(this, context, attributeSet, i, i2);
    }
}
