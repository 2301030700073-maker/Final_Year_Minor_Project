package com.google.android.gms.fitness.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzt implements Parcelable.Creator<Value> {
    static void zza(Value value, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, value.getFormat());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, value.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, value.isSet());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, value.zzqI());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, value.zzqO(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, value.zzqP(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcy, reason: merged with bridge method [inline-methods] */
    public Value createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        String str = null;
        Bundle bundle = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        float f = 0.0f;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
                        break;
                    case 2:
                        z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa);
                        break;
                    case 3:
                        f = com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, zzaa);
                        break;
                    case 4:
                        str = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
                        break;
                    case 5:
                        bundle = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzaa);
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
            return new Value(i, i2, z, f, str, bundle);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzes, reason: merged with bridge method [inline-methods] */
    public Value[] newArray(int i) {
        return new Value[i];
    }
}
