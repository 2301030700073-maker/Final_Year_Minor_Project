package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;

/* loaded from: classes.dex */
public abstract class zzed extends zzayb implements zzee {
    public zzed() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzi();
        } else if (i == 2) {
            zzh();
        } else if (i == 3) {
            zzg();
        } else if (i == 4) {
            zze();
        } else {
            if (i != 5) {
                return false;
            }
            boolean zzg = zzayc.zzg(parcel);
            zzayc.zzc(parcel);
            zzf(zzg);
        }
        parcel2.writeNoException();
        return true;
    }
}
