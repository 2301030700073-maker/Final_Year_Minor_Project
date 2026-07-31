package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zza implements Parcelable.Creator<Message> {
    static void zza(Message message, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, message.zzwV(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, message.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, message.getType(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, message.getNamespace(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfp, reason: merged with bridge method [inline-methods] */
    public Message createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        byte[] bArr = null;
        int i = 0;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        bArr = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzaa);
                        break;
                    case 2:
                        str2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
                        break;
                    case 3:
                        str = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, zzaa);
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
            return new Message(i, bArr, str, str2);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzic, reason: merged with bridge method [inline-methods] */
    public Message[] newArray(int i) {
        return new Message[i];
    }
}
