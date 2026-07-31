package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.takisoft.datetimepicker.DatePickerDialog;
import com.takisoft.datetimepicker.R$styleable;
import com.takisoft.datetimepicker.widget.CalendarView;
import com.takisoft.datetimepicker.widget.DatePicker;
import com.takisoft.datetimepicker.widget.NumberPicker;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Formatter;
import java.util.Locale;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DatePickerSpinnerDelegate extends DatePicker.AbstractDatePickerDelegate {
    public static final TwoDigitFormatter sTwoDigitFormatter = new TwoDigitFormatter();
    public final CalendarView mCalendarView;
    public Calendar mCurrentDate;
    public final SimpleDateFormat mDateFormat;
    public final NumberPicker mDaySpinner;
    public final EditText mDaySpinnerInput;
    public boolean mIsEnabled;
    public Calendar mMaxDate;
    public Calendar mMinDate;
    public final NumberPicker mMonthSpinner;
    public final EditText mMonthSpinnerInput;
    public int mNumberOfMonths;
    public String[] mShortMonths;
    public final LinearLayout mSpinners;
    public Calendar mTempDate;
    public final NumberPicker mYearSpinner;
    public final EditText mYearSpinnerInput;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.takisoft.datetimepicker.widget.DatePickerSpinnerDelegate$1, reason: invalid class name */
    public final class AnonymousClass1 implements NumberPicker.OnValueChangeListener, CalendarView.OnDateChangeListener {
        public /* synthetic */ AnonymousClass1() {
        }

        @Override // com.takisoft.datetimepicker.widget.NumberPicker.OnValueChangeListener
        public void onValueChange(NumberPicker numberPicker, int i, int i2) {
            DatePickerSpinnerDelegate datePickerSpinnerDelegate = DatePickerSpinnerDelegate.this;
            EditText editText = datePickerSpinnerDelegate.mDaySpinnerInput;
            EditText editText2 = datePickerSpinnerDelegate.mMonthSpinnerInput;
            EditText editText3 = datePickerSpinnerDelegate.mYearSpinnerInput;
            InputMethodManager inputMethodManager = (InputMethodManager) datePickerSpinnerDelegate.mContext.getSystemService("input_method");
            if (inputMethodManager != null) {
                if (inputMethodManager.isActive(editText3)) {
                    editText3.clearFocus();
                    inputMethodManager.hideSoftInputFromWindow(datePickerSpinnerDelegate.mDelegator.getWindowToken(), 0);
                } else if (inputMethodManager.isActive(editText2)) {
                    editText2.clearFocus();
                    inputMethodManager.hideSoftInputFromWindow(datePickerSpinnerDelegate.mDelegator.getWindowToken(), 0);
                } else if (inputMethodManager.isActive(editText)) {
                    editText.clearFocus();
                    inputMethodManager.hideSoftInputFromWindow(datePickerSpinnerDelegate.mDelegator.getWindowToken(), 0);
                }
            }
            datePickerSpinnerDelegate.mTempDate.setTimeInMillis(datePickerSpinnerDelegate.mCurrentDate.getTimeInMillis());
            if (numberPicker == datePickerSpinnerDelegate.mDaySpinner) {
                int actualMaximum = datePickerSpinnerDelegate.mTempDate.getActualMaximum(5);
                if (i == actualMaximum && i2 == 1) {
                    datePickerSpinnerDelegate.mTempDate.add(5, 1);
                } else if (i == 1 && i2 == actualMaximum) {
                    datePickerSpinnerDelegate.mTempDate.add(5, -1);
                } else {
                    datePickerSpinnerDelegate.mTempDate.add(5, i2 - i);
                }
            } else if (numberPicker == datePickerSpinnerDelegate.mMonthSpinner) {
                if (i == 11 && i2 == 0) {
                    datePickerSpinnerDelegate.mTempDate.add(2, 1);
                } else if (i == 0 && i2 == 11) {
                    datePickerSpinnerDelegate.mTempDate.add(2, -1);
                } else {
                    datePickerSpinnerDelegate.mTempDate.add(2, i2 - i);
                }
            } else {
                if (numberPicker != datePickerSpinnerDelegate.mYearSpinner) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                    return;
                }
                datePickerSpinnerDelegate.mTempDate.set(1, i2);
            }
            datePickerSpinnerDelegate.setDate(datePickerSpinnerDelegate.mTempDate.get(1), datePickerSpinnerDelegate.mTempDate.get(2), datePickerSpinnerDelegate.mTempDate.get(5));
            datePickerSpinnerDelegate.updateSpinners();
            datePickerSpinnerDelegate.updateCalendarView();
            datePickerSpinnerDelegate.mDelegator.sendAccessibilityEvent(4);
            DatePickerDialog datePickerDialog = datePickerSpinnerDelegate.mOnDateChangedListener;
            if (datePickerDialog != null) {
                datePickerDialog.mDatePicker.init(datePickerSpinnerDelegate.getYear(), datePickerSpinnerDelegate.getMonth(), datePickerSpinnerDelegate.getDayOfMonth(), datePickerDialog);
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TwoDigitFormatter implements NumberPicker.Formatter {
        public final Object[] mArgs;
        public final StringBuilder mBuilder;
        public Formatter mFmt;
        public char mZeroDigit;

        public TwoDigitFormatter() {
            StringBuilder sb = new StringBuilder();
            this.mBuilder = sb;
            this.mArgs = new Object[1];
            Locale locale = Locale.getDefault();
            this.mFmt = new Formatter(sb, locale);
            this.mZeroDigit = Build.VERSION.SDK_INT >= 24 ? DecimalFormatSymbols.getInstance(locale).getZeroDigit() : java.text.DecimalFormatSymbols.getInstance(locale).getZeroDigit();
        }

        @Override // com.takisoft.datetimepicker.widget.NumberPicker.Formatter
        public final String format(int i) {
            Locale locale = Locale.getDefault();
            char c = this.mZeroDigit;
            int i2 = Build.VERSION.SDK_INT;
            char zeroDigit = i2 >= 24 ? DecimalFormatSymbols.getInstance(locale).getZeroDigit() : java.text.DecimalFormatSymbols.getInstance(locale).getZeroDigit();
            StringBuilder sb = this.mBuilder;
            if (c != zeroDigit) {
                this.mFmt = new Formatter(sb, locale);
                this.mZeroDigit = i2 >= 24 ? DecimalFormatSymbols.getInstance(locale).getZeroDigit() : java.text.DecimalFormatSymbols.getInstance(locale).getZeroDigit();
            }
            Integer valueOf = Integer.valueOf(i);
            Object[] objArr = this.mArgs;
            objArr[0] = valueOf;
            sb.delete(0, sb.length());
            this.mFmt.format("%02d", objArr);
            return this.mFmt.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v16, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r4v19, types: [android.view.ViewGroup] */
    public DatePickerSpinnerDelegate(DatePicker datePicker, Context context, AttributeSet attributeSet, int i, int i2) {
        super(datePicker, context);
        ?? r4;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");
        this.mDateFormat = simpleDateFormat;
        this.mIsEnabled = true;
        this.mDelegator = datePicker;
        this.mContext = context;
        setCurrentLocale(Locale.getDefault());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DatePicker, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(11, true);
        boolean z2 = obtainStyledAttributes.getBoolean(1, true);
        String string = obtainStyledAttributes.getString(10);
        String string2 = obtainStyledAttributes.getString(9);
        int resourceId = obtainStyledAttributes.getResourceId(6, R.layout.date_picker_legacy);
        obtainStyledAttributes.recycle();
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(resourceId, (ViewGroup) this.mDelegator, true);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        LinearLayout linearLayout = (LinearLayout) this.mDelegator.findViewById(R.id.pickers);
        this.mSpinners = linearLayout;
        CalendarView calendarView = (CalendarView) this.mDelegator.findViewById(R.id.calendar_view);
        this.mCalendarView = calendarView;
        calendarView.setOnDateChangeListener(new AnonymousClass1());
        NumberPicker numberPicker = (NumberPicker) this.mDelegator.findViewById(R.id.day);
        this.mDaySpinner = numberPicker;
        numberPicker.setFormatter(sTwoDigitFormatter);
        numberPicker.setOnLongPressUpdateInterval(100L);
        numberPicker.setOnValueChangedListener(anonymousClass1);
        this.mDaySpinnerInput = (EditText) numberPicker.findViewById(R.id.numberpicker_input);
        NumberPicker numberPicker2 = (NumberPicker) this.mDelegator.findViewById(R.id.month);
        this.mMonthSpinner = numberPicker2;
        int i3 = 0;
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(this.mNumberOfMonths - 1);
        numberPicker2.setDisplayedValues(this.mShortMonths);
        LinearLayout linearLayout2 = linearLayout;
        numberPicker2.setOnLongPressUpdateInterval(200L);
        numberPicker2.setOnValueChangedListener(anonymousClass1);
        this.mMonthSpinnerInput = (EditText) numberPicker2.findViewById(R.id.numberpicker_input);
        NumberPicker numberPicker3 = (NumberPicker) this.mDelegator.findViewById(R.id.year);
        this.mYearSpinner = numberPicker3;
        numberPicker3.setOnLongPressUpdateInterval(100L);
        numberPicker3.setOnValueChangedListener(anonymousClass1);
        this.mYearSpinnerInput = (EditText) numberPicker3.findViewById(R.id.numberpicker_input);
        if (z || z2) {
            setSpinnersShown(z);
            setCalendarViewShown(z2);
        } else {
            setSpinnersShown(true);
        }
        this.mTempDate.clear();
        boolean isEmpty = TextUtils.isEmpty(string);
        Calendar calendar = this.mTempDate;
        if (isEmpty) {
            calendar.set(1900, 0, 1);
        } else {
            try {
                calendar.setTime(simpleDateFormat.parse(string));
            } catch (ParseException e) {
                e.printStackTrace();
                this.mTempDate.set(1900, 0, 1);
            }
        }
        setMinDate(this.mTempDate.getTimeInMillis());
        this.mTempDate.clear();
        boolean isEmpty2 = TextUtils.isEmpty(string2);
        Calendar calendar2 = this.mTempDate;
        if (isEmpty2) {
            calendar2.set(2100, 11, 31);
        } else {
            try {
                calendar2.setTime(this.mDateFormat.parse(string2));
            } catch (ParseException e2) {
                e2.printStackTrace();
                this.mTempDate.set(2100, 11, 31);
            }
        }
        setMaxDate(this.mTempDate.getTimeInMillis());
        this.mCurrentDate.setTimeInMillis(System.currentTimeMillis());
        init(this.mCurrentDate.get(1), this.mCurrentDate.get(2), this.mCurrentDate.get(5), null);
        linearLayout2.removeAllViews();
        Context context2 = linearLayout2.getContext();
        Locale.getDefault();
        char[] dateFormatOrder = DateFormat.getDateFormatOrder(context2);
        int length = dateFormatOrder.length;
        while (i3 < length) {
            char c = dateFormatOrder[i3];
            if (c == 'M') {
                r4 = linearLayout2;
                r4.addView(numberPicker2);
                setImeOptions(numberPicker2, length, i3);
            } else if (c == 'd') {
                r4 = linearLayout2;
                r4.addView(numberPicker);
                setImeOptions(numberPicker, length, i3);
            } else {
                if (c != 'y') {
                    UriKt$$ExternalSyntheticBUOutline0.m(Arrays.toString(dateFormatOrder));
                    throw null;
                }
                r4 = linearLayout2;
                r4.addView(numberPicker3);
                setImeOptions(numberPicker3, length, i3);
            }
            i3++;
            linearLayout2 = r4;
        }
        if (this.mDelegator.getImportantForAccessibility() == 0) {
            this.mDelegator.setImportantForAccessibility(1);
        }
    }

    public static Calendar getCalendarForLocale(Calendar calendar, Locale locale) {
        if (calendar == null) {
            return Calendar.getInstance(locale);
        }
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance(locale);
        calendar2.setTimeInMillis(timeInMillis);
        return calendar2;
    }

    public static void setImeOptions(NumberPicker numberPicker, int i, int i2) {
        ((TextView) numberPicker.findViewById(R.id.numberpicker_input)).setImeOptions(i2 < i + (-1) ? 5 : 6);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final CalendarView getCalendarView() {
        return this.mCalendarView;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final boolean getCalendarViewShown() {
        return this.mCalendarView.getVisibility() == 0;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final int getDayOfMonth() {
        return this.mCurrentDate.get(5);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final int getFirstDayOfWeek() {
        return this.mCalendarView.getFirstDayOfWeek();
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final Calendar getMaxDate() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(this.mCalendarView.getMaxDate());
        return calendar;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final Calendar getMinDate() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(this.mCalendarView.getMinDate());
        return calendar;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final int getMonth() {
        return this.mCurrentDate.get(2);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final boolean getSpinnersShown() {
        return this.mSpinners.isShown();
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final int getYear() {
        return this.mCurrentDate.get(1);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void init(int i, int i2, int i3, DatePickerDialog datePickerDialog) {
        setDate(i, i2, i3);
        updateSpinners();
        updateCalendarView();
        this.mOnDateChangedListener = datePickerDialog;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final boolean isEnabled() {
        return this.mIsEnabled;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void onConfigurationChanged(Configuration configuration) {
        setCurrentLocale(configuration.locale);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void onRestoreInstanceState(View.BaseSavedState baseSavedState) {
        if (baseSavedState instanceof DatePicker.AbstractDatePickerDelegate.SavedState) {
            DatePicker.AbstractDatePickerDelegate.SavedState savedState = (DatePicker.AbstractDatePickerDelegate.SavedState) baseSavedState;
            setDate(savedState.mSelectedYear, savedState.mSelectedMonth, savedState.mSelectedDay);
            updateSpinners();
            updateCalendarView();
        }
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final DatePicker.AbstractDatePickerDelegate.SavedState onSaveInstanceState(Parcelable parcelable) {
        return new DatePicker.AbstractDatePickerDelegate.SavedState(parcelable, getYear(), getMonth(), getDayOfMonth(), getMinDate().getTimeInMillis(), getMaxDate().getTimeInMillis(), 0, 0, 0);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setCalendarViewShown(boolean z) {
        this.mCalendarView.setVisibility(z ? 0 : 8);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setCurrentLocale(Locale locale) {
        super.setCurrentLocale(locale);
        this.mTempDate = getCalendarForLocale(this.mTempDate, locale);
        this.mMinDate = getCalendarForLocale(this.mMinDate, locale);
        this.mMaxDate = getCalendarForLocale(this.mMaxDate, locale);
        this.mCurrentDate = getCalendarForLocale(this.mCurrentDate, locale);
        this.mNumberOfMonths = this.mTempDate.getActualMaximum(2) + 1;
        String[] shortMonths = new DateFormatSymbols().getShortMonths();
        this.mShortMonths = shortMonths;
        if (Character.isDigit(shortMonths[0].charAt(0))) {
            this.mShortMonths = new String[this.mNumberOfMonths];
            int i = 0;
            while (i < this.mNumberOfMonths) {
                int i2 = i + 1;
                this.mShortMonths[i] = String.format("%d", Integer.valueOf(i2));
                i = i2;
            }
        }
    }

    public final void setDate(int i, int i2, int i3) {
        this.mCurrentDate.set(i, i2, i3);
        boolean before = this.mCurrentDate.before(this.mMinDate);
        Calendar calendar = this.mCurrentDate;
        if (before) {
            calendar.setTimeInMillis(this.mMinDate.getTimeInMillis());
        } else if (calendar.after(this.mMaxDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMaxDate.getTimeInMillis());
        }
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setEnabled(boolean z) {
        this.mDaySpinner.setEnabled(z);
        this.mMonthSpinner.setEnabled(z);
        this.mYearSpinner.setEnabled(z);
        this.mCalendarView.setEnabled(z);
        this.mIsEnabled = z;
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setFirstDayOfWeek(int i) {
        this.mCalendarView.setFirstDayOfWeek(i);
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setMaxDate(long j) {
        this.mTempDate.setTimeInMillis(j);
        if (this.mTempDate.get(1) == this.mMaxDate.get(1) && this.mTempDate.get(6) == this.mMaxDate.get(6)) {
            return;
        }
        this.mMaxDate.setTimeInMillis(j);
        this.mCalendarView.setMaxDate(j);
        if (this.mCurrentDate.after(this.mMaxDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMaxDate.getTimeInMillis());
            updateCalendarView();
        }
        updateSpinners();
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setMinDate(long j) {
        this.mTempDate.setTimeInMillis(j);
        if (this.mTempDate.get(1) == this.mMinDate.get(1) && this.mTempDate.get(6) == this.mMinDate.get(6)) {
            return;
        }
        this.mMinDate.setTimeInMillis(j);
        this.mCalendarView.setMinDate(j);
        if (this.mCurrentDate.before(this.mMinDate)) {
            this.mCurrentDate.setTimeInMillis(this.mMinDate.getTimeInMillis());
            updateCalendarView();
        }
        updateSpinners();
    }

    @Override // com.takisoft.datetimepicker.widget.DatePicker.AbstractDatePickerDelegate
    public final void setSpinnersShown(boolean z) {
        this.mSpinners.setVisibility(z ? 0 : 8);
    }

    public final void updateCalendarView() {
        ((DayPickerView) this.mCalendarView.mDelegate.logger).setDate(this.mCurrentDate.getTimeInMillis(), false, true);
    }

    public final void updateSpinners() {
        boolean equals = this.mCurrentDate.equals(this.mMinDate);
        Calendar calendar = this.mCurrentDate;
        NumberPicker numberPicker = this.mDaySpinner;
        NumberPicker numberPicker2 = this.mMonthSpinner;
        if (equals) {
            numberPicker.setMinValue(calendar.get(5));
            numberPicker.setMaxValue(this.mCurrentDate.getActualMaximum(5));
            numberPicker.setWrapSelectorWheel(false);
            numberPicker2.setDisplayedValues(null);
            numberPicker2.setMinValue(this.mCurrentDate.get(2));
            numberPicker2.setMaxValue(this.mCurrentDate.getActualMaximum(2));
            numberPicker2.setWrapSelectorWheel(false);
        } else if (calendar.equals(this.mMaxDate)) {
            numberPicker.setMinValue(this.mCurrentDate.getActualMinimum(5));
            numberPicker.setMaxValue(this.mCurrentDate.get(5));
            numberPicker.setWrapSelectorWheel(false);
            numberPicker2.setDisplayedValues(null);
            numberPicker2.setMinValue(this.mCurrentDate.getActualMinimum(2));
            numberPicker2.setMaxValue(this.mCurrentDate.get(2));
            numberPicker2.setWrapSelectorWheel(false);
        } else {
            numberPicker.setMinValue(1);
            numberPicker.setMaxValue(this.mCurrentDate.getActualMaximum(5));
            numberPicker.setWrapSelectorWheel(true);
            numberPicker2.setDisplayedValues(null);
            numberPicker2.setMinValue(0);
            numberPicker2.setMaxValue(11);
            numberPicker2.setWrapSelectorWheel(true);
        }
        numberPicker2.setDisplayedValues((String[]) Arrays.copyOfRange(this.mShortMonths, numberPicker2.getMinValue(), numberPicker2.getMaxValue() + 1));
        int i = this.mMinDate.get(1);
        NumberPicker numberPicker3 = this.mYearSpinner;
        numberPicker3.setMinValue(i);
        numberPicker3.setMaxValue(this.mMaxDate.get(1));
        numberPicker3.setWrapSelectorWheel(false);
        numberPicker3.setValue(this.mCurrentDate.get(1));
        numberPicker2.setValue(this.mCurrentDate.get(2));
        numberPicker.setValue(this.mCurrentDate.get(5));
        if (Character.isDigit(this.mShortMonths[0].charAt(0))) {
            this.mMonthSpinnerInput.setRawInputType(2);
        }
    }
}
