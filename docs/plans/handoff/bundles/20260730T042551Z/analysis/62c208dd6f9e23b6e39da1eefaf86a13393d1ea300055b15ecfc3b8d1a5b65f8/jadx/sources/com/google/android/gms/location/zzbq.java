package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.location.zzbs;
import defpackage.KQ;
import java.util.List;

@SafeParcelable.Class(creator = "RemoveGeofencingRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class zzbq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbq> CREATOR = new KQ();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, getter = "getTag", id = 3)
    public final String f10272break;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getPendingIntent", id = 2)
    public final PendingIntent f10273do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getGeofenceIds", id = 1)
    public final zzbs f10274do;

    @SafeParcelable.Constructor
    public zzbq(@SafeParcelable.Param(id = 1) List<String> list, @SafeParcelable.Param(id = 2) PendingIntent pendingIntent, @SafeParcelable.Param(id = 3) String str) {
        this.f10274do = list == null ? zzbs.zzi() : zzbs.zzj(list);
        this.f10273do = pendingIntent;
        this.f10272break = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 1, this.f10274do, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10273do, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.f10272break, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
