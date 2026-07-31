package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class zzj implements Parcelable.Creator<PersonEntity.UrlsEntity> {
    static void zza(PersonEntity.UrlsEntity urlsEntity, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        Set<Integer> set = urlsEntity.zzaHQ;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, urlsEntity.zzCY);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, urlsEntity.zzxS());
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, urlsEntity.mValue, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, urlsEntity.zzaEH, true);
        }
        if (set.contains(6)) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 6, urlsEntity.zzSq);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfV, reason: merged with bridge method [inline-methods] */
    public PersonEntity.UrlsEntity createFromParcel(Parcel parcel) {
        int i;
        int i2;
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        HashSet hashSet = new HashSet();
        int i3 = 0;
        String str = null;
        String str2 = null;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1) {
                switch (zzbA) {
                    case 3:
                        i5 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        i2 = 3;
                        break;
                    case 4:
                        str2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
                        i2 = 4;
                        break;
                    case 5:
                        str = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
                        i2 = 5;
                        break;
                    case 6:
                        i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        i2 = 6;
                        break;
                    default:
                        com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzaa);
                        continue;
                }
                i = Integer.valueOf(i2);
            } else {
                i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                i = 1;
            }
            hashSet.add(i);
        }
        if (parcel.dataPosition() == zzab) {
            return new PersonEntity.UrlsEntity(hashSet, i3, str, i4, str2, i5);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziL, reason: merged with bridge method [inline-methods] */
    public PersonEntity.UrlsEntity[] newArray(int i) {
        return new PersonEntity.UrlsEntity[i];
    }
}
