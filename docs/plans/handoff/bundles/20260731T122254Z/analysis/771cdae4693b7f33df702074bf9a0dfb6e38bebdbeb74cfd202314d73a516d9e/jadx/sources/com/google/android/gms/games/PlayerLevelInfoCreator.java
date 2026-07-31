package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class PlayerLevelInfoCreator implements Parcelable.Creator<PlayerLevelInfo> {
    static void zza(PlayerLevelInfo playerLevelInfo, Parcel parcel, int i) {
        int zzac = zzb.zzac(parcel);
        zzb.zza(parcel, 1, playerLevelInfo.getCurrentXpTotal());
        zzb.zzc(parcel, 1000, playerLevelInfo.getVersionCode());
        zzb.zza(parcel, 2, playerLevelInfo.getLastLevelUpTimestamp());
        zzb.zza(parcel, 3, (Parcelable) playerLevelInfo.getCurrentLevel(), i, false);
        zzb.zza(parcel, 4, (Parcelable) playerLevelInfo.getNextLevel(), i, false);
        zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdu, reason: merged with bridge method [inline-methods] */
    public PlayerLevelInfo createFromParcel(Parcel parcel) {
        int zzab = zza.zzab(parcel);
        PlayerLevel playerLevel = null;
        PlayerLevel playerLevel2 = null;
        long j = 0;
        long j2 = 0;
        int i = 0;
        while (parcel.dataPosition() < zzab) {
            int zzaa = zza.zzaa(parcel);
            int zzbA = zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        j = zza.zzi(parcel, zzaa);
                        break;
                    case 2:
                        j2 = zza.zzi(parcel, zzaa);
                        break;
                    case 3:
                        playerLevel = (PlayerLevel) zza.zza(parcel, zzaa, PlayerLevel.CREATOR);
                        break;
                    case 4:
                        playerLevel2 = (PlayerLevel) zza.zza(parcel, zzaa, PlayerLevel.CREATOR);
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
            return new PlayerLevelInfo(i, j, j2, playerLevel, playerLevel2);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfq, reason: merged with bridge method [inline-methods] */
    public PlayerLevelInfo[] newArray(int i) {
        return new PlayerLevelInfo[i];
    }
}
