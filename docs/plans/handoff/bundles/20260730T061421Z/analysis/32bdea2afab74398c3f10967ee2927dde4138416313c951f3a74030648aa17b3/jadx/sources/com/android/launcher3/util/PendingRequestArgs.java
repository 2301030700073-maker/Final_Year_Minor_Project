package com.android.launcher3.util;

import android.content.ContentValues;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import com.android.launcher3.model.data.ItemInfo;

/* loaded from: classes.dex */
public class PendingRequestArgs extends ItemInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.android.launcher3.util.PendingRequestArgs.1
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new PendingRequestArgs(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new PendingRequestArgs[i];
        }
    };
    public final int mArg1;
    public final Parcelable mObject;
    public final int mObjectType;

    public PendingRequestArgs(int i, int i2, Parcelable parcelable) {
        this.mArg1 = i;
        this.mObjectType = i2;
        this.mObject = parcelable;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Intent getPendingIntent() {
        if (this.mObjectType == 1) {
            return (Intent) this.mObject;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ContentValues contentValues = new ContentValues();
        writeToValues(new ContentWriter(contentValues, null));
        contentValues.writeToParcel(parcel, i);
        parcel.writeParcelable(this.user, i);
        parcel.writeInt(this.mArg1);
        parcel.writeInt(this.mObjectType);
        parcel.writeParcelable(this.mObject, i);
    }

    public PendingRequestArgs(Parcel parcel) {
        readFromValues((ContentValues) ContentValues.CREATOR.createFromParcel(parcel));
        this.user = (UserHandle) parcel.readParcelable(null);
        this.mArg1 = parcel.readInt();
        this.mObjectType = parcel.readInt();
        this.mObject = parcel.readParcelable(PendingRequestArgs.class.getClassLoader());
    }
}
