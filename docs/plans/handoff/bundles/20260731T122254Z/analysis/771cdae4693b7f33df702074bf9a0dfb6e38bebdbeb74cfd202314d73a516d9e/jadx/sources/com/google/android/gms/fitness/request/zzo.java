package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzo implements Parcelable.Creator<ListClaimedBleDevicesRequest> {
    static void zza(ListClaimedBleDevicesRequest listClaimedBleDevicesRequest, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, listClaimedBleDevicesRequest.zzqU(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, listClaimedBleDevicesRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, listClaimedBleDevicesRequest.getPackageName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcN, reason: merged with bridge method [inline-methods] */
    public ListClaimedBleDevicesRequest createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        IBinder iBinder = null;
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzaa);
                        break;
                    case 2:
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
            return new ListClaimedBleDevicesRequest(i, iBinder, str);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeH, reason: merged with bridge method [inline-methods] */
    public ListClaimedBleDevicesRequest[] newArray(int i) {
        return new ListClaimedBleDevicesRequest[i];
    }
}
