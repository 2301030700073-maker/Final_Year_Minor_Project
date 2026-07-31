package com.takisoft.datetimepicker.widget.internal;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.takisoft.datetimepicker.util.StateSet;
import com.takisoft.datetimepicker.widget.TimePickerClockDelegate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class NumericTextView extends AppCompatTextView {
    public static final double LOG_RADIX = Math.log(10.0d);
    public int mCount;
    public OnValueChangedListener mListener;
    public int mMaxCount;
    public int mMaxValue;
    public int mMinValue;
    public int mPreviousValue;
    public boolean mShowLeadingZeroes;
    public int mValue;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnValueChangedListener {
    }

    public NumericTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMinValue = 0;
        this.mMaxValue = 99;
        this.mMaxCount = 2;
        this.mShowLeadingZeroes = true;
        setHintTextColor(getTextColors().getColorForState(StateSet.get(0), 0));
        setFocusable(true);
    }

    public static boolean isKeyCodeNumeric(int i) {
        return i == 7 || i == 8 || i == 9 || i == 10 || i == 11 || i == 12 || i == 13 || i == 14 || i == 15 || i == 16;
    }

    public final OnValueChangedListener getOnDigitEnteredListener() {
        return this.mListener;
    }

    public final int getRangeMaximum() {
        return this.mMaxValue;
    }

    public final int getRangeMinimum() {
        return this.mMinValue;
    }

    public final boolean getShowLeadingZeroes() {
        return this.mShowLeadingZeroes;
    }

    public final int getValue() {
        return this.mValue;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            this.mPreviousValue = this.mValue;
            this.mValue = 0;
            this.mCount = 0;
            setHint(getText());
            setText("");
            return;
        }
        if (this.mCount == 0) {
            this.mValue = this.mPreviousValue;
            setText(getHint());
            setHint("");
        }
        int i2 = this.mValue;
        int i3 = this.mMinValue;
        if (i2 < i3) {
            this.mValue = i3;
        }
        setValue(this.mValue);
        OnValueChangedListener onValueChangedListener = this.mListener;
        if (onValueChangedListener != null) {
            ((TimePickerClockDelegate.AnonymousClass2) onValueChangedListener).onValueChanged(this, true, true);
        }
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        return isKeyCodeNumeric(i) || i == 67 || super.onKeyDown(i, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return isKeyCodeNumeric(i) || i == 67 || super.onKeyMultiple(i, i2, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        int i2;
        if (i == 67) {
            int i3 = this.mCount;
            if (i3 > 0) {
                this.mValue /= 10;
                this.mCount = i3 - 1;
            }
        } else {
            if (!isKeyCodeNumeric(i)) {
                return super.onKeyUp(i, keyEvent);
            }
            int i4 = this.mCount;
            if (i4 < this.mMaxCount && (i2 = (this.mValue * 10) + (i - 7)) <= this.mMaxValue) {
                this.mValue = i2;
                this.mCount = i4 + 1;
            }
        }
        setText(this.mCount > 0 ? String.format(CameraDevices$CC.m(new StringBuilder("%0"), this.mCount, "d"), Integer.valueOf(this.mValue)) : "");
        OnValueChangedListener onValueChangedListener = this.mListener;
        if (onValueChangedListener != null) {
            int i5 = this.mValue;
            ((TimePickerClockDelegate.AnonymousClass2) onValueChangedListener).onValueChanged(this, i5 >= this.mMinValue, this.mCount >= this.mMaxCount || i5 * 10 > this.mMaxValue);
            return true;
        }
    }

    public final void setOnDigitEnteredListener(OnValueChangedListener onValueChangedListener) {
        this.mListener = onValueChangedListener;
    }

    public final void setRange(int i, int i2) {
        if (this.mMinValue != i) {
            this.mMinValue = i;
        }
        if (this.mMaxValue != i2) {
            this.mMaxValue = i2;
            this.mMaxCount = ((int) (Math.log(i2) / LOG_RADIX)) + 1;
            CharSequence text = getText();
            int i3 = 0;
            for (int i4 = 0; i4 < this.mMaxValue; i4++) {
                setText(String.format(CameraDevices$CC.m(new StringBuilder("%0"), this.mMaxCount, "d"), Integer.valueOf(i4)));
                measure(0, 0);
                int measuredWidth = getMeasuredWidth();
                if (measuredWidth > i3) {
                    i3 = measuredWidth;
                }
            }
            setText(text);
            setMinWidth(i3);
            setMinimumWidth(i3);
            updateDisplayedValue();
        }
    }

    public final void setShowLeadingZeroes(boolean z) {
        if (this.mShowLeadingZeroes != z) {
            this.mShowLeadingZeroes = z;
            updateDisplayedValue();
        }
    }

    public final void setValue(int i) {
        if (this.mValue != i) {
            this.mValue = i;
            updateDisplayedValue();
        }
    }

    public final void updateDisplayedValue() {
        setText(String.format(this.mShowLeadingZeroes ? CameraDevices$CC.m(new StringBuilder("%0"), this.mMaxCount, "d") : "%d", Integer.valueOf(this.mValue)));
    }
}
