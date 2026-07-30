package com.google.protobuf.nano.android;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.b.a1.c;
import c.b.b.a1.e;

/* loaded from: classes.dex */
public abstract class ParcelableExtendableMessageNano extends c implements Parcelable {
    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(ParcelableExtendableMessageNano.class.getName());
        parcel.writeByteArray(e.toByteArray(this));
    }
}
