package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3449oQ;
import java.util.Arrays;

@SafeParcelable.Class(creator = "LocationAvailabilityCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class LocationAvailability extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new C3449oQ();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = AppEventsConstants.EVENT_PARAM_VALUE_NO, id = 3)
    public final long f10217do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 5)
    public final zzbo[] f10218do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationAvailability.STATUS_UNKNOWN", id = 1)
    @Deprecated
    public final int f10219for;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationAvailability.STATUS_UNKNOWN", id = 2)
    @Deprecated
    public final int f10220new;

    /* renamed from: try, reason: not valid java name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationAvailability.STATUS_UNSUCCESSFUL", id = 4)
    public final int f10221try;

    @SafeParcelable.Constructor
    public LocationAvailability(@SafeParcelable.Param(id = 4) int i, @SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 5) zzbo[] zzboVarArr) {
        this.f10221try = i;
        this.f10219for = i2;
        this.f10220new = i3;
        this.f10217do = j;
        this.f10218do = zzboVarArr;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LocationAvailability) {
            LocationAvailability locationAvailability = (LocationAvailability) obj;
            if (this.f10219for == locationAvailability.f10219for && this.f10220new == locationAvailability.f10220new && this.f10217do == locationAvailability.f10217do && this.f10221try == locationAvailability.f10221try && Arrays.equals(this.f10218do, locationAvailability.f10218do)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10221try), Integer.valueOf(this.f10219for), Integer.valueOf(this.f10220new), Long.valueOf(this.f10217do), this.f10218do);
    }

    public final String toString() {
        boolean z = this.f10221try < 1000;
        StringBuilder sb = new StringBuilder(48);
        sb.append("LocationAvailability[isLocationAvailable: ");
        sb.append(z);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10219for);
        SafeParcelWriter.writeInt(parcel, 2, this.f10220new);
        SafeParcelWriter.writeLong(parcel, 3, this.f10217do);
        SafeParcelWriter.writeInt(parcel, 4, this.f10221try);
        SafeParcelWriter.writeTypedArray(parcel, 5, this.f10218do, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
