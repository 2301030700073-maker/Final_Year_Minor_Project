package com.google.android.gms.nearby.bootstrap;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzb implements Parcelable.Creator<Device> {
    static void zza(Device device, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, device.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, device.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, device.getDescription(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, device.getDeviceId(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, device.zzwK());
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfe, reason: merged with bridge method [inline-methods] */
    public Device createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        int i = 0;
        byte b = 0;
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
                        b = com.google.android.gms.common.internal.safeparcel.zza.zze(parcel, zzaa);
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
            return new Device(i, str, str2, str3, b);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhM, reason: merged with bridge method [inline-methods] */
    public Device[] newArray(int i) {
        return new Device[i];
    }
}
