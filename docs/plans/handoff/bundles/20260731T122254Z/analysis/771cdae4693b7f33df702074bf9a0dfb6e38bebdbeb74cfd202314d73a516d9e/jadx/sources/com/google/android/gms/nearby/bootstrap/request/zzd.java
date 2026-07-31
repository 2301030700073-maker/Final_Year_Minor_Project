package com.google.android.gms.nearby.bootstrap.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.nearby.bootstrap.Device;

/* loaded from: classes.dex */
public class zzd implements Parcelable.Creator<DisconnectRequest> {
    static void zza(DisconnectRequest disconnectRequest, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) disconnectRequest.zzwM(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, disconnectRequest.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, disconnectRequest.zzqU(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfi, reason: merged with bridge method [inline-methods] */
    public DisconnectRequest createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        Device device = null;
        int i = 0;
        IBinder iBinder = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        device = (Device) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, Device.CREATOR);
                        break;
                    case 2:
                        iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzaa);
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
            return new DisconnectRequest(i, device, iBinder);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhQ, reason: merged with bridge method [inline-methods] */
    public DisconnectRequest[] newArray(int i) {
        return new DisconnectRequest[i];
    }
}
