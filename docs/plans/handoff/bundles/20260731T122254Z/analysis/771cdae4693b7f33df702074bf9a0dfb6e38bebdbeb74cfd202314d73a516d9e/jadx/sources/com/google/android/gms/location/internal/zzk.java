package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

/* loaded from: classes.dex */
public class zzk implements Parcelable.Creator<LocationRequestInternal> {
    static void zza(LocationRequestInternal locationRequestInternal, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) locationRequestInternal.zzamz, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, locationRequestInternal.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, locationRequestInternal.zzazb);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, locationRequestInternal.zzazc);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, locationRequestInternal.zzazd);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, locationRequestInternal.zzaze, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, locationRequestInternal.mTag, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzek, reason: merged with bridge method [inline-methods] */
    public LocationRequestInternal createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        List<ClientIdentity> list = LocationRequestInternal.zzaza;
        LocationRequest locationRequest = null;
        String str = null;
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        boolean z3 = true;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        locationRequest = (LocationRequest) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, LocationRequest.CREATOR);
                        break;
                    case 2:
                        z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa);
                        break;
                    case 3:
                        z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa);
                        break;
                    case 4:
                        z3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa);
                        break;
                    case 5:
                        list = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa, ClientIdentity.CREATOR);
                        break;
                    case 6:
                        str = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
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
            return new LocationRequestInternal(i, locationRequest, z, z2, z3, list, str);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgE, reason: merged with bridge method [inline-methods] */
    public LocationRequestInternal[] newArray(int i) {
        return new LocationRequestInternal[i];
    }
}
