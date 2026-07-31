package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class zzd implements Parcelable.Creator<NearbyAlertFilter> {
    static void zza(NearbyAlertFilter nearbyAlertFilter, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 1, nearbyAlertFilter.zzazu, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, nearbyAlertFilter.zzCY);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, nearbyAlertFilter.zzazs, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, nearbyAlertFilter.zzazv, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzep, reason: merged with bridge method [inline-methods] */
    public NearbyAlertFilter createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        ArrayList<String> arrayList = null;
        int i = 0;
        ArrayList<Integer> arrayList2 = null;
        ArrayList arrayList3 = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzC(parcel, zzaa);
                        break;
                    case 2:
                        arrayList2 = com.google.android.gms.common.internal.safeparcel.zza.zzB(parcel, zzaa);
                        break;
                    case 3:
                        arrayList3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa, UserDataType.CREATOR);
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
            return new NearbyAlertFilter(i, arrayList, arrayList2, arrayList3);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgL, reason: merged with bridge method [inline-methods] */
    public NearbyAlertFilter[] newArray(int i) {
        return new NearbyAlertFilter[i];
    }
}
