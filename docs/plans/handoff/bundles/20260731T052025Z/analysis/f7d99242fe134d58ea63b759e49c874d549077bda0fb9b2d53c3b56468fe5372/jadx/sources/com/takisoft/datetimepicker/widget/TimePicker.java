package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.icu.text.DateFormatSymbols;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.widget.FrameLayout;
import androidx.work.Data;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import com.fsck.k9.R;
import com.takisoft.datetimepicker.R$styleable;
import java.util.Calendar;
import java.util.Locale;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class TimePicker extends FrameLayout {
    public ConstraintTracker mDelegate;
    public int mMode;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.takisoft.datetimepicker.widget.TimePicker$1, reason: invalid class name */
    public final class AnonymousClass1 implements OnTimeChangedListener {
        public final /* synthetic */ Context val$context;

        public AnonymousClass1(Context context) {
            this.val$context = context;
        }

        @Override // com.takisoft.datetimepicker.widget.TimePicker.OnTimeChangedListener
        public final void onTimeChanged() {
            AutofillManager autofillManager;
            if (Build.VERSION.SDK_INT < 26 || (autofillManager = (AutofillManager) this.val$context.getSystemService(AutofillManager.class)) == null) {
                return;
            }
            autofillManager.notifyValueChanged(TimePicker.this);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnTimeChangedListener {
        void onTimeChanged();
    }

    public TimePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        attrHandler(context, attributeSet, i, Data.Companion.isLightTheme(context) ? R.style.Widget_Material_Light_TimePicker : R.style.Widget_Material_TimePicker);
    }

    public static String[] getAmPmStrings(Context context) {
        Locale locale = context.getResources().getConfiguration().locale;
        String[] amPmStrings = Build.VERSION.SDK_INT >= 24 ? DateFormatSymbols.getInstance(locale).getAmPmStrings() : java.text.DateFormatSymbols.getInstance(locale).getAmPmStrings();
        return new String[]{amPmStrings[0].length() > 4 ? amPmStrings[0].substring(0, 1) : amPmStrings[0], amPmStrings[1].length() > 4 ? amPmStrings[1].substring(0, 1) : amPmStrings[1]};
    }

    private View getAmView() {
        return this.mDelegate.getAmView();
    }

    private View getHourView() {
        return this.mDelegate.getHourView();
    }

    private View getMinuteView() {
        return this.mDelegate.getMinuteView();
    }

    private View getPmView() {
        return this.mDelegate.getPmView();
    }

    public final void attrHandler(Context context, AttributeSet attributeSet, int i, int i2) {
        TimePicker timePicker;
        Context context2;
        if (Build.VERSION.SDK_INT > 26 && getImportantForAutofill() == 0) {
            setImportantForAutofill(1);
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TimePicker, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        int i3 = obtainStyledAttributes.getInt(9, 1);
        obtainStyledAttributes.recycle();
        if (i3 == 2 && z) {
            this.mMode = context.getResources().getInteger(R.integer.time_picker_mode);
        } else {
            this.mMode = i3;
        }
        if (this.mMode != 2) {
            timePicker = this;
            context2 = context;
            timePicker.mDelegate = new TimePickerSpinnerDelegate(timePicker, context2, attributeSet, i, i2);
        } else {
            timePicker = this;
            context2 = context;
            timePicker.mDelegate = new TimePickerClockDelegate(this, context, attributeSet, i, i2);
        }
        timePicker.mDelegate.listeners = timePicker.new AnonymousClass1(context2);
    }

    @Override // android.view.View
    public final void autofill(AutofillValue autofillValue) {
        if (this.mDelegate.isEnabled()) {
            if (!autofillValue.isDate()) {
                Log.w("TimePicker", autofillValue + " could not be autofilled into " + this);
                return;
            }
            ConstraintTracker constraintTracker = this.mDelegate;
            long dateValue = autofillValue.getDateValue();
            Calendar calendar = Calendar.getInstance((Locale) constraintTracker.lock);
            calendar.setTimeInMillis(dateValue);
            constraintTracker.setHour(calendar.get(11));
            constraintTracker.setMinute(calendar.get(12));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return TimePicker.class.getName();
    }

    @Override // android.view.View
    public int getAutofillType() {
        return this.mDelegate.isEnabled() ? 4 : 0;
    }

    @Override // android.view.View
    public AutofillValue getAutofillValue() {
        if (!this.mDelegate.isEnabled()) {
            return null;
        }
        ConstraintTracker constraintTracker = this.mDelegate;
        Calendar calendar = Calendar.getInstance((Locale) constraintTracker.lock);
        calendar.set(11, constraintTracker.getHour());
        calendar.set(12, constraintTracker.getMinute());
        return AutofillValue.forDate(calendar.getTimeInMillis());
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.mDelegate.getBaseline();
    }

    @Deprecated
    public Integer getCurrentHour() {
        return Integer.valueOf(getHour());
    }

    @Deprecated
    public Integer getCurrentMinute() {
        return Integer.valueOf(getMinute());
    }

    public int getHour() {
        return this.mDelegate.getHour();
    }

    public int getMinute() {
        return this.mDelegate.getMinute();
    }

    public int getMode() {
        return this.mMode;
    }

    @Override // android.view.View
    public final boolean isEnabled() {
        return this.mDelegate.isEnabled();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        View.BaseSavedState baseSavedState = (View.BaseSavedState) parcelable;
        super.onRestoreInstanceState(baseSavedState.getSuperState());
        this.mDelegate.onRestoreInstanceState(baseSavedState);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        return this.mDelegate.onSaveInstanceState(super.onSaveInstanceState());
    }

    @Deprecated
    public void setCurrentHour(Integer num) {
        setHour(num.intValue());
    }

    @Deprecated
    public void setCurrentMinute(Integer num) {
        setMinute(num.intValue());
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.mDelegate.setEnabled(z);
    }

    public void setHour(int i) {
        this.mDelegate.setHour(Validate.clamp(i, 0, 23));
    }

    public void setIs24HourView(Boolean bool) {
        if (bool == null) {
            return;
        }
        this.mDelegate.setIs24Hour(bool.booleanValue());
    }

    public void setMinute(int i) {
        this.mDelegate.setMinute(Validate.clamp(i, 0, 59));
    }

    public void setOnTimeChangedListener(OnTimeChangedListener onTimeChangedListener) {
        this.mDelegate.currentState = onTimeChangedListener;
    }

    public TimePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.timePickerStyle);
    }

    public TimePicker(Context context) {
        this(context, null);
    }

    public TimePicker(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        attrHandler(context, attributeSet, i, i2);
    }
}
