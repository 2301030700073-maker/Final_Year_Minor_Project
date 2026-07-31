package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfag implements zzifh {
    private final zzfaf zza;

    private zzfag(zzfaf zzfafVar) {
        this.zza = zzfafVar;
    }

    public static zzfag zzc(zzfaf zzfafVar) {
        return new zzfag(zzfafVar);
    }

    public static String zzd(zzfaf zzfafVar) {
        String zza = zzfafVar.zza();
        zzifp.zzb(zza);
        return zza;
    }

    public final String zza() {
        return zzd(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* synthetic */ Object zzb() {
        return zzd(this.zza);
    }
}
