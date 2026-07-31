package org.schabi.newpipe.player;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.error.ErrorInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class TimestampChangeData implements Parcelable {
    public static final Parcelable.Creator<TimestampChangeData> CREATOR = new ErrorInfo.Creator(5);
    public final int seconds;
    public final int serviceId;
    public final String url;

    public TimestampChangeData(int i, int i2, String str) {
        str.getClass();
        this.serviceId = i;
        this.url = str;
        this.seconds = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimestampChangeData)) {
            return false;
        }
        TimestampChangeData timestampChangeData = (TimestampChangeData) obj;
        return this.serviceId == timestampChangeData.serviceId && Intrinsics.areEqual(this.url, timestampChangeData.url) && this.seconds == timestampChangeData.seconds;
    }

    public final int hashCode() {
        return Modifier.CC.m(this.serviceId * 31, 31, this.url) + this.seconds;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TimestampChangeData(serviceId=");
        sb.append(this.serviceId);
        sb.append(", url=");
        sb.append(this.url);
        sb.append(", seconds=");
        return Modifier.CC.m(sb, this.seconds, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeInt(this.serviceId);
        parcel.writeString(this.url);
        parcel.writeInt(this.seconds);
    }
}
