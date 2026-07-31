package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class zzc implements Parcelable.Creator<DataReadResult> {
    static void zza(DataReadResult dataReadResult, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel, 1, dataReadResult.zzrv(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, dataReadResult.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) dataReadResult.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel, 3, dataReadResult.zzru(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, dataReadResult.zzrt());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 6, dataReadResult.zzqA(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, dataReadResult.zzrw(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdg, reason: merged with bridge method [inline-methods] */
    public DataReadResult createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Status status = null;
        ArrayList arrayList3 = null;
        ArrayList arrayList4 = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, arrayList, getClass().getClassLoader());
                        break;
                    case 2:
                        status = (Status) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, Status.CREATOR);
                        break;
                    case 3:
                        com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, arrayList2, getClass().getClassLoader());
                        break;
                    default:
                        switch (zzbA) {
                            case 5:
                                i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                                break;
                            case 6:
                                arrayList3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa, DataSource.CREATOR);
                                break;
                            case 7:
                                arrayList4 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa, DataType.CREATOR);
                                break;
                            default:
                                com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzaa);
                                break;
                        }
                }
            } else {
                i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new DataReadResult(i, arrayList, status, arrayList2, i2, arrayList3, arrayList4);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfb, reason: merged with bridge method [inline-methods] */
    public DataReadResult[] newArray(int i) {
        return new DataReadResult[i];
    }
}
