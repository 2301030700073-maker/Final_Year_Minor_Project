package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class PlayerLevelCreator implements Parcelable.Creator<PlayerLevel> {
    static void zza(PlayerLevel playerLevel, Parcel parcel, int i) {
        int zzac = zzb.zzac(parcel);
        zzb.zzc(parcel, 1, playerLevel.getLevelNumber());
        zzb.zzc(parcel, 1000, playerLevel.getVersionCode());
        zzb.zza(parcel, 2, playerLevel.getMinXp());
        zzb.zza(parcel, 3, playerLevel.getMaxXp());
        zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdt, reason: merged with bridge method [inline-methods] */
    public PlayerLevel createFromParcel(Parcel parcel) {
        int zzab = zza.zzab(parcel);
        long j = 0;
        long j2 = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzab) {
            int zzaa = zza.zzaa(parcel);
            int zzbA = zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        i2 = zza.zzg(parcel, zzaa);
                        break;
                    case 2:
                        j = zza.zzi(parcel, zzaa);
                        break;
                    case 3:
                        j2 = zza.zzi(parcel, zzaa);
                        break;
                    default:
                        zza.zzb(parcel, zzaa);
                        break;
                }
            } else {
                i = zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new PlayerLevel(i, i2, j, j2);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfp, reason: merged with bridge method [inline-methods] */
    public PlayerLevel[] newArray(int i) {
        return new PlayerLevel[i];
    }
}
