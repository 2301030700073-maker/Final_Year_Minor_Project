package com.bytehamster.lib.preferencesearch.ui;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentState;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RevealAnimationSetting implements Parcelable {
    public static final Parcelable.Creator<RevealAnimationSetting> CREATOR = new FragmentState.AnonymousClass1(24);
    public int centerX;
    public int centerY;
    public int colorAccent;
    public int height;
    public int width;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.centerX);
        parcel.writeInt(this.centerY);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeInt(this.colorAccent);
    }
}
