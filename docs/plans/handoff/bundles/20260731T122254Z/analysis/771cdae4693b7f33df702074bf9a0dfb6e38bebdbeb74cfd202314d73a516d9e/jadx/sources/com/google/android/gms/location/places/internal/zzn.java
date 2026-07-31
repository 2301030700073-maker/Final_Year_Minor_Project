package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class zzn implements Parcelable.Creator<PlaceLocalization> {
    static void zza(PlaceLocalization placeLocalization, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, placeLocalization.name, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, placeLocalization.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, placeLocalization.zzaAM, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, placeLocalization.zzaAN, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, placeLocalization.zzaAO, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 5, placeLocalization.zzaAP, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeA, reason: merged with bridge method [inline-methods] */
    public PlaceLocalization createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        ArrayList<String> arrayList = null;
        int i = 0;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        str = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
                        break;
                    case 2:
                        str2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
                        break;
                    case 3:
                        str3 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
                        break;
                    case 4:
                        str4 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
                        break;
                    case 5:
                        arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzC(parcel, zzaa);
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
            return new PlaceLocalization(i, str, str2, str3, str4, arrayList);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzha, reason: merged with bridge method [inline-methods] */
    public PlaceLocalization[] newArray(int i) {
        return new PlaceLocalization[i];
    }
}
