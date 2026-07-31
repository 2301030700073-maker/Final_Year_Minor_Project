package com.google.android.gms.ads.internal.purchase;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zza implements Parcelable.Creator<GInAppPurchaseManagerInfoParcel> {
    static void zza(GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, gInAppPurchaseManagerInfoParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, gInAppPurchaseManagerInfoParcel.zzfb(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, gInAppPurchaseManagerInfoParcel.zzfc(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, gInAppPurchaseManagerInfoParcel.zzfd(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, gInAppPurchaseManagerInfoParcel.zzfa(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public GInAppPurchaseManagerInfoParcel createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        int i = 0;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1) {
                switch (zzbA) {
                    case 3:
                        iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzaa);
                        break;
                    case 4:
                        iBinder2 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzaa);
                        break;
                    case 5:
                        iBinder3 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzaa);
                        break;
                    case 6:
                        iBinder4 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzaa);
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
            return new GInAppPurchaseManagerInfoParcel(i, iBinder, iBinder2, iBinder3, iBinder4);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzx, reason: merged with bridge method [inline-methods] */
    public GInAppPurchaseManagerInfoParcel[] newArray(int i) {
        return new GInAppPurchaseManagerInfoParcel[i];
    }
}
