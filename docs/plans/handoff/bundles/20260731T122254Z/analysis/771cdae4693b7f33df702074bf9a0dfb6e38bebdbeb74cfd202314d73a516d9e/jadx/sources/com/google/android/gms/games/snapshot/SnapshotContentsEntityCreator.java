package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.Contents;

/* loaded from: classes.dex */
public class SnapshotContentsEntityCreator implements Parcelable.Creator<SnapshotContentsEntity> {
    static void zza(SnapshotContentsEntity snapshotContentsEntity, Parcel parcel, int i) {
        int zzac = zzb.zzac(parcel);
        zzb.zza(parcel, 1, (Parcelable) snapshotContentsEntity.zzpe(), i, false);
        zzb.zzc(parcel, 1000, snapshotContentsEntity.getVersionCode());
        zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdR, reason: merged with bridge method [inline-methods] */
    public SnapshotContentsEntity createFromParcel(Parcel parcel) {
        int zzab = zza.zzab(parcel);
        int i = 0;
        Contents contents = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = zza.zzaa(parcel);
            int zzbA = zza.zzbA(zzaa);
            if (zzbA == 1) {
                contents = (Contents) zza.zza(parcel, zzaa, Contents.CREATOR);
            } else if (zzbA != 1000) {
                zza.zzb(parcel, zzaa);
            } else {
                i = zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new SnapshotContentsEntity(i, contents);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgb, reason: merged with bridge method [inline-methods] */
    public SnapshotContentsEntity[] newArray(int i) {
        return new SnapshotContentsEntity[i];
    }
}
