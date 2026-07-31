package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public interface zzflc {
    static zzflc zzn(Context context, int i) {
        boolean booleanValue;
        if (zzflp.zza()) {
            int i2 = i - 2;
            if (i2 == 20 || i2 == 21) {
                booleanValue = ((Boolean) zzbgn.zze.zze()).booleanValue();
            } else if (i2 != 110) {
                switch (i2) {
                    case 2:
                    case 3:
                    case 6:
                    case 7:
                    case 8:
                        booleanValue = ((Boolean) zzbgn.zzc.zze()).booleanValue();
                        break;
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        booleanValue = ((Boolean) zzbgn.zzd.zze()).booleanValue();
                        break;
                    case 5:
                        booleanValue = ((Boolean) zzbgn.zzb.zze()).booleanValue();
                        break;
                }
            } else {
                booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjP)).booleanValue();
            }
            if (booleanValue) {
                return new zzfle(context, i);
            }
        }
        return new zzfmd();
    }

    static zzflc zzo(Context context, int i, int i2, com.google.android.gms.ads.internal.client.zzm zzmVar) {
        zzflc zzn = zzn(context, i);
        if (zzn instanceof zzfle) {
            zzn.zza();
            zzn.zzp(i2);
            zzn.zzf(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzd(zzmVar.zzm));
            String str = zzmVar.zzp;
            if (zzfll.zza(str)) {
                zzn.zze(str);
            }
        }
        return zzn;
    }

    zzflc zza();

    boolean zzb();

    zzflc zzc();

    zzflc zzd(boolean z);

    zzflc zze(String str);

    zzflc zzf(zzflr zzflrVar);

    zzflc zzg(zzfge zzfgeVar);

    zzflc zzh(com.google.android.gms.ads.internal.client.zze zzeVar);

    zzflc zzi(String str);

    zzflc zzj(Throwable th);

    zzflc zzk(String str);

    boolean zzl();

    zzflf zzm();

    zzflc zzp(int i);
}
