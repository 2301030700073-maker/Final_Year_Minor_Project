package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C4038yQ;

@SafeParcelable.Class(creator = "LocationSettingsConfigurationCreator")
@SafeParcelable.Reserved({3, 4, 1000})
@Deprecated
@ShowFirstParty
/* loaded from: classes3.dex */
public final class zzbj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbj> CREATOR = new C4038yQ();

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, getter = "getJustificationText", id = 1)
    public final String f10265break;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, getter = "getExperimentId", id = 2)
    public final String f10266catch;

    /* renamed from: class, reason: not valid java name */
    @SafeParcelable.Field(defaultValue = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, getter = "getTitleText", id = 5)
    public final String f10267class;

    @SafeParcelable.Constructor
    public zzbj(@SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 1) String str2, @SafeParcelable.Param(id = 2) String str3) {
        this.f10267class = str;
        this.f10265break = str2;
        this.f10266catch = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f10265break, false);
        SafeParcelWriter.writeString(parcel, 2, this.f10266catch, false);
        SafeParcelWriter.writeString(parcel, 5, this.f10267class, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
