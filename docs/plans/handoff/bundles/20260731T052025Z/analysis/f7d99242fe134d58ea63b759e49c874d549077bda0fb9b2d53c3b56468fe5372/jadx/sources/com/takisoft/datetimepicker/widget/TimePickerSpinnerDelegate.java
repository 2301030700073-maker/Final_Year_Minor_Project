package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.preference.Preference;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import com.fsck.k9.R;
import com.takisoft.datetimepicker.R$styleable;
import com.takisoft.datetimepicker.widget.NumberPicker;
import com.takisoft.datetimepicker.widget.TimePicker;
import java.util.Calendar;
import java.util.Locale;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TimePickerSpinnerDelegate extends ConstraintTracker {
    public final Button mAmPmButton;
    public final NumberPicker mAmPmSpinner;
    public final EditText mAmPmSpinnerInput;
    public final String[] mAmPmStrings;
    public final TextView mDivider;
    public char mHourFormat;
    public final NumberPicker mHourSpinner;
    public final EditText mHourSpinnerInput;
    public boolean mHourWithTwoDigit;
    public boolean mIs24HourView;
    public boolean mIsAm;
    public boolean mIsEnabled;
    public final NumberPicker mMinuteSpinner;
    public final EditText mMinuteSpinnerInput;

    public TimePickerSpinnerDelegate(TimePicker timePicker, Context context, AttributeSet attributeSet, int i, int i2) {
        super(timePicker, context);
        String ch;
        final int i3 = 1;
        this.mIsEnabled = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TimePicker, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(3, R.layout.time_picker_legacy_material);
        obtainStyledAttributes.recycle();
        View inflate = LayoutInflater.from(context).inflate(resourceId, (ViewGroup) timePicker, true);
        final int i4 = 0;
        inflate.setSaveFromParentEnabled(false);
        NumberPicker numberPicker = (NumberPicker) timePicker.findViewById(R.id.hour);
        this.mHourSpinner = numberPicker;
        numberPicker.setOnValueChangedListener(new NumberPicker.OnValueChangeListener(this) { // from class: com.takisoft.datetimepicker.widget.TimePickerSpinnerDelegate.1
            public final /* synthetic */ TimePickerSpinnerDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // com.takisoft.datetimepicker.widget.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker2, int i5, int i6) {
                int i7 = i4;
                TimePickerSpinnerDelegate timePickerSpinnerDelegate = this.this$0;
                switch (i7) {
                    case 0:
                        TimePickerSpinnerDelegate.access$000(timePickerSpinnerDelegate);
                        if (!timePickerSpinnerDelegate.mIs24HourView && ((i5 == 11 && i6 == 12) || (i5 == 12 && i6 == 11))) {
                            timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                            timePickerSpinnerDelegate.updateAmPmControl();
                        }
                        timePickerSpinnerDelegate.onTimeChanged$1();
                        break;
                    case 1:
                        NumberPicker numberPicker3 = timePickerSpinnerDelegate.mHourSpinner;
                        TimePickerSpinnerDelegate.access$000(timePickerSpinnerDelegate);
                        NumberPicker numberPicker4 = timePickerSpinnerDelegate.mMinuteSpinner;
                        int minValue = numberPicker4.getMinValue();
                        int maxValue = numberPicker4.getMaxValue();
                        if (i5 == maxValue && i6 == minValue) {
                            int value = numberPicker3.getValue() + 1;
                            if (!timePickerSpinnerDelegate.mIs24HourView && value == 12) {
                                timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                                timePickerSpinnerDelegate.updateAmPmControl();
                            }
                            numberPicker3.setValue(value);
                        } else if (i5 == minValue && i6 == maxValue) {
                            int value2 = numberPicker3.getValue() - 1;
                            if (!timePickerSpinnerDelegate.mIs24HourView && value2 == 11) {
                                timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                                timePickerSpinnerDelegate.updateAmPmControl();
                            }
                            numberPicker3.setValue(value2);
                        }
                        timePickerSpinnerDelegate.onTimeChanged$1();
                        break;
                    default:
                        TimePickerSpinnerDelegate.access$000(timePickerSpinnerDelegate);
                        numberPicker2.requestFocus();
                        timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                        timePickerSpinnerDelegate.updateAmPmControl();
                        timePickerSpinnerDelegate.onTimeChanged$1();
                        break;
                }
            }
        });
        EditText editText = (EditText) numberPicker.findViewById(R.id.numberpicker_input);
        this.mHourSpinnerInput = editText;
        editText.setImeOptions(5);
        TextView textView = (TextView) timePicker.findViewById(R.id.divider);
        this.mDivider = textView;
        if (textView != null) {
            String bestDateTimePattern = DateFormat.getBestDateTimePattern((Locale) this.lock, this.mIs24HourView ? "Hm" : "hm");
            int lastIndexOf = bestDateTimePattern.lastIndexOf(72);
            lastIndexOf = lastIndexOf == -1 ? bestDateTimePattern.lastIndexOf(104) : lastIndexOf;
            if (lastIndexOf == -1) {
                ch = ":";
            } else {
                int i5 = lastIndexOf + 1;
                int indexOf = bestDateTimePattern.indexOf(109, i5);
                ch = indexOf == -1 ? Character.toString(bestDateTimePattern.charAt(i5)) : bestDateTimePattern.substring(i5, indexOf);
            }
            textView.setText(ch);
        }
        NumberPicker numberPicker2 = (NumberPicker) timePicker.findViewById(R.id.minute);
        this.mMinuteSpinner = numberPicker2;
        numberPicker2.setMinValue(0);
        numberPicker2.setMaxValue(59);
        numberPicker2.setOnLongPressUpdateInterval(100L);
        numberPicker2.setFormatter(NumberPicker.getTwoDigitFormatter());
        numberPicker2.setOnValueChangedListener(new NumberPicker.OnValueChangeListener(this) { // from class: com.takisoft.datetimepicker.widget.TimePickerSpinnerDelegate.1
            public final /* synthetic */ TimePickerSpinnerDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // com.takisoft.datetimepicker.widget.NumberPicker.OnValueChangeListener
            public final void onValueChange(NumberPicker numberPicker22, int i52, int i6) {
                int i7 = i3;
                TimePickerSpinnerDelegate timePickerSpinnerDelegate = this.this$0;
                switch (i7) {
                    case 0:
                        TimePickerSpinnerDelegate.access$000(timePickerSpinnerDelegate);
                        if (!timePickerSpinnerDelegate.mIs24HourView && ((i52 == 11 && i6 == 12) || (i52 == 12 && i6 == 11))) {
                            timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                            timePickerSpinnerDelegate.updateAmPmControl();
                        }
                        timePickerSpinnerDelegate.onTimeChanged$1();
                        break;
                    case 1:
                        NumberPicker numberPicker3 = timePickerSpinnerDelegate.mHourSpinner;
                        TimePickerSpinnerDelegate.access$000(timePickerSpinnerDelegate);
                        NumberPicker numberPicker4 = timePickerSpinnerDelegate.mMinuteSpinner;
                        int minValue = numberPicker4.getMinValue();
                        int maxValue = numberPicker4.getMaxValue();
                        if (i52 == maxValue && i6 == minValue) {
                            int value = numberPicker3.getValue() + 1;
                            if (!timePickerSpinnerDelegate.mIs24HourView && value == 12) {
                                timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                                timePickerSpinnerDelegate.updateAmPmControl();
                            }
                            numberPicker3.setValue(value);
                        } else if (i52 == minValue && i6 == maxValue) {
                            int value2 = numberPicker3.getValue() - 1;
                            if (!timePickerSpinnerDelegate.mIs24HourView && value2 == 11) {
                                timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                                timePickerSpinnerDelegate.updateAmPmControl();
                            }
                            numberPicker3.setValue(value2);
                        }
                        timePickerSpinnerDelegate.onTimeChanged$1();
                        break;
                    default:
                        TimePickerSpinnerDelegate.access$000(timePickerSpinnerDelegate);
                        numberPicker22.requestFocus();
                        timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                        timePickerSpinnerDelegate.updateAmPmControl();
                        timePickerSpinnerDelegate.onTimeChanged$1();
                        break;
                }
            }
        });
        EditText editText2 = (EditText) numberPicker2.findViewById(R.id.numberpicker_input);
        this.mMinuteSpinnerInput = editText2;
        editText2.setImeOptions(5);
        String[] amPmStrings = TimePicker.getAmPmStrings(context);
        this.mAmPmStrings = amPmStrings;
        View findViewById = timePicker.findViewById(R.id.amPm);
        if (findViewById instanceof Button) {
            this.mAmPmSpinner = null;
            this.mAmPmSpinnerInput = null;
            Button button = (Button) findViewById;
            this.mAmPmButton = button;
            button.setOnClickListener(new Preference.AnonymousClass1(10, this));
        } else {
            this.mAmPmButton = null;
            NumberPicker numberPicker3 = (NumberPicker) findViewById;
            this.mAmPmSpinner = numberPicker3;
            numberPicker3.setMinValue(0);
            numberPicker3.setMaxValue(1);
            numberPicker3.setDisplayedValues(amPmStrings);
            final int i6 = 2;
            numberPicker3.setOnValueChangedListener(new NumberPicker.OnValueChangeListener(this) { // from class: com.takisoft.datetimepicker.widget.TimePickerSpinnerDelegate.1
                public final /* synthetic */ TimePickerSpinnerDelegate this$0;

                {
                    this.this$0 = this;
                }

                @Override // com.takisoft.datetimepicker.widget.NumberPicker.OnValueChangeListener
                public final void onValueChange(NumberPicker numberPicker22, int i52, int i62) {
                    int i7 = i6;
                    TimePickerSpinnerDelegate timePickerSpinnerDelegate = this.this$0;
                    switch (i7) {
                        case 0:
                            TimePickerSpinnerDelegate.access$000(timePickerSpinnerDelegate);
                            if (!timePickerSpinnerDelegate.mIs24HourView && ((i52 == 11 && i62 == 12) || (i52 == 12 && i62 == 11))) {
                                timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                                timePickerSpinnerDelegate.updateAmPmControl();
                            }
                            timePickerSpinnerDelegate.onTimeChanged$1();
                            break;
                        case 1:
                            NumberPicker numberPicker32 = timePickerSpinnerDelegate.mHourSpinner;
                            TimePickerSpinnerDelegate.access$000(timePickerSpinnerDelegate);
                            NumberPicker numberPicker4 = timePickerSpinnerDelegate.mMinuteSpinner;
                            int minValue = numberPicker4.getMinValue();
                            int maxValue = numberPicker4.getMaxValue();
                            if (i52 == maxValue && i62 == minValue) {
                                int value = numberPicker32.getValue() + 1;
                                if (!timePickerSpinnerDelegate.mIs24HourView && value == 12) {
                                    timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                                    timePickerSpinnerDelegate.updateAmPmControl();
                                }
                                numberPicker32.setValue(value);
                            } else if (i52 == minValue && i62 == maxValue) {
                                int value2 = numberPicker32.getValue() - 1;
                                if (!timePickerSpinnerDelegate.mIs24HourView && value2 == 11) {
                                    timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                                    timePickerSpinnerDelegate.updateAmPmControl();
                                }
                                numberPicker32.setValue(value2);
                            }
                            timePickerSpinnerDelegate.onTimeChanged$1();
                            break;
                        default:
                            TimePickerSpinnerDelegate.access$000(timePickerSpinnerDelegate);
                            numberPicker22.requestFocus();
                            timePickerSpinnerDelegate.mIsAm = !timePickerSpinnerDelegate.mIsAm;
                            timePickerSpinnerDelegate.updateAmPmControl();
                            timePickerSpinnerDelegate.onTimeChanged$1();
                            break;
                    }
                }
            });
            EditText editText3 = (EditText) numberPicker3.findViewById(R.id.numberpicker_input);
            this.mAmPmSpinnerInput = editText3;
            editText3.setImeOptions(6);
        }
        if (DateFormat.getBestDateTimePattern((Locale) this.lock, "hm").startsWith("a")) {
            ViewGroup viewGroup = (ViewGroup) timePicker.findViewById(R.id.timePickerLayout);
            viewGroup.removeView(findViewById);
            viewGroup.addView(findViewById, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) findViewById.getLayoutParams();
            int marginStart = marginLayoutParams.getMarginStart();
            int marginEnd = marginLayoutParams.getMarginEnd();
            if (marginStart != marginEnd) {
                marginLayoutParams.setMarginStart(marginEnd);
                marginLayoutParams.setMarginEnd(marginStart);
            }
        }
        getHourFormatData();
        updateHourControl();
        if (this.mIs24HourView) {
            editText2.setImeOptions(6);
        } else {
            editText2.setImeOptions(5);
        }
        updateAmPmControl();
        Calendar calendar = Calendar.getInstance((Locale) this.lock);
        setCurrentHour(calendar.get(11), true);
        setMinute(calendar.get(12));
        if (!this.mIsEnabled) {
            setEnabled(false);
        }
        trySetContentDescription(numberPicker2, R.id.increment, R.string.time_picker_increment_minute_button);
        trySetContentDescription(numberPicker2, R.id.decrement, R.string.time_picker_decrement_minute_button);
        trySetContentDescription(numberPicker, R.id.increment, R.string.time_picker_increment_hour_button);
        trySetContentDescription(numberPicker, R.id.decrement, R.string.time_picker_decrement_hour_button);
        View view = this.mAmPmSpinner;
        if (view != null) {
            trySetContentDescription(view, R.id.increment, R.string.time_picker_increment_set_pm_button);
            trySetContentDescription(view, R.id.decrement, R.string.time_picker_decrement_set_am_button);
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (timePicker.getImportantForAccessibility() == 0) {
            timePicker.setImportantForAccessibility(1);
        }
    }

    public static void access$000(TimePickerSpinnerDelegate timePickerSpinnerDelegate) {
        EditText editText = timePickerSpinnerDelegate.mAmPmSpinnerInput;
        EditText editText2 = timePickerSpinnerDelegate.mMinuteSpinnerInput;
        EditText editText3 = timePickerSpinnerDelegate.mHourSpinnerInput;
        TimePicker timePicker = (TimePicker) timePickerSpinnerDelegate.taskExecutor;
        InputMethodManager inputMethodManager = (InputMethodManager) timePickerSpinnerDelegate.appContext.getSystemService("input_method");
        if (inputMethodManager != null) {
            if (inputMethodManager.isActive(editText3)) {
                editText3.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(timePicker.getWindowToken(), 0);
            } else if (inputMethodManager.isActive(editText2)) {
                editText2.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(timePicker.getWindowToken(), 0);
            } else if (inputMethodManager.isActive(editText)) {
                editText.clearFocus();
                inputMethodManager.hideSoftInputFromWindow(timePicker.getWindowToken(), 0);
            }
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final View getAmView() {
        return this.mAmPmSpinnerInput;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final int getBaseline() {
        return this.mHourSpinner.getBaseline();
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final int getHour() {
        int value = this.mHourSpinner.getValue();
        return this.mIs24HourView ? value : this.mIsAm ? value % 12 : (value % 12) + 12;
    }

    public final void getHourFormatData() {
        String bestDateTimePattern = DateFormat.getBestDateTimePattern((Locale) this.lock, this.mIs24HourView ? "Hm" : "hm");
        int length = bestDateTimePattern.length();
        this.mHourWithTwoDigit = false;
        for (int i = 0; i < length; i++) {
            char charAt = bestDateTimePattern.charAt(i);
            if (charAt == 'H' || charAt == 'h' || charAt == 'K' || charAt == 'k') {
                this.mHourFormat = charAt;
                int i2 = i + 1;
                if (i2 >= length || charAt != bestDateTimePattern.charAt(i2)) {
                    return;
                }
                this.mHourWithTwoDigit = true;
                return;
            }
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final View getHourView() {
        return this.mHourSpinnerInput;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final int getMinute() {
        return this.mMinuteSpinner.getValue();
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final View getMinuteView() {
        return this.mMinuteSpinnerInput;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final View getPmView() {
        return this.mAmPmSpinnerInput;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final boolean is24Hour() {
        return this.mIs24HourView;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final boolean isEnabled() {
        return this.mIsEnabled;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void onRestoreInstanceState(View.BaseSavedState baseSavedState) {
        if (baseSavedState instanceof TimePicker$AbstractTimePickerDelegate$SavedState) {
            TimePicker$AbstractTimePickerDelegate$SavedState timePicker$AbstractTimePickerDelegate$SavedState = (TimePicker$AbstractTimePickerDelegate$SavedState) baseSavedState;
            setCurrentHour(timePicker$AbstractTimePickerDelegate$SavedState.mHour, true);
            setMinute(timePicker$AbstractTimePickerDelegate$SavedState.mMinute);
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final TimePicker$AbstractTimePickerDelegate$SavedState onSaveInstanceState(Parcelable parcelable) {
        return new TimePicker$AbstractTimePickerDelegate$SavedState(parcelable, getHour(), this.mMinuteSpinner.getValue(), this.mIs24HourView, 0);
    }

    public final void onTimeChanged$1() {
        ((TimePicker) this.taskExecutor).sendAccessibilityEvent(4);
        TimePicker.OnTimeChangedListener onTimeChangedListener = (TimePicker.OnTimeChangedListener) this.currentState;
        NumberPicker numberPicker = this.mMinuteSpinner;
        if (onTimeChangedListener != null) {
            getHour();
            numberPicker.getValue();
            onTimeChangedListener.onTimeChanged();
        }
        TimePicker.AnonymousClass1 anonymousClass1 = (TimePicker.AnonymousClass1) this.listeners;
        if (anonymousClass1 != null) {
            getHour();
            numberPicker.getValue();
            anonymousClass1.onTimeChanged();
        }
    }

    public final void setCurrentHour(int i, boolean z) {
        if (i == getHour()) {
            return;
        }
        if (!this.mIs24HourView) {
            if (i >= 12) {
                this.mIsAm = false;
                if (i > 12) {
                    i -= 12;
                }
            } else {
                this.mIsAm = true;
                if (i == 0) {
                    i = 12;
                }
            }
            updateAmPmControl();
        }
        this.mHourSpinner.setValue(i);
        if (z) {
            onTimeChanged$1();
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void setEnabled(boolean z) {
        this.mMinuteSpinner.setEnabled(z);
        TextView textView = this.mDivider;
        if (textView != null) {
            textView.setEnabled(z);
        }
        this.mHourSpinner.setEnabled(z);
        NumberPicker numberPicker = this.mAmPmSpinner;
        if (numberPicker != null) {
            numberPicker.setEnabled(z);
        } else {
            this.mAmPmButton.setEnabled(z);
        }
        this.mIsEnabled = z;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void setHour(int i) {
        setCurrentHour(i, true);
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void setIs24Hour(boolean z) {
        if (this.mIs24HourView == z) {
            return;
        }
        int hour = getHour();
        this.mIs24HourView = z;
        getHourFormatData();
        updateHourControl();
        setCurrentHour(hour, false);
        boolean z2 = this.mIs24HourView;
        EditText editText = this.mMinuteSpinnerInput;
        if (z2) {
            editText.setImeOptions(6);
        } else {
            editText.setImeOptions(5);
        }
        updateAmPmControl();
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void setMinute(int i) {
        NumberPicker numberPicker = this.mMinuteSpinner;
        if (i == numberPicker.getValue()) {
            return;
        }
        numberPicker.setValue(i);
        onTimeChanged$1();
    }

    public final void trySetContentDescription(View view, int i, int i2) {
        View findViewById = view.findViewById(i);
        if (findViewById != null) {
            findViewById.setContentDescription(this.appContext.getString(i2));
        }
    }

    public final void updateAmPmControl() {
        boolean z = this.mIs24HourView;
        Button button = this.mAmPmButton;
        NumberPicker numberPicker = this.mAmPmSpinner;
        if (!z) {
            int i = !this.mIsAm ? 1 : 0;
            if (numberPicker != null) {
                numberPicker.setValue(i);
                numberPicker.setVisibility(0);
            } else {
                button.setText(this.mAmPmStrings[i]);
                button.setVisibility(0);
            }
        } else if (numberPicker != null) {
            numberPicker.setVisibility(8);
        } else {
            button.setVisibility(8);
        }
        ((TimePicker) this.taskExecutor).sendAccessibilityEvent(4);
    }

    public final void updateHourControl() {
        boolean z = this.mIs24HourView;
        char c = this.mHourFormat;
        NumberPicker numberPicker = this.mHourSpinner;
        if (z) {
            if (c == 'k') {
                numberPicker.setMinValue(1);
                numberPicker.setMaxValue(24);
            } else {
                numberPicker.setMinValue(0);
                numberPicker.setMaxValue(23);
            }
        } else if (c == 'K') {
            numberPicker.setMinValue(0);
            numberPicker.setMaxValue(11);
        } else {
            numberPicker.setMinValue(1);
            numberPicker.setMaxValue(12);
        }
        numberPicker.setFormatter(this.mHourWithTwoDigit ? NumberPicker.getTwoDigitFormatter() : null);
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final boolean validateInput() {
        return true;
    }
}
