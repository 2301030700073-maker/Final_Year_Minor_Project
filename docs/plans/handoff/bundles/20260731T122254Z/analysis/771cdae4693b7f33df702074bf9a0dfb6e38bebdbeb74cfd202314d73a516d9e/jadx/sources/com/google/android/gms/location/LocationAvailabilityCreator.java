package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class LocationAvailabilityCreator implements Parcelable.Creator<LocationAvailability> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void zza(LocationAvailability locationAvailability, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, locationAvailability.zzaxQ);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, locationAvailability.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, locationAvailability.zzaxR);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, locationAvailability.zzaxS);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, locationAvailability.zzaxT);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public LocationAvailability createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        long j = 0;
        int i = 0;
        int i2 = 1000;
        int i3 = 1;
        int i4 = 1;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 2:
                        i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 3:
                        j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzaa);
                        break;
                    case 4:
                        i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
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
            return new LocationAvailability(i, i2, i3, i4, j);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public LocationAvailability[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
