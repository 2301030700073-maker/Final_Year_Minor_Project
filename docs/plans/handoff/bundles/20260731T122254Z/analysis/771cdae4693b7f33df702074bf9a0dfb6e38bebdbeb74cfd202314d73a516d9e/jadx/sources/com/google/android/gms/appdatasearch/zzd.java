package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzd implements Parcelable.Creator<DocumentSection> {
    static void zza(DocumentSection documentSection, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, documentSection.zzNe, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, documentSection.zzCY);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) documentSection.zzNf, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, documentSection.zzNg);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, documentSection.zzNh, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzae, reason: merged with bridge method [inline-methods] */
    public DocumentSection[] newArray(int i) {
        return new DocumentSection[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzt, reason: merged with bridge method [inline-methods] */
    public DocumentSection createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        String str = null;
        RegisterSectionInfo registerSectionInfo = null;
        byte[] bArr = null;
        int i = 0;
        int i2 = -1;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA == 1) {
                str = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
            } else if (zzbA != 1000) {
                switch (zzbA) {
                    case 3:
                        registerSectionInfo = (RegisterSectionInfo) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, RegisterSectionInfo.CREATOR);
                        break;
                    case 4:
                        i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 5:
                        bArr = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzaa);
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
            return new DocumentSection(i, str, registerSectionInfo, i2, bArr);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }
}
