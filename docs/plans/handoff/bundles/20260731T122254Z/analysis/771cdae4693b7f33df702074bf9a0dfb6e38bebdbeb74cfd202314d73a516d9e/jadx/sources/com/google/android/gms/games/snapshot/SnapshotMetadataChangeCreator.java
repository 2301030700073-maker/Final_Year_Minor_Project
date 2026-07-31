package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class SnapshotMetadataChangeCreator implements Parcelable.Creator<SnapshotMetadataChangeEntity> {
    static void zza(SnapshotMetadataChangeEntity snapshotMetadataChangeEntity, Parcel parcel, int i) {
        int zzac = zzb.zzac(parcel);
        zzb.zza(parcel, 1, snapshotMetadataChangeEntity.getDescription(), false);
        zzb.zzc(parcel, 1000, snapshotMetadataChangeEntity.getVersionCode());
        zzb.zza(parcel, 2, snapshotMetadataChangeEntity.getPlayedTimeMillis(), false);
        zzb.zza(parcel, 4, (Parcelable) snapshotMetadataChangeEntity.getCoverImageUri(), i, false);
        zzb.zza(parcel, 5, (Parcelable) snapshotMetadataChangeEntity.zztQ(), i, false);
        zzb.zza(parcel, 6, snapshotMetadataChangeEntity.getProgressValue(), false);
        zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdT, reason: merged with bridge method [inline-methods] */
    public SnapshotMetadataChangeEntity createFromParcel(Parcel parcel) {
        int zzab = zza.zzab(parcel);
        String str = null;
        Long l = null;
        BitmapTeleporter bitmapTeleporter = null;
        Uri uri = null;
        Long l2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzab) {
            int zzaa = zza.zzaa(parcel);
            int zzbA = zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        str = zza.zzo(parcel, zzaa);
                        break;
                    case 2:
                        l = zza.zzj(parcel, zzaa);
                        break;
                    default:
                        switch (zzbA) {
                            case 4:
                                uri = (Uri) zza.zza(parcel, zzaa, Uri.CREATOR);
                                break;
                            case 5:
                                bitmapTeleporter = (BitmapTeleporter) zza.zza(parcel, zzaa, BitmapTeleporter.CREATOR);
                                break;
                            case 6:
                                l2 = zza.zzj(parcel, zzaa);
                                break;
                            default:
                                zza.zzb(parcel, zzaa);
                                break;
                        }
                }
            } else {
                i = zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new SnapshotMetadataChangeEntity(i, str, l, bitmapTeleporter, uri, l2);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgd, reason: merged with bridge method [inline-methods] */
    public SnapshotMetadataChangeEntity[] newArray(int i) {
        return new SnapshotMetadataChangeEntity[i];
    }
}
