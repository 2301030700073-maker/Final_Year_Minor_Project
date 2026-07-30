package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.FQ;

@SafeParcelable.Class(creator = "LocationSettingsStatesCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class LocationSettingsStates extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new FQ();

    /* renamed from: case, reason: not valid java name */
    @SafeParcelable.Field(getter = "isBlePresent", id = 6)
    public final boolean f10239case;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "isGpsUsable", id = 1)
    public final boolean f10240do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(getter = "isBleUsable", id = 3)
    public final boolean f10241for;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(getter = "isNetworkLocationUsable", id = 2)
    public final boolean f10242if;

    /* renamed from: new, reason: not valid java name */
    @SafeParcelable.Field(getter = "isGpsPresent", id = 4)
    public final boolean f10243new;

    /* renamed from: try, reason: not valid java name */
    @SafeParcelable.Field(getter = "isNetworkLocationPresent", id = 5)
    public final boolean f10244try;

    @SafeParcelable.Constructor
    public LocationSettingsStates(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) boolean z2, @SafeParcelable.Param(id = 3) boolean z3, @SafeParcelable.Param(id = 4) boolean z4, @SafeParcelable.Param(id = 5) boolean z5, @SafeParcelable.Param(id = 6) boolean z6) {
        this.f10240do = z;
        this.f10242if = z2;
        this.f10241for = z3;
        this.f10243new = z4;
        this.f10244try = z5;
        this.f10239case = z6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f10240do);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f10242if);
        SafeParcelWriter.writeBoolean(parcel, 3, this.f10241for);
        SafeParcelWriter.writeBoolean(parcel, 4, this.f10243new);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f10244try);
        SafeParcelWriter.writeBoolean(parcel, 6, this.f10239case);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
