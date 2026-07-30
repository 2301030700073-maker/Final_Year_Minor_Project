package com.android.launcher3.logging;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.systemui.shared.tracing.FrameProtoTracer;

/* loaded from: classes.dex */
public final class InstanceId implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.android.launcher3.logging.InstanceId.1
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new InstanceId(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new InstanceId[i];
        }
    };
    public final int mId;

    public InstanceId(int i) {
        this.mId = Math.min(Math.max(0, i), FrameProtoTracer.BUFFER_CAPACITY);
    }

    public static InstanceId fakeInstanceId(int i) {
        return new InstanceId(i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof InstanceId) && this.mId == ((InstanceId) obj).mId;
    }

    public int getId() {
        return this.mId;
    }

    public int hashCode() {
        return this.mId;
    }

    public String toString() {
        return this.mId + "";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mId);
    }
}
