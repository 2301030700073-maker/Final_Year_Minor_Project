package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class PopupLocationInfoParcelableCreator implements Parcelable.Creator<PopupLocationInfoParcelable> {
    static void zza(PopupLocationInfoParcelable popupLocationInfoParcelable, Parcel parcel, int i) {
        int zzac = zzb.zzac(parcel);
        zzb.zza(parcel, 1, popupLocationInfoParcelable.zztc(), false);
        zzb.zzc(parcel, 1000, popupLocationInfoParcelable.getVersionCode());
        zzb.zza(parcel, 2, popupLocationInfoParcelable.getWindowToken(), false);
        zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdD, reason: merged with bridge method [inline-methods] */
    public PopupLocationInfoParcelable createFromParcel(Parcel parcel) {
        int zzab = zza.zzab(parcel);
        Bundle bundle = null;
        int i = 0;
        IBinder iBinder = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = zza.zzaa(parcel);
            int zzbA = zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        bundle = zza.zzq(parcel, zzaa);
                        break;
                    case 2:
                        iBinder = zza.zzp(parcel, zzaa);
                        break;
                    default:
                        zza.zzb(parcel, zzaa);
                        break;
                }
            } else {
                i = zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new PopupLocationInfoParcelable(i, bundle, iBinder);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfE, reason: merged with bridge method [inline-methods] */
    public PopupLocationInfoParcelable[] newArray(int i) {
        return new PopupLocationInfoParcelable[i];
    }
}
