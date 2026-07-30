package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public class zzbdv {
    private final String zza;
    private final Object zzb;
    private final int zzc;

    public zzbdv(String str, Object obj, int i) {
        this.zza = str;
        this.zzb = obj;
        this.zzc = i;
    }

    public static zzbdv zza(String str, double d) {
        return new zzbdv(str, Double.valueOf(d), 3);
    }

    public static zzbdv zzb(String str, long j) {
        return new zzbdv(str, Long.valueOf(j), 2);
    }

    public static zzbdv zzc(String str, String str2) {
        return new zzbdv("gad:dynamite_module:experiment_id", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 4);
    }

    public static zzbdv zzd(String str, boolean z) {
        return new zzbdv(str, Boolean.valueOf(z), 1);
    }

    public final Object zze() {
        zzbfa zza = zzbfc.zza();
        if (zza != null) {
            int i = this.zzc - 1;
            return i != 0 ? i != 1 ? i != 2 ? zza.zzd(this.zza, (String) this.zzb) : zza.zzb(this.zza, ((Double) this.zzb).doubleValue()) : zza.zzc(this.zza, ((Long) this.zzb).longValue()) : zza.zza(this.zza, ((Boolean) this.zzb).booleanValue());
        }
        if (zzbfc.zzb() != null) {
            zzbfc.zzb().zza();
        }
        return this.zzb;
    }
}
