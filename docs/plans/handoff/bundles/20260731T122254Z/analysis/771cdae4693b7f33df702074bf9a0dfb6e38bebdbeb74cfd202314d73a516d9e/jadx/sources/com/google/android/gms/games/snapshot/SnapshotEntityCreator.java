package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class SnapshotEntityCreator implements Parcelable.Creator<SnapshotEntity> {
    static void zza(SnapshotEntity snapshotEntity, Parcel parcel, int i) {
        int zzac = zzb.zzac(parcel);
        zzb.zza(parcel, 1, (Parcelable) snapshotEntity.getMetadata(), i, false);
        zzb.zzc(parcel, 1000, snapshotEntity.getVersionCode());
        zzb.zza(parcel, 3, (Parcelable) snapshotEntity.getSnapshotContents(), i, false);
        zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdS, reason: merged with bridge method [inline-methods] */
    public SnapshotEntity createFromParcel(Parcel parcel) {
        int zzab = zza.zzab(parcel);
        SnapshotMetadataEntity snapshotMetadataEntity = null;
        int i = 0;
        SnapshotContentsEntity snapshotContentsEntity = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = zza.zzaa(parcel);
            int zzbA = zza.zzbA(zzaa);
            if (zzbA == 1) {
                snapshotMetadataEntity = (SnapshotMetadataEntity) zza.zza(parcel, zzaa, SnapshotMetadataEntity.CREATOR);
            } else if (zzbA == 3) {
                snapshotContentsEntity = (SnapshotContentsEntity) zza.zza(parcel, zzaa, SnapshotContentsEntity.CREATOR);
            } else if (zzbA != 1000) {
                zza.zzb(parcel, zzaa);
            } else {
                i = zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new SnapshotEntity(i, snapshotMetadataEntity, snapshotContentsEntity);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgc, reason: merged with bridge method [inline-methods] */
    public SnapshotEntity[] newArray(int i) {
        return new SnapshotEntity[i];
    }
}
