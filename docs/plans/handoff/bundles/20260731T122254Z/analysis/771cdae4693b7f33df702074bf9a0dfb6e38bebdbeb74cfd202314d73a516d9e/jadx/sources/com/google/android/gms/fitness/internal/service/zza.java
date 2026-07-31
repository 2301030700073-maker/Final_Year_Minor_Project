package com.google.android.gms.fitness.internal.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class zza implements Parcelable.Creator<FitnessDataSourcesRequest> {
    static void zza(FitnessDataSourcesRequest fitnessDataSourcesRequest, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, fitnessDataSourcesRequest.getDataTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, fitnessDataSourcesRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcz, reason: merged with bridge method [inline-methods] */
    public FitnessDataSourcesRequest createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA == 1) {
                arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa, DataType.CREATOR);
            } else if (zzbA != 1000) {
                com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzaa);
            } else {
                i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new FitnessDataSourcesRequest(i, arrayList);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzet, reason: merged with bridge method [inline-methods] */
    public FitnessDataSourcesRequest[] newArray(int i) {
        return new FitnessDataSourcesRequest[i];
    }
}
