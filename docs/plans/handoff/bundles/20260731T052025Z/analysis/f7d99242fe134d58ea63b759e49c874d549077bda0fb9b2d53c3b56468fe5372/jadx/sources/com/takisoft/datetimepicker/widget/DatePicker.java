package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.takisoft.datetimepicker.DatePickerDialog;
import com.takisoft.datetimepicker.R$styleable;
import java.util.Calendar;
import java.util.Locale;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class DatePicker extends FrameLayout {
    public AbstractDatePickerDelegate mDelegate;
    public int mMode;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface ValidationCallback {
    }

    public DatePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        attrHandler(context, attributeSet, i, Data.Companion.isLightTheme(context) ? R.style.Widget_Material_Light_DatePicker : R.style.Widget_Material_DatePicker);
    }

    public final void attrHandler(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DatePicker, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(3, false);
        int i3 = obtainStyledAttributes.getInt(2, 1);
        int i4 = obtainStyledAttributes.getInt(7, 0);
        obtainStyledAttributes.recycle();
        if (i3 == 2 && z) {
            this.mMode = context.getResources().getInteger(R.integer.date_picker_mode);
        } else {
            this.mMode = i3;
        }
        if (this.mMode != 2) {
            this.mDelegate = new DatePickerSpinnerDelegate(this, context, attributeSet, i, i2);
        } else {
            this.mDelegate = new DatePickerCalendarDelegate(this, context, attributeSet, i, i2);
        }
        if (i4 != 0) {
            setFirstDayOfWeek(i4);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return DatePicker.class.getName();
    }

    @Deprecated
    public CalendarView getCalendarView() {
        return this.mDelegate.getCalendarView();
    }

    @Deprecated
    public boolean getCalendarViewShown() {
        return this.mDelegate.getCalendarViewShown();
    }

    public int getDayOfMonth() {
        return this.mDelegate.getDayOfMonth();
    }

    public int getFirstDayOfWeek() {
        return this.mDelegate.getFirstDayOfWeek();
    }

    public long getMaxDate() {
        return this.mDelegate.getMaxDate().getTimeInMillis();
    }

    public long getMinDate() {
        return this.mDelegate.getMinDate().getTimeInMillis();
    }

    public int getMode() {
        return this.mMode;
    }

    public int getMonth() {
        return this.mDelegate.getMonth();
    }

    @Deprecated
    public boolean getSpinnersShown() {
        return this.mDelegate.getSpinnersShown();
    }

    public int getYear() {
        return this.mDelegate.getYear();
    }

    public final void init(int i, int i2, int i3, DatePickerDialog datePickerDialog) {
        this.mDelegate.init(i, i2, i3, datePickerDialog);
    }

    @Override // android.view.View
    public final boolean isEnabled() {
        return this.mDelegate.isEnabled();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mDelegate.onConfigurationChanged(configuration);
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
    public void setCalendarViewShown(boolean z) {
        this.mDelegate.setCalendarViewShown(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        if (this.mDelegate.isEnabled() == z) {
            return;
        }
        super.setEnabled(z);
        this.mDelegate.setEnabled(z);
    }

    public void setFirstDayOfWeek(int i) {
        if (i < 1 || i > 7) {
            UriKt$$ExternalSyntheticBUOutline0.m("firstDayOfWeek must be between 1 and 7");
        } else {
            this.mDelegate.setFirstDayOfWeek(i);
        }
    }

    public void setMaxDate(long j) {
        this.mDelegate.setMaxDate(j);
    }

    public void setMinDate(long j) {
        this.mDelegate.setMinDate(j);
    }

    @Deprecated
    public void setSpinnersShown(boolean z) {
        this.mDelegate.setSpinnersShown(z);
    }

    public void setValidationCallback(ValidationCallback validationCallback) {
        this.mDelegate.getClass();
    }

    public DatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.datePickerStyle);
    }

    public DatePicker(Context context) {
        this(context, null);
    }

    public DatePicker(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        attrHandler(context, attributeSet, i, i2);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class AbstractDatePickerDelegate {
        public Context mContext;
        public Locale mCurrentLocale;
        public DatePicker mDelegator;
        public DatePickerDialog mOnDateChangedListener;

        public AbstractDatePickerDelegate(DatePicker datePicker, Context context) {
            this.mDelegator = datePicker;
            this.mContext = context;
            setCurrentLocale(Locale.getDefault());
        }

        public abstract CalendarView getCalendarView();

        public abstract boolean getCalendarViewShown();

        public abstract int getDayOfMonth();

        public abstract int getFirstDayOfWeek();

        public abstract Calendar getMaxDate();

        public abstract Calendar getMinDate();

        public abstract int getMonth();

        public abstract boolean getSpinnersShown();

        public abstract int getYear();

        public abstract void init(int i, int i2, int i3, DatePickerDialog datePickerDialog);

        public abstract boolean isEnabled();

        public abstract void onConfigurationChanged(Configuration configuration);

        public abstract void onRestoreInstanceState(View.BaseSavedState baseSavedState);

        public abstract SavedState onSaveInstanceState(Parcelable parcelable);

        public abstract void setCalendarViewShown(boolean z);

        public void setCurrentLocale(Locale locale) {
            if (locale.equals(this.mCurrentLocale)) {
                return;
            }
            this.mCurrentLocale = locale;
            onLocaleChanged(locale);
        }

        public abstract void setEnabled(boolean z);

        public abstract void setFirstDayOfWeek(int i);

        public abstract void setMaxDate(long j);

        public abstract void setMinDate(long j);

        public abstract void setSpinnersShown(boolean z);

        public void onLocaleChanged(Locale locale) {
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class SavedState extends View.BaseSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new OpenPgpError.AnonymousClass1(2);
            public final int mCurrentView;
            public final int mListPosition;
            public final int mListPositionOffset;
            public final long mMaxDate;
            public final long mMinDate;
            public final int mSelectedDay;
            public final int mSelectedMonth;
            public final int mSelectedYear;

            public SavedState(Parcel parcel) {
                super(parcel);
                this.mSelectedYear = parcel.readInt();
                this.mSelectedMonth = parcel.readInt();
                this.mSelectedDay = parcel.readInt();
                this.mMinDate = parcel.readLong();
                this.mMaxDate = parcel.readLong();
                this.mCurrentView = parcel.readInt();
                this.mListPosition = parcel.readInt();
                this.mListPositionOffset = parcel.readInt();
            }

            @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.mSelectedYear);
                parcel.writeInt(this.mSelectedMonth);
                parcel.writeInt(this.mSelectedDay);
                parcel.writeLong(this.mMinDate);
                parcel.writeLong(this.mMaxDate);
                parcel.writeInt(this.mCurrentView);
                parcel.writeInt(this.mListPosition);
                parcel.writeInt(this.mListPositionOffset);
            }

            public SavedState(Parcelable parcelable, int i, int i2, int i3, long j, long j2, int i4, int i5, int i6) {
                super(parcelable);
                this.mSelectedYear = i;
                this.mSelectedMonth = i2;
                this.mSelectedDay = i3;
                this.mMinDate = j;
                this.mMaxDate = j2;
                this.mCurrentView = i4;
                this.mListPosition = i5;
                this.mListPositionOffset = i6;
            }
        }
    }
}
