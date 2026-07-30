package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzfdk;
import com.google.android.gms.internal.ads.zzfve;

@SafeParcelable.Class(creator = "ExceptionParcelCreator")
/* loaded from: classes.dex */
public final class zzbb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbb> CREATOR = new zzbc();

    @SafeParcelable.Field(id = 1)
    public final String zza;

    @SafeParcelable.Field(id = 2)
    public final int zzb;

    @SafeParcelable.Constructor
    public zzbb(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i) {
        this.zza = str == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str;
        this.zzb = i;
    }

    public static zzbb zzb(Throwable th) {
        com.google.android.gms.ads.internal.client.zze zza = zzfdk.zza(th);
        return new zzbb(zzfve.zzd(th.getMessage()) ? zza.zzb : th.getMessage(), zza.zza);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzba zza() {
        return new zzba(this.zza, this.zzb);
    }
}
