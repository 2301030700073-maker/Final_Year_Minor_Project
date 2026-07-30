package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.location.zzbe;
import defpackage.BP;
import defpackage.Creturn;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "GeofencingRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class GeofencingRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new BP();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, getter = "getTag", id = 3)
    public final String f10213break;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(getter = "getContextAttributionTag", id = 4)
    public final String f10214catch;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getParcelableGeofences", id = 1)
    public final List<zzbe> f10215do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.Field(getter = "getInitialTrigger", id = 2)
    public final int f10216for;

    @SafeParcelable.Constructor
    public GeofencingRequest(@SafeParcelable.Param(id = 1) ArrayList arrayList, @SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2) {
        this.f10215do = arrayList;
        this.f10216for = i;
        this.f10213break = str;
        this.f10214catch = str2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GeofencingRequest[geofences=");
        sb.append(this.f10215do);
        sb.append(", initialTrigger=");
        sb.append(this.f10216for);
        sb.append(", tag=");
        sb.append(this.f10213break);
        sb.append(", attributionTag=");
        return Creturn.m7984try(sb, this.f10214catch, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f10215do, false);
        SafeParcelWriter.writeInt(parcel, 2, this.f10216for);
        SafeParcelWriter.writeString(parcel, 3, this.f10213break, false);
        SafeParcelWriter.writeString(parcel, 4, this.f10214catch, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
