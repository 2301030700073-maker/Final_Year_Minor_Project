package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.EQ;

@SafeParcelable.Class(creator = "LocationSettingsResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class LocationSettingsResult extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new EQ();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getStatus", id = 1)
    public final Status f10237do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getLocationSettingsStates", id = 2)
    public final LocationSettingsStates f10238do;

    @SafeParcelable.Constructor
    public LocationSettingsResult(@SafeParcelable.Param(id = 1) Status status, @SafeParcelable.Param(id = 2) LocationSettingsStates locationSettingsStates) {
        this.f10237do = status;
        this.f10238do = locationSettingsStates;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10237do;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f10237do, i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10238do, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
