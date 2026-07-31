package com.google.android.gms.appdatasearch;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.appdatasearch.GetRecentContextCall;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzf implements Parcelable.Creator<GetRecentContextCall.Request> {
    static void zza(GetRecentContextCall.Request request, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) request.zzNj, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, request.zzCY);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, request.zzNk);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, request.zzNl);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, request.zzNm);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzag, reason: merged with bridge method [inline-methods] */
    public GetRecentContextCall.Request[] newArray(int i) {
        return new GetRecentContextCall.Request[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzv, reason: merged with bridge method [inline-methods] */
    public GetRecentContextCall.Request createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        Account account = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        account = (Account) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, Account.CREATOR);
                        break;
                    case 2:
                        z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa);
                        break;
                    case 3:
                        z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa);
                        break;
                    case 4:
                        z3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzaa);
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
            return new GetRecentContextCall.Request(i, account, z, z2, z3);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }
}
