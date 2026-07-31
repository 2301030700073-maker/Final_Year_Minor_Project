package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.fitness.data.DataType;

/* loaded from: classes.dex */
public class zzg implements Parcelable.Creator<DataTypeResult> {
    static void zza(DataTypeResult dataTypeResult, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) dataTypeResult.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, dataTypeResult.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) dataTypeResult.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdk, reason: merged with bridge method [inline-methods] */
    public DataTypeResult createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        Status status = null;
        int i = 0;
        DataType dataType = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA == 1) {
                status = (Status) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, Status.CREATOR);
            } else if (zzbA == 3) {
                dataType = (DataType) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, DataType.CREATOR);
            } else if (zzbA != 1000) {
                com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzaa);
            } else {
                i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new DataTypeResult(i, status, dataType);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzff, reason: merged with bridge method [inline-methods] */
    public DataTypeResult[] newArray(int i) {
        return new DataTypeResult[i];
    }
}
