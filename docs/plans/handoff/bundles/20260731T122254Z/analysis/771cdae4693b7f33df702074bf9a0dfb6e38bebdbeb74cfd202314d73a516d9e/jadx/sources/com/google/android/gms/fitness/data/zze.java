package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class zze implements Parcelable.Creator<DataSet> {
    static void zza(DataSet dataSet, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) dataSet.getDataSource(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, dataSet.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) dataSet.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel, 3, dataSet.zzqz(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, dataSet.zzqA(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, dataSet.zzqr());
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcm, reason: merged with bridge method [inline-methods] */
    public DataSet createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        ArrayList arrayList = new ArrayList();
        DataSource dataSource = null;
        DataType dataType = null;
        ArrayList arrayList2 = null;
        int i = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, DataSource.CREATOR);
                        break;
                    case 2:
                        dataType = (DataType) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, DataType.CREATOR);
                        break;
                    case 3:
                        com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, arrayList, getClass().getClassLoader());
                        break;
                    case 4:
                        arrayList2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa, DataSource.CREATOR);
                        break;
                    case 5:
                        z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa);
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
            return new DataSet(i, dataSource, dataType, arrayList, arrayList2, z);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzef, reason: merged with bridge method [inline-methods] */
    public DataSet[] newArray(int i) {
        return new DataSet[i];
    }
}
