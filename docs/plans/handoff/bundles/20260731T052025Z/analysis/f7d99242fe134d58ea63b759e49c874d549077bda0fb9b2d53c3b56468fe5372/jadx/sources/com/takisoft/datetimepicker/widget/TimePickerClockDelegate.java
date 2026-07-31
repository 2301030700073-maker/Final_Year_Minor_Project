package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.format.DateFormat;
import android.text.style.TtsSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Data;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import com.fsck.k9.R;
import com.takisoft.datetimepicker.R$styleable;
import com.takisoft.datetimepicker.widget.RadialTimePickerView;
import com.takisoft.datetimepicker.widget.TextInputTimePickerView;
import com.takisoft.datetimepicker.widget.TimePicker;
import com.takisoft.datetimepicker.widget.internal.NumericTextView;
import java.util.Calendar;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TimePickerClockDelegate extends ConstraintTracker {
    public final boolean mAllowAutoAdvance;
    public final RadioButton mAmLabel;
    public final View mAmPmLayout;
    public final AnonymousClass5 mCommitHour;
    public final AnonymousClass5 mCommitMinute;
    public int mCurrentHour;
    public int mCurrentMinute;
    public boolean mHourFormatShowLeadingZero;
    public boolean mHourFormatStartsAtZero;
    public final NumericTextView mHourView;
    public boolean mIs24Hour;
    public boolean mIsAmPmAtStart;
    public boolean mIsEnabled;
    public boolean mLastAnnouncedIsHour;
    public CharSequence mLastAnnouncedText;
    public final NumericTextView mMinuteView;
    public final RadioButton mPmLabel;
    public boolean mRadialPickerModeEnabled;
    public final View mRadialTimePickerHeader;
    public final ImageButton mRadialTimePickerModeButton;
    public final String mRadialTimePickerModeEnabledDescription;
    public final RadialTimePickerView mRadialTimePickerView;
    public final String mSelectHours;
    public final String mSelectMinutes;
    public final TextView mSeparatorView;
    public final View mTextInputPickerHeader;
    public final String mTextInputPickerModeEnabledDescription;
    public final TextInputTimePickerView mTextInputPickerView;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ClickActionDelegate extends View.AccessibilityDelegate {
        public final AccessibilityNodeInfoCompat.AccessibilityActionCompat mClickAction;

        public ClickActionDelegate(Context context, int i) {
            this.mClickAction = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(context.getString(i), 16);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) this.mClickAction.mAction);
        }
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [com.takisoft.datetimepicker.widget.TimePickerClockDelegate$5] */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.takisoft.datetimepicker.widget.TimePickerClockDelegate$5] */
    public TimePickerClockDelegate(TimePicker timePicker, Context context, AttributeSet attributeSet, int i, int i2) {
        super(timePicker, context);
        final int i3 = 1;
        this.mRadialPickerModeEnabled = true;
        this.mIsEnabled = true;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        AnonymousClass2 anonymousClass22 = new AnonymousClass2();
        AnonymousClass2 anonymousClass23 = new AnonymousClass2();
        final int i4 = 0;
        this.mCommitHour = new Runnable(this) { // from class: com.takisoft.datetimepicker.widget.TimePickerClockDelegate.5
            public final /* synthetic */ TimePickerClockDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i5 = i4;
                TimePickerClockDelegate timePickerClockDelegate = this.this$0;
                switch (i5) {
                    case 0:
                        timePickerClockDelegate.setHour(timePickerClockDelegate.mHourView.getValue());
                        break;
                    default:
                        timePickerClockDelegate.setMinuteInternal(timePickerClockDelegate.mMinuteView.getValue(), 0);
                        break;
                }
            }
        };
        this.mCommitMinute = new Runnable(this) { // from class: com.takisoft.datetimepicker.widget.TimePickerClockDelegate.5
            public final /* synthetic */ TimePickerClockDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i5 = i3;
                TimePickerClockDelegate timePickerClockDelegate = this.this$0;
                switch (i5) {
                    case 0:
                        timePickerClockDelegate.setHour(timePickerClockDelegate.mHourView.getValue());
                        break;
                    default:
                        timePickerClockDelegate.setMinuteInternal(timePickerClockDelegate.mMinuteView.getValue(), 0);
                        break;
                }
            }
        };
        SearchView.AnonymousClass3 anonymousClass3 = new SearchView.AnonymousClass3(2, this);
        View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: com.takisoft.datetimepicker.widget.TimePickerClockDelegate.1
            public final /* synthetic */ TimePickerClockDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5 = i3;
                TimePickerClockDelegate timePickerClockDelegate = this.this$0;
                switch (i5) {
                    case 0:
                        Context context2 = timePickerClockDelegate.appContext;
                        View view2 = timePickerClockDelegate.mTextInputPickerHeader;
                        View view3 = timePickerClockDelegate.mRadialTimePickerHeader;
                        TextInputTimePickerView textInputTimePickerView = timePickerClockDelegate.mTextInputPickerView;
                        ImageButton imageButton = timePickerClockDelegate.mRadialTimePickerModeButton;
                        boolean z = timePickerClockDelegate.mRadialPickerModeEnabled;
                        RadialTimePickerView radialTimePickerView = timePickerClockDelegate.mRadialTimePickerView;
                        if (!z) {
                            radialTimePickerView.setVisibility(0);
                            view3.setVisibility(0);
                            view2.setVisibility(8);
                            InputMethodManager inputMethodManager = (InputMethodManager) textInputTimePickerView.getContext().getSystemService("input_method");
                            IBinder windowToken = textInputTimePickerView.getWindowToken();
                            if (inputMethodManager != null && windowToken != null) {
                                inputMethodManager.hideSoftInputFromWindow(windowToken, 2);
                            }
                            textInputTimePickerView.setVisibility(8);
                            Drawable drawable = Utf8.SafeProcessor.getDrawable(context2, R.drawable.btn_keyboard_key_material);
                            Data.Companion.tintDrawable(context2, drawable);
                            imageButton.setImageDrawable(drawable);
                            imageButton.setContentDescription(timePickerClockDelegate.mTextInputPickerModeEnabledDescription);
                            timePickerClockDelegate.updateTextInputPicker();
                            timePickerClockDelegate.mRadialPickerModeEnabled = true;
                            break;
                        } else {
                            radialTimePickerView.setVisibility(8);
                            view3.setVisibility(8);
                            view2.setVisibility(0);
                            textInputTimePickerView.setVisibility(0);
                            Drawable drawable2 = Utf8.SafeProcessor.getDrawable(context2, R.drawable.btn_clock_material);
                            Data.Companion.tintDrawable(context2, drawable2);
                            imageButton.setImageDrawable(drawable2);
                            imageButton.setContentDescription(timePickerClockDelegate.mRadialTimePickerModeEnabledDescription);
                            timePickerClockDelegate.mRadialPickerModeEnabled = false;
                            break;
                        }
                    default:
                        int id = view.getId();
                        if (id == R.id.am_label) {
                            TimePickerClockDelegate.access$800(timePickerClockDelegate, 0);
                        } else if (id == R.id.pm_label) {
                            TimePickerClockDelegate.access$800(timePickerClockDelegate, 1);
                        } else if (id == R.id.hours) {
                            timePickerClockDelegate.setCurrentItemShowing(0, true, true);
                        } else if (id == R.id.minutes) {
                            timePickerClockDelegate.setCurrentItemShowing(1, true, true);
                        }
                        ((TimePicker) timePickerClockDelegate.taskExecutor).performHapticFeedback(4);
                        break;
                }
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TimePicker, i, i2);
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        Resources resources = context.getResources();
        this.mSelectHours = resources.getString(R.string.select_hours);
        this.mSelectMinutes = resources.getString(R.string.select_minutes);
        View inflate = layoutInflater.inflate(obtainStyledAttributes.getResourceId(2, R.layout.time_picker_material), timePicker);
        inflate.setSaveFromParentEnabled(false);
        View findViewById = inflate.findViewById(R.id.time_header);
        this.mRadialTimePickerHeader = findViewById;
        findViewById.setOnTouchListener(new ListPopupWindow.PopupTouchInterceptor());
        NumericTextView numericTextView = (NumericTextView) inflate.findViewById(R.id.hours);
        this.mHourView = numericTextView;
        numericTextView.setOnClickListener(onClickListener);
        numericTextView.setOnFocusChangeListener(anonymousClass3);
        numericTextView.setOnDigitEnteredListener(anonymousClass23);
        numericTextView.setAccessibilityDelegate(new ClickActionDelegate(context, R.string.select_hours));
        TextView textView = (TextView) inflate.findViewById(R.id.separator);
        this.mSeparatorView = textView;
        NumericTextView numericTextView2 = (NumericTextView) inflate.findViewById(R.id.minutes);
        this.mMinuteView = numericTextView2;
        numericTextView2.setOnClickListener(onClickListener);
        numericTextView2.setOnFocusChangeListener(anonymousClass3);
        numericTextView2.setOnDigitEnteredListener(anonymousClass23);
        numericTextView2.setAccessibilityDelegate(new ClickActionDelegate(context, R.string.select_minutes));
        numericTextView2.setRange(0, 59);
        View findViewById2 = inflate.findViewById(R.id.ampm_layout);
        this.mAmPmLayout = findViewById2;
        findViewById2.setOnTouchListener(new ListPopupWindow.PopupTouchInterceptor());
        String[] amPmStrings = TimePicker.getAmPmStrings(context);
        RadioButton radioButton = (RadioButton) findViewById2.findViewById(R.id.am_label);
        this.mAmLabel = radioButton;
        radioButton.setText(obtainVerbatim(amPmStrings[0]));
        radioButton.setOnClickListener(onClickListener);
        radioButton.measure(0, 0);
        int measuredWidth = radioButton.getMeasuredWidth();
        radioButton.setMinWidth(measuredWidth);
        radioButton.setMinimumWidth(measuredWidth);
        RadioButton radioButton2 = (RadioButton) findViewById2.findViewById(R.id.pm_label);
        this.mPmLabel = radioButton2;
        radioButton2.setText(obtainVerbatim(amPmStrings[1]));
        radioButton2.setOnClickListener(onClickListener);
        radioButton2.measure(0, 0);
        int measuredWidth2 = radioButton2.getMeasuredWidth();
        radioButton2.setMinWidth(measuredWidth2);
        radioButton2.setMinimumWidth(measuredWidth2);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(1);
        View findViewById3 = inflate.findViewById(R.id.input_header);
        this.mTextInputPickerHeader = findViewById3;
        if (colorStateList != null) {
            numericTextView.setTextColor(colorStateList);
            textView.setTextColor(colorStateList);
            numericTextView2.setTextColor(colorStateList);
            radioButton.setTextColor(colorStateList);
            radioButton2.setTextColor(colorStateList);
        }
        if (obtainStyledAttributes.getDrawable(4) != null) {
            findViewById.setBackground(obtainStyledAttributes.getDrawable(4));
            findViewById3.setBackground(obtainStyledAttributes.getDrawable(4));
        }
        obtainStyledAttributes.recycle();
        RadialTimePickerView radialTimePickerView = (RadialTimePickerView) inflate.findViewById(R.id.radial_picker);
        this.mRadialTimePickerView = radialTimePickerView;
        radialTimePickerView.applyAttributes(attributeSet, i, i2);
        radialTimePickerView.setOnValueSelectedListener(anonymousClass2);
        TextInputTimePickerView textInputTimePickerView = (TextInputTimePickerView) inflate.findViewById(R.id.input_mode);
        this.mTextInputPickerView = textInputTimePickerView;
        textInputTimePickerView.setListener(anonymousClass22);
        ImageButton imageButton = (ImageButton) inflate.findViewById(R.id.toggle_mode);
        this.mRadialTimePickerModeButton = imageButton;
        Drawable drawable = imageButton.getDrawable();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(new int[]{R.attr.colorControlNormal});
        final int i5 = 0;
        ColorStateList colorStateList2 = obtainStyledAttributes2.getColorStateList(0);
        obtainStyledAttributes2.recycle();
        if (colorStateList2 != null) {
            drawable.setTintList(colorStateList2);
        }
        imageButton.setImageDrawable(drawable);
        imageButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.takisoft.datetimepicker.widget.TimePickerClockDelegate.1
            public final /* synthetic */ TimePickerClockDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i52 = i5;
                TimePickerClockDelegate timePickerClockDelegate = this.this$0;
                switch (i52) {
                    case 0:
                        Context context2 = timePickerClockDelegate.appContext;
                        View view2 = timePickerClockDelegate.mTextInputPickerHeader;
                        View view3 = timePickerClockDelegate.mRadialTimePickerHeader;
                        TextInputTimePickerView textInputTimePickerView2 = timePickerClockDelegate.mTextInputPickerView;
                        ImageButton imageButton2 = timePickerClockDelegate.mRadialTimePickerModeButton;
                        boolean z = timePickerClockDelegate.mRadialPickerModeEnabled;
                        RadialTimePickerView radialTimePickerView2 = timePickerClockDelegate.mRadialTimePickerView;
                        if (!z) {
                            radialTimePickerView2.setVisibility(0);
                            view3.setVisibility(0);
                            view2.setVisibility(8);
                            InputMethodManager inputMethodManager = (InputMethodManager) textInputTimePickerView2.getContext().getSystemService("input_method");
                            IBinder windowToken = textInputTimePickerView2.getWindowToken();
                            if (inputMethodManager != null && windowToken != null) {
                                inputMethodManager.hideSoftInputFromWindow(windowToken, 2);
                            }
                            textInputTimePickerView2.setVisibility(8);
                            Drawable drawable2 = Utf8.SafeProcessor.getDrawable(context2, R.drawable.btn_keyboard_key_material);
                            Data.Companion.tintDrawable(context2, drawable2);
                            imageButton2.setImageDrawable(drawable2);
                            imageButton2.setContentDescription(timePickerClockDelegate.mTextInputPickerModeEnabledDescription);
                            timePickerClockDelegate.updateTextInputPicker();
                            timePickerClockDelegate.mRadialPickerModeEnabled = true;
                            break;
                        } else {
                            radialTimePickerView2.setVisibility(8);
                            view3.setVisibility(8);
                            view2.setVisibility(0);
                            textInputTimePickerView2.setVisibility(0);
                            Drawable drawable22 = Utf8.SafeProcessor.getDrawable(context2, R.drawable.btn_clock_material);
                            Data.Companion.tintDrawable(context2, drawable22);
                            imageButton2.setImageDrawable(drawable22);
                            imageButton2.setContentDescription(timePickerClockDelegate.mRadialTimePickerModeEnabledDescription);
                            timePickerClockDelegate.mRadialPickerModeEnabled = false;
                            break;
                        }
                    default:
                        int id = view.getId();
                        if (id == R.id.am_label) {
                            TimePickerClockDelegate.access$800(timePickerClockDelegate, 0);
                        } else if (id == R.id.pm_label) {
                            TimePickerClockDelegate.access$800(timePickerClockDelegate, 1);
                        } else if (id == R.id.hours) {
                            timePickerClockDelegate.setCurrentItemShowing(0, true, true);
                        } else if (id == R.id.minutes) {
                            timePickerClockDelegate.setCurrentItemShowing(1, true, true);
                        }
                        ((TimePicker) timePickerClockDelegate.taskExecutor).performHapticFeedback(4);
                        break;
                }
            }
        });
        this.mRadialTimePickerModeEnabledDescription = context.getResources().getString(R.string.time_picker_radial_mode_description);
        this.mTextInputPickerModeEnabledDescription = context.getResources().getString(R.string.time_picker_text_input_mode_description);
        this.mAllowAutoAdvance = true;
        updateHourFormat();
        Calendar calendar = Calendar.getInstance((Locale) this.lock);
        int i6 = calendar.get(11);
        int i7 = calendar.get(12);
        boolean z = this.mIs24Hour;
        this.mCurrentHour = i6;
        this.mCurrentMinute = i7;
        this.mIs24Hour = z;
        updateUI(0);
    }

    public static void access$800(TimePickerClockDelegate timePickerClockDelegate, int i) {
        RadioButton radioButton = timePickerClockDelegate.mPmLabel;
        RadioButton radioButton2 = timePickerClockDelegate.mAmLabel;
        boolean z = i == 0;
        radioButton2.setActivated(z);
        radioButton2.setChecked(z);
        boolean z2 = i == 1;
        radioButton.setActivated(z2);
        radioButton.setChecked(z2);
        RadialTimePickerView radialTimePickerView = timePickerClockDelegate.mRadialTimePickerView;
        if (radialTimePickerView.mAmOrPm == i || radialTimePickerView.mIs24HourMode) {
            return;
        }
        radialTimePickerView.mAmOrPm = i;
        radialTimePickerView.invalidate();
        radialTimePickerView.mTouchHelper.invalidateRoot();
        timePickerClockDelegate.mCurrentHour = timePickerClockDelegate.getHour();
        timePickerClockDelegate.updateTextInputPicker();
        TimePicker.OnTimeChangedListener onTimeChangedListener = (TimePicker.OnTimeChangedListener) timePickerClockDelegate.currentState;
        if (onTimeChangedListener != null) {
            timePickerClockDelegate.getHour();
            radialTimePickerView.getCurrentMinute();
            onTimeChangedListener.onTimeChanged();
        }
    }

    public static final SpannableStringBuilder obtainVerbatim(String str) {
        return new SpannableStringBuilder().append(str, new TtsSpan.VerbatimBuilder(str).build(), 0);
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final View getAmView() {
        return this.mAmLabel;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final int getBaseline() {
        return -1;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final int getHour() {
        RadialTimePickerView radialTimePickerView = this.mRadialTimePickerView;
        int currentHour = radialTimePickerView.getCurrentHour();
        return this.mIs24Hour ? currentHour : radialTimePickerView.getAmOrPm() == 1 ? (currentHour % 12) + 12 : currentHour % 12;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final View getHourView() {
        return this.mHourView;
    }

    public final int getLocalizedHour(int i) {
        boolean z = this.mIs24Hour;
        if (!z) {
            i %= 12;
        }
        return (this.mHourFormatStartsAtZero || i != 0) ? i : z ? 24 : 12;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final int getMinute() {
        return this.mRadialTimePickerView.getCurrentMinute();
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final View getMinuteView() {
        return this.mMinuteView;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final View getPmView() {
        return this.mPmLabel;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final boolean is24Hour() {
        return this.mIs24Hour;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final boolean isEnabled() {
        return this.mIsEnabled;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void onRestoreInstanceState(View.BaseSavedState baseSavedState) {
        if (baseSavedState instanceof TimePicker$AbstractTimePickerDelegate$SavedState) {
            TimePicker$AbstractTimePickerDelegate$SavedState timePicker$AbstractTimePickerDelegate$SavedState = (TimePicker$AbstractTimePickerDelegate$SavedState) baseSavedState;
            int i = timePicker$AbstractTimePickerDelegate$SavedState.mHour;
            int i2 = timePicker$AbstractTimePickerDelegate$SavedState.mMinute;
            boolean z = timePicker$AbstractTimePickerDelegate$SavedState.mIs24HourMode;
            int i3 = timePicker$AbstractTimePickerDelegate$SavedState.mCurrentItemShowing;
            this.mCurrentHour = i;
            this.mCurrentMinute = i2;
            this.mIs24Hour = z;
            updateUI(i3);
            this.mRadialTimePickerView.invalidate();
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final TimePicker$AbstractTimePickerDelegate$SavedState onSaveInstanceState(Parcelable parcelable) {
        int hour = getHour();
        RadialTimePickerView radialTimePickerView = this.mRadialTimePickerView;
        return new TimePicker$AbstractTimePickerDelegate$SavedState(parcelable, hour, radialTimePickerView.getCurrentMinute(), this.mIs24Hour, radialTimePickerView.getCurrentItemShowing());
    }

    public final void onTimeChanged() {
        ((TimePicker) this.taskExecutor).sendAccessibilityEvent(4);
        TimePicker.OnTimeChangedListener onTimeChangedListener = (TimePicker.OnTimeChangedListener) this.currentState;
        RadialTimePickerView radialTimePickerView = this.mRadialTimePickerView;
        if (onTimeChangedListener != null) {
            getHour();
            radialTimePickerView.getCurrentMinute();
            onTimeChangedListener.onTimeChanged();
        }
        TimePicker.AnonymousClass1 anonymousClass1 = (TimePicker.AnonymousClass1) this.listeners;
        if (anonymousClass1 != null) {
            getHour();
            radialTimePickerView.getCurrentMinute();
            anonymousClass1.onTimeChanged();
        }
    }

    public final void setCurrentItemShowing(int i, boolean z, boolean z2) {
        TimePicker timePicker = (TimePicker) this.taskExecutor;
        RadialTimePickerView radialTimePickerView = this.mRadialTimePickerView;
        if (i == 0) {
            radialTimePickerView.showPicker(true, z);
        } else if (i != 1) {
            radialTimePickerView.getClass();
            Log.e("RadialTimePickerView", "ClockView does not support showing item " + i);
        } else {
            radialTimePickerView.showPicker(false, z);
        }
        if (i == 0) {
            if (z2) {
                timePicker.announceForAccessibility(this.mSelectHours);
            }
        } else if (z2) {
            timePicker.announceForAccessibility(this.mSelectMinutes);
        }
        this.mHourView.setActivated(i == 0);
        this.mMinuteView.setActivated(i == 1);
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void setEnabled(boolean z) {
        this.mHourView.setEnabled(z);
        this.mMinuteView.setEnabled(z);
        this.mAmLabel.setEnabled(z);
        this.mPmLabel.setEnabled(z);
        this.mRadialTimePickerView.setEnabled(z);
        this.mIsEnabled = z;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void setHour(int i) {
        setHourInternal(i, 0, true);
    }

    public final void setHourInternal(int i, int i2, boolean z) {
        TimePicker timePicker = (TimePicker) this.taskExecutor;
        if (this.mCurrentHour == i) {
            return;
        }
        this.mCurrentHour = i;
        int localizedHour = getLocalizedHour(i);
        NumericTextView numericTextView = this.mHourView;
        numericTextView.setValue(localizedHour);
        if (z) {
            CharSequence text = numericTextView.getText();
            if (!this.mLastAnnouncedIsHour || !text.equals(this.mLastAnnouncedText)) {
                timePicker.announceForAccessibility(text);
                this.mLastAnnouncedText = text;
                this.mLastAnnouncedIsHour = true;
            }
        }
        updateHeaderAmPm();
        if (i2 != 1) {
            RadialTimePickerView radialTimePickerView = this.mRadialTimePickerView;
            radialTimePickerView.setCurrentHour(i);
            int i3 = i < 12 ? 0 : 1;
            if (radialTimePickerView.mAmOrPm != i3 && !radialTimePickerView.mIs24HourMode) {
                radialTimePickerView.mAmOrPm = i3;
                radialTimePickerView.invalidate();
                radialTimePickerView.mTouchHelper.invalidateRoot();
            }
        }
        if (i2 != 2) {
            updateTextInputPicker();
        }
        timePicker.invalidate();
        onTimeChanged();
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void setIs24Hour(boolean z) {
        if (this.mIs24Hour != z) {
            this.mIs24Hour = z;
            this.mCurrentHour = getHour();
            updateHourFormat();
            updateUI(this.mRadialTimePickerView.getCurrentItemShowing());
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void setMinute(int i) {
        setMinuteInternal(i, 0);
    }

    public final void setMinuteInternal(int i, int i2) {
        TimePicker timePicker = (TimePicker) this.taskExecutor;
        if (this.mCurrentMinute == i) {
            return;
        }
        this.mCurrentMinute = i;
        NumericTextView numericTextView = this.mMinuteView;
        numericTextView.setValue(i);
        CharSequence text = numericTextView.getText();
        if (this.mLastAnnouncedIsHour || !text.equals(this.mLastAnnouncedText)) {
            timePicker.announceForAccessibility(text);
            this.mLastAnnouncedText = text;
            this.mLastAnnouncedIsHour = false;
        }
        if (i2 != 1) {
            this.mRadialTimePickerView.setCurrentMinute(i);
        }
        if (i2 != 2) {
            updateTextInputPicker();
        }
        timePicker.invalidate();
        onTimeChanged();
    }

    public final void updateHeaderAmPm() {
        boolean z = this.mIs24Hour;
        View view = this.mAmPmLayout;
        if (z) {
            view.setVisibility(8);
            return;
        }
        boolean startsWith = DateFormat.getBestDateTimePattern((Locale) this.lock, "hm").startsWith("a");
        if (this.mIsAmPmAtStart != startsWith) {
            this.mIsAmPmAtStart = startsWith;
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
            int[] rules = layoutParams.getRules();
            if (rules[1] != 0 || rules[0] != 0) {
                if (startsWith) {
                    layoutParams.addRule(1, 0);
                    layoutParams.addRule(0, this.mHourView.getId());
                } else {
                    layoutParams.addRule(0, 0);
                    layoutParams.addRule(1, this.mMinuteView.getId());
                }
            }
            view.setLayoutParams(layoutParams);
        }
        boolean z2 = this.mCurrentHour >= 12;
        boolean z3 = !z2;
        RadioButton radioButton = this.mAmLabel;
        radioButton.setActivated(z3);
        radioButton.setChecked(z3);
        boolean z4 = z2;
        RadioButton radioButton2 = this.mPmLabel;
        radioButton2.setActivated(z4);
        radioButton2.setChecked(z4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006e A[LOOP:1: B:29:0x006a->B:31:0x006e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateHourFormat() {
        /*
            r10 = this;
            java.lang.Object r0 = r10.lock
            java.util.Locale r0 = (java.util.Locale) r0
            boolean r1 = r10.mIs24Hour
            if (r1 == 0) goto Lb
            java.lang.String r1 = "Hm"
            goto Ld
        Lb:
            java.lang.String r1 = "hm"
        Ld:
            java.lang.String r1 = android.text.format.DateFormat.getBestDateTimePattern(r0, r1)
            int r2 = r1.length()
            r3 = 0
            r4 = r3
        L17:
            r5 = 75
            r6 = 72
            r7 = 1
            if (r4 >= r2) goto L3f
            char r8 = r1.charAt(r4)
            if (r8 == r6) goto L32
            r9 = 104(0x68, float:1.46E-43)
            if (r8 == r9) goto L32
            if (r8 == r5) goto L32
            r9 = 107(0x6b, float:1.5E-43)
            if (r8 != r9) goto L2f
            goto L32
        L2f:
            int r4 = r4 + 1
            goto L17
        L32:
            int r4 = r4 + r7
            if (r4 >= r2) goto L3d
            char r1 = r1.charAt(r4)
            if (r8 != r1) goto L3d
            r1 = r7
            goto L41
        L3d:
            r1 = r3
            goto L41
        L3f:
            r1 = r3
            r8 = r1
        L41:
            r10.mHourFormatShowLeadingZero = r1
            if (r8 == r5) goto L4a
            if (r8 != r6) goto L48
            goto L4a
        L48:
            r1 = r3
            goto L4b
        L4a:
            r1 = r7
        L4b:
            r10.mHourFormatStartsAtZero = r1
            r1 = r1 ^ r7
            boolean r2 = r10.mIs24Hour
            if (r2 == 0) goto L55
            r2 = 23
            goto L57
        L55:
            r2 = 11
        L57:
            int r2 = r2 + r1
            com.takisoft.datetimepicker.widget.internal.NumericTextView r4 = r10.mHourView
            r4.setRange(r1, r2)
            boolean r1 = r10.mHourFormatShowLeadingZero
            r4.setShowLeadingZeroes(r1)
            java.text.NumberFormat r0 = java.text.NumberFormat.getIntegerInstance(r0)
            r0.setGroupingUsed(r3)
            r1 = r3
        L6a:
            r2 = 10
            if (r3 >= r2) goto L7e
            long r4 = (long) r3
            java.lang.String r2 = r0.format(r4)
            int r2 = r2.length()
            int r1 = java.lang.Math.max(r1, r2)
            int r3 = r3 + 1
            goto L6a
        L7e:
            int r1 = r1 * 2
            com.takisoft.datetimepicker.widget.TextInputTimePickerView r10 = r10.mTextInputPickerView
            r10.setHourFormat(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.takisoft.datetimepicker.widget.TimePickerClockDelegate.updateHourFormat():void");
    }

    public final void updateTextInputPicker() {
        int localizedHour = getLocalizedHour(this.mCurrentHour);
        int i = this.mCurrentMinute;
        boolean z = this.mCurrentHour >= 12;
        boolean z2 = this.mIs24Hour;
        boolean z3 = this.mHourFormatStartsAtZero;
        TextInputTimePickerView textInputTimePickerView = this.mTextInputPickerView;
        textInputTimePickerView.mIs24Hour = z2;
        textInputTimePickerView.mHourFormatStartsAtZero = z3;
        textInputTimePickerView.mAmPmSpinner.setVisibility(z2 ? 4 : 0);
        Spinner spinner = textInputTimePickerView.mAmPmSpinner;
        if (z) {
            spinner.setSelection(1);
        } else {
            spinner.setSelection(0);
        }
        textInputTimePickerView.mHourEditText.setText(String.format("%d", Integer.valueOf(localizedHour)));
        textInputTimePickerView.mMinuteEditText.setText(String.format("%d", Integer.valueOf(i)));
        if (textInputTimePickerView.mErrorShowing) {
            textInputTimePickerView.validateInput();
        }
    }

    public final void updateUI(int i) {
        updateHeaderAmPm();
        this.mHourView.setValue(getLocalizedHour(this.mCurrentHour));
        String bestDateTimePattern = DateFormat.getBestDateTimePattern((Locale) this.lock, this.mIs24Hour ? "Hm" : "hm");
        char[] cArr = {'H', 'h', 'K', 'k'};
        int length = bestDateTimePattern.length() - 1;
        loop0: while (true) {
            if (length < 0) {
                length = -1;
                break;
            }
            char charAt = bestDateTimePattern.charAt(length);
            for (int i2 = 0; i2 < 4; i2++) {
                if (charAt == cArr[i2]) {
                    break loop0;
                }
            }
            length--;
        }
        String ch = length == -1 ? ":" : Character.toString(bestDateTimePattern.charAt(length + 1));
        this.mSeparatorView.setText(ch);
        this.mTextInputPickerView.mInputSeparatorView.setText(ch);
        this.mMinuteView.setValue(this.mCurrentMinute);
        int i3 = this.mCurrentHour;
        int i4 = this.mCurrentMinute;
        boolean z = this.mIs24Hour;
        RadialTimePickerView radialTimePickerView = this.mRadialTimePickerView;
        if (radialTimePickerView.mIs24HourMode != z) {
            radialTimePickerView.mIs24HourMode = z;
            radialTimePickerView.initData();
        }
        radialTimePickerView.setCurrentHourInternal(i3, false);
        radialTimePickerView.setCurrentMinuteInternal(i4, false);
        setCurrentItemShowing(i, false, true);
        updateTextInputPicker();
        ((TimePicker) this.taskExecutor).invalidate();
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final boolean validateInput() {
        return this.mTextInputPickerView.validateInput();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.takisoft.datetimepicker.widget.TimePickerClockDelegate$2, reason: invalid class name */
    public final class AnonymousClass2 implements RadialTimePickerView.OnValueSelectedListener, TextInputTimePickerView.OnValueTypedListener, NumericTextView.OnValueChangedListener {
        public /* synthetic */ AnonymousClass2() {
        }

        public void onValueChanged(NumericTextView numericTextView, boolean z, boolean z2) {
            AnonymousClass5 anonymousClass5;
            TimePickerClockDelegate timePickerClockDelegate = TimePickerClockDelegate.this;
            NumericTextView numericTextView2 = timePickerClockDelegate.mMinuteView;
            NumericTextView numericTextView3 = null;
            if (numericTextView == timePickerClockDelegate.mHourView) {
                anonymousClass5 = timePickerClockDelegate.mCommitHour;
                if (!numericTextView.isFocused()) {
                    numericTextView2 = null;
                }
                numericTextView3 = numericTextView2;
            } else if (numericTextView != numericTextView2) {
                return;
            } else {
                anonymousClass5 = timePickerClockDelegate.mCommitMinute;
            }
            numericTextView.removeCallbacks(anonymousClass5);
            if (z) {
                if (!z2) {
                    numericTextView.postDelayed(anonymousClass5, 2000L);
                    return;
                }
                anonymousClass5.run();
                if (numericTextView3 != null) {
                    numericTextView3.requestFocus();
                }
            }
        }

        public void onValueSelected(int i, int i2, boolean z) {
            TimePickerClockDelegate timePickerClockDelegate = TimePickerClockDelegate.this;
            RadialTimePickerView radialTimePickerView = timePickerClockDelegate.mRadialTimePickerView;
            if (i == 0) {
                boolean z2 = timePickerClockDelegate.getHour() != i2;
                boolean z3 = timePickerClockDelegate.mAllowAutoAdvance && z;
                timePickerClockDelegate.setHourInternal(i2, 1, !z3);
                if (z3) {
                    timePickerClockDelegate.setCurrentItemShowing(1, true, false);
                    int localizedHour = timePickerClockDelegate.getLocalizedHour(i2);
                    ((TimePicker) timePickerClockDelegate.taskExecutor).announceForAccessibility(localizedHour + ". " + timePickerClockDelegate.mSelectMinutes);
                }
                r2 = z2;
            } else if (i == 1) {
                r2 = radialTimePickerView.getCurrentMinute() != i2;
                timePickerClockDelegate.setMinuteInternal(i2, 1);
            }
            TimePicker.OnTimeChangedListener onTimeChangedListener = (TimePicker.OnTimeChangedListener) timePickerClockDelegate.currentState;
            if (onTimeChangedListener == null || !r2) {
                return;
            }
            timePickerClockDelegate.getHour();
            radialTimePickerView.getCurrentMinute();
            onTimeChangedListener.onTimeChanged();
        }

        public void onValueChanged(int i, int i2) {
            TimePickerClockDelegate timePickerClockDelegate = TimePickerClockDelegate.this;
            if (i == 0) {
                timePickerClockDelegate.setHourInternal(i2, 2, false);
            } else if (i == 1) {
                timePickerClockDelegate.setMinuteInternal(i2, 2);
            } else {
                if (i != 2) {
                    return;
                }
                TimePickerClockDelegate.access$800(timePickerClockDelegate, i2);
            }
        }
    }
}
