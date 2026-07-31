package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class GameBadgeEntityCreator implements Parcelable.Creator<GameBadgeEntity> {
    static void zza(GameBadgeEntity gameBadgeEntity, Parcel parcel, int i) {
        int zzac = zzb.zzac(parcel);
        zzb.zzc(parcel, 1, gameBadgeEntity.getType());
        zzb.zzc(parcel, 1000, gameBadgeEntity.getVersionCode());
        zzb.zza(parcel, 2, gameBadgeEntity.getTitle(), false);
        zzb.zza(parcel, 3, gameBadgeEntity.getDescription(), false);
        zzb.zza(parcel, 4, (Parcelable) gameBadgeEntity.getIconImageUri(), i, false);
        zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdE, reason: merged with bridge method [inline-methods] */
    public GameBadgeEntity createFromParcel(Parcel parcel) {
        int zzab = zza.zzab(parcel);
        String str = null;
        String str2 = null;
        Uri uri = null;
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
                        str = zza.zzo(parcel, zzaa);
                        break;
                    case 3:
                        str2 = zza.zzo(parcel, zzaa);
                        break;
                    case 4:
                        uri = (Uri) zza.zza(parcel, zzaa, Uri.CREATOR);
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
            return new GameBadgeEntity(i, i2, str, str2, uri);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfJ, reason: merged with bridge method [inline-methods] */
    public GameBadgeEntity[] newArray(int i) {
        return new GameBadgeEntity[i];
    }
}
