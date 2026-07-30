package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.DQ;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "LocationSettingsRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class LocationSettingsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new DQ();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getConfiguration", id = 5)
    public final zzbj f10233do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getLocationRequests", id = 1)
    public final List<LocationRequest> f10234do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(defaultValue = "false", getter = "alwaysShow", id = 2)
    public final boolean f10235do;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(getter = "needBle", id = 3)
    public final boolean f10236if;

    @SafeParcelable.Constructor
    public LocationSettingsRequest(@SafeParcelable.Param(id = 1) ArrayList arrayList, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 5) zzbj zzbjVar) {
        this.f10234do = arrayList;
        this.f10235do = z;
        this.f10236if = z2;
        this.f10233do = zzbjVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, DesugarCollections.unmodifiableList(this.f10234do), false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f10235do);
        SafeParcelWriter.writeBoolean(parcel, 3, this.f10236if);
        SafeParcelWriter.writeParcelable(parcel, 5, this.f10233do, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
