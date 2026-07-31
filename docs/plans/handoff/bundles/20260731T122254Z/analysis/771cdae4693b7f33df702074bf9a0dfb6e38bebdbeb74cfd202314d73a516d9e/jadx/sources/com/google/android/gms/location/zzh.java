package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzh implements Parcelable.Creator<LocationSettingsResult> {
    static void zza(LocationSettingsResult locationSettingsResult, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) locationSettingsResult.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, locationSettingsResult.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) locationSettingsResult.getLocationSettingsStates(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeg, reason: merged with bridge method [inline-methods] */
    public LocationSettingsResult createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        Status status = null;
        int i = 0;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        status = (Status) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, Status.CREATOR);
                        break;
                    case 2:
                        locationSettingsStates = (LocationSettingsStates) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, LocationSettingsStates.CREATOR);
                        break;
                    default:
                        com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzaa);
                        break;
                }
            } else {
                i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new LocationSettingsResult(i, status, locationSettingsStates);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgy, reason: merged with bridge method [inline-methods] */
    public LocationSettingsResult[] newArray(int i) {
        return new LocationSettingsResult[i];
    }
}
