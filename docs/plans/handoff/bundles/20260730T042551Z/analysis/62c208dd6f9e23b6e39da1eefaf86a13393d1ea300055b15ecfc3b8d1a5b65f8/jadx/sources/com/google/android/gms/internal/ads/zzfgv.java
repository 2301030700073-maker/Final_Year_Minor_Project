package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final /* synthetic */ class zzfgv {
    public static zzfgw zza(Context context, int i) {
        boolean booleanValue;
        if (zzfhk.zza()) {
            int i2 = i - 2;
            if (i2 != 20 && i2 != 21) {
                switch (i2) {
                    case 2:
                    case 3:
                    case 6:
                    case 7:
                    case 8:
                        booleanValue = ((Boolean) zzbee.zzc.zze()).booleanValue();
                        break;
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        booleanValue = ((Boolean) zzbee.zzd.zze()).booleanValue();
                        break;
                    case 5:
                        booleanValue = ((Boolean) zzbee.zzb.zze()).booleanValue();
                        break;
                }
            } else {
                booleanValue = ((Boolean) zzbee.zze.zze()).booleanValue();
            }
            if (booleanValue) {
                return new zzfgy(context, i);
            }
        }
        return new zzfid();
    }

    public static zzfgw zzb(Context context, int i, int i2, com.google.android.gms.ads.internal.client.zzm zzmVar) {
        zzfgw zza = zza(context, i);
        if (zza instanceof zzfgy) {
            zza.zzi();
            zza.zzn(i2);
            zza.zzf(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zza(zzmVar.zzm));
            if (zzfhg.zze(zzmVar.zzp)) {
                zza.zze(zzmVar.zzp);
            }
        }
        return zza;
    }
}
