package com.google.android.gms.nearby.bootstrap.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzg implements Parcelable.Creator<StartScanRequest> {
    static void zza(StartScanRequest startScanRequest, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, startScanRequest.zzwQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, startScanRequest.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, startScanRequest.zzqU(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfl, reason: merged with bridge method [inline-methods] */
    public StartScanRequest createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        IBinder iBinder = null;
        int i = 0;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzaa);
                        break;
                    case 2:
                        iBinder2 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzaa);
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
            return new StartScanRequest(i, iBinder, iBinder2);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhT, reason: merged with bridge method [inline-methods] */
    public StartScanRequest[] newArray(int i) {
        return new StartScanRequest[i];
    }
}
