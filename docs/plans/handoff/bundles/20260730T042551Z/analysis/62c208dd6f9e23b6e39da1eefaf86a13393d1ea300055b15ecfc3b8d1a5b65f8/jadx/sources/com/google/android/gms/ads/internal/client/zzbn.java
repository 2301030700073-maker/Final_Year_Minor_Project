package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes.dex */
public abstract class zzbn extends zzayb implements zzbo {
    public zzbn() {
        super("com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzc();
        } else {
            if (i != 2) {
                return false;
            }
            zze zzeVar = (zze) zzayc.zza(parcel, zze.CREATOR);
            zzayc.zzc(parcel);
            zzb(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
