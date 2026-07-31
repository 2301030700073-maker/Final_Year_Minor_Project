package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzeke implements zzguf {
    final /* synthetic */ zzffu zza;
    final /* synthetic */ zzekf zzb;

    zzeke(zzekf zzekfVar, zzffu zzffuVar) {
        this.zza = zzffuVar;
        Objects.requireNonNull(zzekfVar);
        this.zzb = zzekfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
        zzekf zzekfVar = this.zzb;
        synchronized (zzekfVar) {
            zzekg zzc = zzekfVar.zzc();
            zzffu zzffuVar = this.zza;
            zzc.zzc(th, zzffuVar);
            zzffu zza = zzekfVar.zzc().zza();
            if (zzffuVar.zzav) {
                while (zza != null) {
                    zzekfVar.zzb(zza);
                    zza = zzekfVar.zzc().zza();
                }
            } else if (zza != null) {
                zzekfVar.zzb(zza);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzekf zzekfVar = this.zzb;
        zzekw zzekwVar = (zzekw) obj;
        synchronized (zzekfVar) {
            zzekfVar.zzc().zzb(zzekwVar, this.zza);
            zzffu zza = zzekfVar.zzc().zza();
            if (zza != null) {
                zzekfVar.zzb(zza);
            }
        }
    }
}
