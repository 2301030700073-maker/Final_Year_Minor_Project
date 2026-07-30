package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public class zzbge {
    private final String zza;
    private final Object zzb;
    private final int zzc;

    protected zzbge(String str, Object obj, int i) {
        this.zza = str;
        this.zzb = obj;
        this.zzc = i;
    }

    public static zzbge zza(String str, boolean z) {
        return new zzbge(str, Boolean.valueOf(z), 1);
    }

    public static zzbge zzb(String str, long j) {
        return new zzbge(str, Long.valueOf(j), 2);
    }

    public static zzbge zzc(String str, double d) {
        return new zzbge(str, Double.valueOf(d), 3);
    }

    public static zzbge zzd(String str, String str2) {
        return new zzbge("gad:dynamite_module:experiment_id", "", 4);
    }

    public final Object zze() {
        zzbhk zza = zzbhm.zza();
        if (zza != null) {
            int i = this.zzc - 1;
            return i != 0 ? i != 1 ? i != 2 ? zza.zzd(this.zza, (String) this.zzb) : zza.zzc(this.zza, ((Double) this.zzb).doubleValue()) : zza.zzb(this.zza, ((Long) this.zzb).longValue()) : zza.zza(this.zza, ((Boolean) this.zzb).booleanValue());
        }
        if (zzbhm.zzb() != null) {
            zzbhm.zzb().zza();
        }
        return this.zzb;
    }
}
