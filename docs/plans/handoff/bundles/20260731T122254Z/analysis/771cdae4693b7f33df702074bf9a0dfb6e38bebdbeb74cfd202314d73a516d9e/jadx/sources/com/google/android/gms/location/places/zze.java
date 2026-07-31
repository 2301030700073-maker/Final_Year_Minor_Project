package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zze implements Parcelable.Creator<NearbyAlertRequest> {
    static void zza(NearbyAlertRequest nearbyAlertRequest, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, nearbyAlertRequest.zzuC());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, nearbyAlertRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, nearbyAlertRequest.zzuF());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) nearbyAlertRequest.zzuG(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable) nearbyAlertRequest.zzuH(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeq, reason: merged with bridge method [inline-methods] */
    public NearbyAlertRequest createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        PlaceFilter placeFilter = null;
        NearbyAlertFilter nearbyAlertFilter = null;
        int i = 0;
        int i2 = 0;
        int i3 = -1;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 2:
                        i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 3:
                        placeFilter = (PlaceFilter) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, PlaceFilter.CREATOR);
                        break;
                    case 4:
                        nearbyAlertFilter = (NearbyAlertFilter) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, NearbyAlertFilter.CREATOR);
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
            return new NearbyAlertRequest(i, i2, i3, placeFilter, nearbyAlertFilter);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgM, reason: merged with bridge method [inline-methods] */
    public NearbyAlertRequest[] newArray(int i) {
        return new NearbyAlertRequest[i];
    }
}
