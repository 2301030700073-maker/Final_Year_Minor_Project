package com.takisoft.datetimepicker.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TimePicker$AbstractTimePickerDelegate$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<TimePicker$AbstractTimePickerDelegate$SavedState> CREATOR = new OpenPgpError.AnonymousClass1(3);
    public final int mCurrentItemShowing;
    public final int mHour;
    public final boolean mIs24HourMode;
    public final int mMinute;

    public TimePicker$AbstractTimePickerDelegate$SavedState(Parcel parcel) {
        super(parcel);
        this.mHour = parcel.readInt();
        this.mMinute = parcel.readInt();
        this.mIs24HourMode = parcel.readInt() == 1;
        this.mCurrentItemShowing = parcel.readInt();
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.mHour);
        parcel.writeInt(this.mMinute);
        parcel.writeInt(this.mIs24HourMode ? 1 : 0);
        parcel.writeInt(this.mCurrentItemShowing);
    }

    public TimePicker$AbstractTimePickerDelegate$SavedState(Parcelable parcelable, int i, int i2, boolean z, int i3) {
        super(parcelable);
        this.mHour = i;
        this.mMinute = i2;
        this.mIs24HourMode = z;
        this.mCurrentItemShowing = i3;
    }
}
