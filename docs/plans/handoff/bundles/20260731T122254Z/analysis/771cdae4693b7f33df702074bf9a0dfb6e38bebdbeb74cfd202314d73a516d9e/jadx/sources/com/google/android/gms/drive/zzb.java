package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzb implements Parcelable.Creator<Contents> {
    static void zza(Contents contents, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, contents.zzCY);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) contents.zzYZ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, contents.zzacR);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, contents.zzacS);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, (Parcelable) contents.zzacT, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, contents.zzacU);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzao, reason: merged with bridge method [inline-methods] */
    public Contents createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        DriveId driveId = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 7) {
                switch (zzbA) {
                    case 1:
                        i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 2:
                        parcelFileDescriptor = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, ParcelFileDescriptor.CREATOR);
                        break;
                    case 3:
                        i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 4:
                        i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 5:
                        driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, DriveId.CREATOR);
                        break;
                    default:
                        com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzaa);
                        break;
                }
            } else {
                z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new Contents(i, parcelFileDescriptor, i2, i3, driveId, z);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbT, reason: merged with bridge method [inline-methods] */
    public Contents[] newArray(int i) {
        return new Contents[i];
    }
}
