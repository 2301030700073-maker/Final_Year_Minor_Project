package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class zzb implements Parcelable.Creator<GestureRequest> {
    static void zza(GestureRequest gestureRequest, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, gestureRequest.zzuo(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, gestureRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzed, reason: merged with bridge method [inline-methods] */
    public GestureRequest createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        int i = 0;
        ArrayList<Integer> arrayList = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA == 1) {
                arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzB(parcel, zzaa);
            } else if (zzbA != 1000) {
                com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzaa);
            } else {
                i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzaa);
            }
        }
        if (parcel.dataPosition() == zzab) {
            return new GestureRequest(i, arrayList);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgt, reason: merged with bridge method [inline-methods] */
    public GestureRequest[] newArray(int i) {
        return new GestureRequest[i];
    }
}
