package com.android.launcher3.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;

/* loaded from: classes.dex */
public class ParcelableSparseArray extends SparseArray implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.android.launcher3.util.ParcelableSparseArray.1
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
            ClassLoader classLoader = ParcelableSparseArray.class.getClassLoader();
            int readInt = parcel.readInt();
            for (int i = 0; i < readInt; i++) {
                parcelableSparseArray.put(parcel.readInt(), parcel.readParcelable(classLoader));
            }
            return parcelableSparseArray;
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new ParcelableSparseArray[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(keyAt(i2));
            parcel.writeParcelable((Parcelable) valueAt(i2), 0);
        }
    }
}
