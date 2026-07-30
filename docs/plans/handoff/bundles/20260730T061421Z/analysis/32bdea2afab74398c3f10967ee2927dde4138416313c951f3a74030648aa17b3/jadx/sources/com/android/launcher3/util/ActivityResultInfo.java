package com.android.launcher3.util;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ActivityResultInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.android.launcher3.util.ActivityResultInfo.1
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new ActivityResultInfo(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new ActivityResultInfo[i];
        }
    };
    public final Intent data;
    public final int requestCode;
    public final int resultCode;

    public ActivityResultInfo(int i, int i2, Intent intent) {
        this.requestCode = i;
        this.resultCode = i2;
        this.data = intent;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.requestCode);
        parcel.writeInt(this.resultCode);
        if (this.data == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            this.data.writeToParcel(parcel, i);
        }
    }

    public ActivityResultInfo(Parcel parcel, AnonymousClass1 anonymousClass1) {
        this.requestCode = parcel.readInt();
        this.resultCode = parcel.readInt();
        this.data = parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null;
    }
}
