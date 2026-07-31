package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.fitness.data.DataType;

/* loaded from: classes.dex */
public class zzp implements Parcelable.Creator<ListSubscriptionsRequest> {
    static void zza(ListSubscriptionsRequest listSubscriptionsRequest, Parcel parcel, int i) {
        int zzac = com.google.android.gms.common.internal.safeparcel.zzb.zzac(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) listSubscriptionsRequest.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, listSubscriptionsRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, listSubscriptionsRequest.zzqU(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, listSubscriptionsRequest.getPackageName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzH(parcel, zzac);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcO, reason: merged with bridge method [inline-methods] */
    public ListSubscriptionsRequest createFromParcel(Parcel parcel) {
        int zzab = com.google.android.gms.common.internal.safeparcel.zza.zzab(parcel);
        DataType dataType = null;
        int i = 0;
        IBinder iBinder = null;
        String str = null;
        while (parcel.dataPosition() < zzab) {
            int zzaa = com.google.android.gms.common.internal.safeparcel.zza.zzaa(parcel);
            int zzbA = com.google.android.gms.common.internal.safeparcel.zza.zzbA(zzaa);
            if (zzbA != 1000) {
                switch (zzbA) {
                    case 1:
                        dataType = (DataType) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzaa, DataType.CREATOR);
                        break;
                    case 2:
                        iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, zzaa);
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
            return new ListSubscriptionsRequest(i, dataType, iBinder, str);
        }
        throw new zza.C0036zza("Overread allowed size end=" + zzab, parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeI, reason: merged with bridge method [inline-methods] */
    public ListSubscriptionsRequest[] newArray(int i) {
        return new ListSubscriptionsRequest[i];
    }
}
