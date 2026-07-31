package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzifu implements zzifq {
    private static final Object zza = new Object();
    private volatile zzifq zzb;
    private volatile Object zzc = zza;

    private zzifu(zzifq zzifqVar) {
        this.zzb = zzifqVar;
    }

    public static zzifq zza(zzifq zzifqVar) {
        return ((zzifqVar instanceof zzifu) || (zzifqVar instanceof zzifg)) ? zzifqVar : new zzifu(zzifqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final Object zzb() {
        Object obj = this.zzc;
        if (obj != zza) {
            return obj;
        }
        zzifq zzifqVar = this.zzb;
        if (zzifqVar == null) {
            return this.zzc;
        }
        Object zzb = zzifqVar.zzb();
        this.zzc = zzb;
        this.zzb = null;
        return zzb;
    }
}
