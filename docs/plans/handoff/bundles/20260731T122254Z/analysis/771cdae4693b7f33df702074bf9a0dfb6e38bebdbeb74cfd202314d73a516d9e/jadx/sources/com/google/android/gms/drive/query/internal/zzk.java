package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class zzk implements Parcelable.Creator<LogicalFilter> {
    static void zza(LogicalFilter logicalFilter, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, logicalFilter.zzCY);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) logicalFilter.zzahQ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, logicalFilter.zzaif, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbO, reason: merged with bridge method [inline-methods] */
    public LogicalFilter createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        Operator operator = null;
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        operator = (Operator) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, Operator.CREATOR);
                        break;
                    case 2:
                        arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa, FilterHolder.CREATOR);
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
            return new LogicalFilter(i, operator, arrayList);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdD, reason: merged with bridge method [inline-methods] */
    public LogicalFilter[] newArray(int i) {
        return new LogicalFilter[i];
    }
}
