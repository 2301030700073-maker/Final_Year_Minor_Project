package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes.dex */
public abstract class zzbq extends zzayb implements zzbr {
    public zzbq() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzm zzmVar = (zzm) zzayc.zza(parcel, zzm.CREATOR);
            zzayc.zzc(parcel);
            zzg(zzmVar);
            parcel2.writeNoException();
        } else if (i == 2) {
            String zze = zze();
            parcel2.writeNoException();
            parcel2.writeString(zze);
        } else if (i == 3) {
            boolean zzi = zzi();
            parcel2.writeNoException();
            int i3 = zzayc.zza;
            parcel2.writeInt(zzi ? 1 : 0);
        } else if (i == 4) {
            String zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(zzf);
        } else {
            if (i != 5) {
                return false;
            }
            zzm zzmVar2 = (zzm) zzayc.zza(parcel, zzm.CREATOR);
            int readInt = parcel.readInt();
            zzayc.zzc(parcel);
            zzh(zzmVar2, readInt);
            parcel2.writeNoException();
        }
        return true;
    }
}
