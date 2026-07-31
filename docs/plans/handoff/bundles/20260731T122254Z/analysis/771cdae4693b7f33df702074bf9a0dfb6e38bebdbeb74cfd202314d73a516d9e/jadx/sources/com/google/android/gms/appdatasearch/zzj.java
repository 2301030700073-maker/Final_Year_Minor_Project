package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzj implements Parcelable.Creator<UsageInfo> {
    static void zza(UsageInfo usageInfo, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) usageInfo.zzNH, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, usageInfo.zzCY);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, usageInfo.zzNI);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, usageInfo.zzNJ);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, usageInfo.zztt, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, (Parcelable) usageInfo.zzNK, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, usageInfo.zzNL);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, usageInfo.zzNM);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 8, usageInfo.zzNN);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzan, reason: merged with bridge method [inline-methods] */
    public UsageInfo[] newArray(int i) {
        return new UsageInfo[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzy, reason: merged with bridge method [inline-methods] */
    public UsageInfo createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        DocumentId documentId = null;
        String str = null;
        DocumentContents documentContents = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = -1;
        int i4 = 0;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        documentId = (DocumentId) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, DocumentId.CREATOR);
                        break;
                    case 2:
                        j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzaa);
                        break;
                    case 3:
                        i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 4:
                        str = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
                        break;
                    case 5:
                        documentContents = (DocumentContents) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, DocumentContents.CREATOR);
                        break;
                    case 6:
                        z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa);
                        break;
                    case 7:
                        i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 8:
                        i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
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
            return new UsageInfo(i, documentId, j, i2, str, documentContents, z, i3, i4);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }
}
