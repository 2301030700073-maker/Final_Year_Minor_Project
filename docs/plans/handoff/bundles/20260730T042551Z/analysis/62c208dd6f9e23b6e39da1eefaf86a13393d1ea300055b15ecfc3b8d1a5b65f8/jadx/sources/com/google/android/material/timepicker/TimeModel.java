package com.google.android.material.timepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes3.dex */
class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new Cdo();

    /* renamed from: case, reason: not valid java name */
    public final int f11762case;

    /* renamed from: for, reason: not valid java name */
    public final int f11763for;

    /* renamed from: new, reason: not valid java name */
    public final int f11764new;

    /* renamed from: try, reason: not valid java name */
    public final int f11765try;

    /* renamed from: com.google.android.material.timepicker.TimeModel$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<TimeModel> {
        @Override // android.os.Parcelable.Creator
        public final TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final TimeModel[] newArray(int i) {
            return new TimeModel[i];
        }
    }

    public TimeModel() {
        this(0, 0, 10, 0);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        return this.f11764new == timeModel.f11764new && this.f11765try == timeModel.f11765try && this.f11763for == timeModel.f11763for && this.f11762case == timeModel.f11762case;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f11763for), Integer.valueOf(this.f11764new), Integer.valueOf(this.f11765try), Integer.valueOf(this.f11762case)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f11764new);
        parcel.writeInt(this.f11765try);
        parcel.writeInt(this.f11762case);
        parcel.writeInt(this.f11763for);
    }

    public TimeModel(int i, int i2, int i3, int i4) {
        this.f11764new = i;
        this.f11765try = i2;
        this.f11762case = i3;
        this.f11763for = i4;
    }
}
