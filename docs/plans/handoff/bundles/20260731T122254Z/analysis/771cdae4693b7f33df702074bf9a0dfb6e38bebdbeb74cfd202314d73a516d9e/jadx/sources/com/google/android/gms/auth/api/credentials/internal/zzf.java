package com.google.android.gms.auth.api.credentials.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzf implements Parcelable.Creator<SaveRequest> {
    static void zza(SaveRequest saveRequest, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) saveRequest.getCredential(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, saveRequest.zzCY);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzG, reason: merged with bridge method [inline-methods] */
    public SaveRequest createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        int i = 0;
        Credential credential = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA == 1) {
                credential = (Credential) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, Credential.CREATOR);
            } else if (zzbA != 1000) {
                com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzaa);
            } else {
                i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new SaveRequest(i, credential);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaw, reason: merged with bridge method [inline-methods] */
    public SaveRequest[] newArray(int i) {
        return new SaveRequest[i];
    }
}
