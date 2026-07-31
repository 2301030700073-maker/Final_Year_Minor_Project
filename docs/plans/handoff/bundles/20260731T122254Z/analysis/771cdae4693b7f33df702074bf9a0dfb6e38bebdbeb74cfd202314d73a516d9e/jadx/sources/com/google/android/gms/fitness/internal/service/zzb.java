package com.google.android.gms.fitness.internal.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.fitness.data.DataSource;

/* loaded from: classes.dex */
public class zzb implements Parcelable.Creator<FitnessUnregistrationRequest> {
    static void zza(FitnessUnregistrationRequest fitnessUnregistrationRequest, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) fitnessUnregistrationRequest.getDataSource(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, fitnessUnregistrationRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcA, reason: merged with bridge method [inline-methods] */
    public FitnessUnregistrationRequest createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        int i = 0;
        DataSource dataSource = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA == 1) {
                dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, DataSource.CREATOR);
            } else if (zzbA != 1000) {
                com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzaa);
            } else {
                i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new FitnessUnregistrationRequest(i, dataSource);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeu, reason: merged with bridge method [inline-methods] */
    public FitnessUnregistrationRequest[] newArray(int i) {
        return new FitnessUnregistrationRequest[i];
    }
}
