package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.icu.text.DisplayContext;
import android.icu.text.SimpleDateFormat;
import android.os.Build;
import android.os.Parcelable;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ViewAnimator;
import androidx.core.provider.CallbackWrapper$2;
import androidx.preference.Preference;
import androidx.viewpager.widget.ViewPager;
import com.fsck.k9.R;
import com.fsck.k9.controller.MessagingController;
import com.takisoft.datetimepicker.DatePickerDialog;
import com.takisoft.datetimepicker.R$styleable;
import com.takisoft.datetimepicker.widget.DatePicker;
import com.takisoft.datetimepicker.widget.DayPickerView;
import com.takisoft.datetimepicker.widget.YearPickerView;
import java.text.Format;
import java.util.Calendar;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DatePickerCalendarDelegate extends DatePicker.AbstractDatePickerDelegate {
    public final ViewAnimator mAnimator;
    public final ViewGroup mContainer;
    public final Calendar mCurrentDate;
    public int mCurrentView;
    public DatePickerDialog mDateChangedListener;
    public final DayPickerView mDayPickerView;
    public int mFirstDayOfWeek;
    public final TextView mHeaderMonthDay;
    public final TextView mHeaderYear;
    public final Calendar mMaxDate;
    public final Calendar mMinDate;
    public Format mMonthDayFormat;
    public final String mSelectDay;
    public final String mSelectYear;
    public final Calendar mTempDate;
    public Format mYearFormat;
    public final YearPickerView mYearPickerView;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.takisoft.datetimepicker.widget.DatePickerCalendarDelegate$1, reason: invalid class name */
    public final class AnonymousClass1 implements DayPickerView.OnDaySelectedListener {
        public /* synthetic */ AnonymousClass1() {
        }

        @Override // com.takisoft.datetimepicker.widget.DayPickerView.OnDaySelectedListener
        public void onDaySelected(Calendar calendar) {
            DatePickerCalendarDelegate datePickerCalendarDelegate = DatePickerCalendarDelegate.this;
            datePickerCalendarDelegate.mCurrentDate.setTimeInMillis(calendar.getTimeInMillis());
            datePickerCalendarDelegate.onDateChanged(true, true);
        }
    }

    public DatePickerCalendarDelegate(DatePicker datePicker, Context context, AttributeSet attributeSet, int i, int i2) {
        super(datePicker, context);
        this.mCurrentView = -1;
        this.mFirstDayOfWeek = 0;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        AnonymousClass1 anonymousClass12 = new AnonymousClass1();
        Preference.AnonymousClass1 anonymousClass13 = new Preference.AnonymousClass1(7, this);
        Locale locale = this.mCurrentLocale;
        Calendar calendar = Calendar.getInstance(locale);
        this.mCurrentDate = calendar;
        this.mTempDate = Calendar.getInstance(locale);
        Calendar calendar2 = Calendar.getInstance(locale);
        this.mMinDate = calendar2;
        Calendar calendar3 = Calendar.getInstance(locale);
        this.mMaxDate = calendar3;
        calendar2.set(1900, 0, 1);
        calendar3.set(2100, 11, 31);
        Resources resources = this.mDelegator.getResources();
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, R$styleable.DatePicker, i, i2);
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(obtainStyledAttributes.getResourceId(5, R.layout.date_picker_material), (ViewGroup) this.mDelegator, false);
        this.mContainer = viewGroup;
        this.mDelegator.addView(viewGroup);
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.date_picker_header);
        TextView textView = (TextView) viewGroup2.findViewById(R.id.date_picker_header_year);
        this.mHeaderYear = textView;
        textView.setOnClickListener(anonymousClass13);
        TextView textView2 = (TextView) viewGroup2.findViewById(R.id.date_picker_header_date);
        this.mHeaderMonthDay = textView2;
        textView2.setOnClickListener(anonymousClass13);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(4);
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
            textView2.setTextColor(colorStateList);
        }
        Drawable drawable = obtainStyledAttributes.getDrawable(8);
        if (drawable != null) {
            viewGroup2.setBackground(drawable);
        }
        obtainStyledAttributes.recycle();
        ViewAnimator viewAnimator = (ViewAnimator) viewGroup.findViewById(R.id.animator);
        this.mAnimator = viewAnimator;
        DayPickerView dayPickerView = (DayPickerView) viewAnimator.findViewById(R.id.date_picker_day_picker);
        this.mDayPickerView = dayPickerView;
        dayPickerView.setFirstDayOfWeek(this.mFirstDayOfWeek);
        dayPickerView.mMinDate.setTimeInMillis(calendar2.getTimeInMillis());
        dayPickerView.onRangeChanged();
        dayPickerView.mMaxDate.setTimeInMillis(calendar3.getTimeInMillis());
        dayPickerView.onRangeChanged();
        dayPickerView.setDate(calendar.getTimeInMillis(), false, true);
        dayPickerView.mOnDaySelectedListener = anonymousClass1;
        YearPickerView yearPickerView = (YearPickerView) viewAnimator.findViewById(R.id.date_picker_year_picker);
        this.mYearPickerView = yearPickerView;
        yearPickerView.setRange(calendar2, calendar3);
        int i3 = calendar.get(1);
        YearPickerView.YearAdapter yearAdapter = yearPickerView.mAdapter;
        if (yearAdapter.mActivatedYear != i3) {
            yearAdapter.mActivatedYear = i3;
            yearAdapter.notifyDataSetChanged();
        }
        yearPickerView.post(new CallbackWrapper$2(i3, 3, yearPickerView));
        yearPickerView.mOnYearSelectedListener = anonymousClass12;
        this.mSelectDay = resources.getString(R.string.select_day);
        this.mSelectYear = resources.getString(R.string.select_year);
        onLocaleChanged(this.mCurrentLocale);
        setCurrentView(0);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final CalendarView getCalendarView() {
        throw new UnsupportedOperationException("Not supported by calendar-mode DatePicker");
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final boolean getCalendarViewShown() {
        return false;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final int getDayOfMonth() {
        return this.mCurrentDate.get(5);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final int getFirstDayOfWeek() {
        int i = this.mFirstDayOfWeek;
        return i != 0 ? i : this.mCurrentDate.getFirstDayOfWeek();
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final Calendar getMaxDate() {
        return this.mMaxDate;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final Calendar getMinDate() {
        return this.mMinDate;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final int getMonth() {
        return this.mCurrentDate.get(2);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final boolean getSpinnersShown() {
        return false;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final int getYear() {
        return this.mCurrentDate.get(1);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void init(int i, int i2, int i3, DatePickerDialog datePickerDialog) {
        Calendar calendar = this.mCurrentDate;
        calendar.set(1, i);
        calendar.set(2, i2);
        calendar.set(5, i3);
        onDateChanged(false, false);
        this.mDateChangedListener = datePickerDialog;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final boolean isEnabled() {
        return this.mContainer.isEnabled();
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void onConfigurationChanged(Configuration configuration) {
        setCurrentLocale(configuration.locale);
    }

    public final void onCurrentDateChanged(boolean z) {
        TextView textView = this.mHeaderYear;
        if (textView == null) {
            return;
        }
        Format format = this.mYearFormat;
        Calendar calendar = this.mCurrentDate;
        textView.setText(format.format(calendar.getTime()));
        this.mHeaderMonthDay.setText(this.mMonthDayFormat.format(calendar.getTime()));
        if (z) {
            this.mAnimator.announceForAccessibility(DateUtils.formatDateTime(this.mContext, calendar.getTimeInMillis(), 20));
        }
    }

    public final void onDateChanged(boolean z, boolean z2) {
        Calendar calendar = this.mCurrentDate;
        int i = calendar.get(1);
        if (z2 && this.mDateChangedListener != null) {
            int i2 = calendar.get(2);
            int i3 = calendar.get(5);
            DatePickerDialog datePickerDialog = this.mDateChangedListener;
            datePickerDialog.mDatePicker.init(i, i2, i3, datePickerDialog);
        }
        this.mDayPickerView.setDate(calendar.getTimeInMillis(), false, true);
        YearPickerView yearPickerView = this.mYearPickerView;
        YearPickerView.YearAdapter yearAdapter = yearPickerView.mAdapter;
        if (yearAdapter.mActivatedYear != i) {
            yearAdapter.mActivatedYear = i;
            yearAdapter.notifyDataSetChanged();
        }
        yearPickerView.post(new CallbackWrapper$2(i, 3, yearPickerView));
        onCurrentDateChanged(z);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void onLocaleChanged(Locale locale) {
        DisplayContext displayContext;
        if (this.mHeaderYear == null) {
            return;
        }
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(locale, "EMMMd");
        if (Build.VERSION.SDK_INT >= 24) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(bestDateTimePattern, locale);
            this.mMonthDayFormat = simpleDateFormat;
            displayContext = DisplayContext.CAPITALIZATION_FOR_STANDALONE;
            simpleDateFormat.setContext(displayContext);
            this.mYearFormat = new SimpleDateFormat("y", locale);
        } else {
            this.mMonthDayFormat = new java.text.SimpleDateFormat(bestDateTimePattern, locale);
            this.mYearFormat = new java.text.SimpleDateFormat("y", locale);
        }
        onCurrentDateChanged(false);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void onRestoreInstanceState(View.BaseSavedState baseSavedState) {
        if (baseSavedState instanceof DatePicker.AbstractDatePickerDelegate.SavedState) {
            DatePicker.AbstractDatePickerDelegate.SavedState savedState = (DatePicker.AbstractDatePickerDelegate.SavedState) baseSavedState;
            this.mCurrentDate.set(savedState.mSelectedYear, savedState.mSelectedMonth, savedState.mSelectedDay);
            this.mMinDate.setTimeInMillis(savedState.mMinDate);
            this.mMaxDate.setTimeInMillis(savedState.mMaxDate);
            onCurrentDateChanged(false);
            int i = savedState.mCurrentView;
            setCurrentView(i);
            int i2 = savedState.mListPosition;
            if (i2 != -1) {
                if (i == 0) {
                    ViewPager viewPager = this.mDayPickerView.mViewPager;
                    viewPager.mPopulatePending = false;
                    viewPager.setCurrentItemInternal(i2, 0, false, false);
                } else if (i == 1) {
                    this.mYearPickerView.setSelectionFromTop(i2, savedState.mListPositionOffset);
                }
            }
        }
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final DatePicker.AbstractDatePickerDelegate.SavedState onSaveInstanceState(Parcelable parcelable) {
        int i;
        int i2;
        Calendar calendar = this.mCurrentDate;
        int i3 = calendar.get(1);
        int i4 = calendar.get(2);
        int i5 = calendar.get(5);
        int i6 = this.mCurrentView;
        if (i6 == 0) {
            i = this.mDayPickerView.mViewPager.getCurrentItem();
            i2 = -1;
        } else if (i6 == 1) {
            YearPickerView yearPickerView = this.mYearPickerView;
            int firstVisiblePosition = yearPickerView.getFirstVisiblePosition();
            View childAt = yearPickerView.getChildAt(0);
            i2 = childAt == null ? 0 : childAt.getTop();
            i = firstVisiblePosition;
        } else {
            i = -1;
            i2 = -1;
        }
        return new DatePicker.AbstractDatePickerDelegate.SavedState(parcelable, i3, i4, i5, this.mMinDate.getTimeInMillis(), this.mMaxDate.getTimeInMillis(), this.mCurrentView, i, i2);
    }

    public final void setCurrentView(int i) {
        TextView textView = this.mHeaderYear;
        TextView textView2 = this.mHeaderMonthDay;
        Calendar calendar = this.mCurrentDate;
        ViewAnimator viewAnimator = this.mAnimator;
        if (i == 0) {
            this.mDayPickerView.setDate(calendar.getTimeInMillis(), false, true);
            if (this.mCurrentView != i) {
                textView2.setActivated(true);
                textView.setActivated(false);
                viewAnimator.setDisplayedChild(0);
                this.mCurrentView = i;
            }
            viewAnimator.announceForAccessibility(this.mSelectDay);
            return;
        }
        if (i != 1) {
            return;
        }
        int i2 = calendar.get(1);
        YearPickerView yearPickerView = this.mYearPickerView;
        YearPickerView.YearAdapter yearAdapter = yearPickerView.mAdapter;
        if (yearAdapter.mActivatedYear != i2) {
            yearAdapter.mActivatedYear = i2;
            yearAdapter.notifyDataSetChanged();
        }
        yearPickerView.post(new CallbackWrapper$2(i2, 3, yearPickerView));
        yearPickerView.post(new MessagingController.AnonymousClass1(5, this));
        if (this.mCurrentView != i) {
            textView2.setActivated(false);
            textView.setActivated(true);
            viewAnimator.setDisplayedChild(1);
            this.mCurrentView = i;
        }
        viewAnimator.announceForAccessibility(this.mSelectYear);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setEnabled(boolean z) {
        this.mContainer.setEnabled(z);
        this.mDayPickerView.setEnabled(z);
        this.mYearPickerView.setEnabled(z);
        this.mHeaderYear.setEnabled(z);
        this.mHeaderMonthDay.setEnabled(z);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setFirstDayOfWeek(int i) {
        this.mFirstDayOfWeek = i;
        this.mDayPickerView.setFirstDayOfWeek(i);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setMaxDate(long j) {
        Calendar calendar = this.mTempDate;
        calendar.setTimeInMillis(j);
        int i = calendar.get(1);
        Calendar calendar2 = this.mMaxDate;
        if (i == calendar2.get(1) && calendar.get(6) == calendar2.get(6)) {
            return;
        }
        Calendar calendar3 = this.mCurrentDate;
        if (calendar3.after(calendar)) {
            calendar3.setTimeInMillis(j);
            onDateChanged(false, true);
        }
        calendar2.setTimeInMillis(j);
        DayPickerView dayPickerView = this.mDayPickerView;
        dayPickerView.mMaxDate.setTimeInMillis(j);
        dayPickerView.onRangeChanged();
        this.mYearPickerView.setRange(this.mMinDate, calendar2);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setMinDate(long j) {
        Calendar calendar = this.mTempDate;
        calendar.setTimeInMillis(j);
        int i = calendar.get(1);
        Calendar calendar2 = this.mMinDate;
        if (i == calendar2.get(1) && calendar.get(6) == calendar2.get(6)) {
            return;
        }
        Calendar calendar3 = this.mCurrentDate;
        if (calendar3.before(calendar)) {
            calendar3.setTimeInMillis(j);
            onDateChanged(false, true);
        }
        calendar2.setTimeInMillis(j);
        DayPickerView dayPickerView = this.mDayPickerView;
        dayPickerView.mMinDate.setTimeInMillis(j);
        dayPickerView.onRangeChanged();
        this.mYearPickerView.setRange(calendar2, this.mMaxDate);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setCalendarViewShown(boolean z) {
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setSpinnersShown(boolean z) {
    }
}
