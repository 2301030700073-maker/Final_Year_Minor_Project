package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.location.places.personalized.HereContent;

/* loaded from: classes.dex */
public class zza implements Parcelable.Creator<HereContent.Action> {
    static void zza(HereContent.Action action, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, action.getTitle(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, action.zzCY);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, action.getUri(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeD, reason: merged with bridge method [inline-methods] */
    public HereContent.Action createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        String str = null;
        int i = 0;
        String str2 = null;
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
                    default:
                        com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzaa);
                        break;
                }
            } else {
                i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new HereContent.Action(i, str, str2);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhd, reason: merged with bridge method [inline-methods] */
    public HereContent.Action[] newArray(int i) {
        return new HereContent.Action[i];
    }
}
