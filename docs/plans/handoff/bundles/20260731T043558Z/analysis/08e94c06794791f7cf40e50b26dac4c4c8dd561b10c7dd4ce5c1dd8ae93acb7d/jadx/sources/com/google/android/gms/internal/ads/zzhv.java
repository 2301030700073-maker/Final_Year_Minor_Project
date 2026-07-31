package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhv implements zzyv {
    final /* synthetic */ zzhx zza;
    private final HashMap zzb;
    private final zzpc zzc;

    public zzhv(zzhx zzhxVar, zzpc zzpcVar) {
        Objects.requireNonNull(zzhxVar);
        this.zza = zzhxVar;
        this.zzb = new HashMap();
        this.zzc = zzpcVar;
    }

    private final void zze(zzyt zzytVar) {
        zzpc zzpcVar = (zzpc) this.zzb.remove(zzytVar);
        zzpcVar.getClass();
        zzhw zzhwVar = (zzhw) this.zza.zzl().get(zzpcVar);
        if (zzhwVar != null) {
            zzhwVar.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final synchronized zzyt zza() {
        zzyt zza;
        zzhx zzhxVar = this.zza;
        zzzb zzk = zzhxVar.zzk();
        HashMap hashMap = this.zzb;
        zza = zzk.zza();
        zzpc zzpcVar = this.zzc;
        hashMap.put(zza, zzpcVar);
        zzhw zzhwVar = (zzhw) zzhxVar.zzl().get(zzpcVar);
        if (zzhwVar != null) {
            zzhwVar.zza();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final synchronized void zzb(zzyt zzytVar) {
        this.zza.zzk().zzb(zzytVar);
        zze(zzytVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final synchronized void zzc(zzyu zzyuVar) {
        this.zza.zzk().zzc(zzyuVar);
        while (zzyuVar != null) {
            zze(zzyuVar.zzd());
            zzyuVar = zzyuVar.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final synchronized void zzd() {
        this.zza.zzk().zzd();
    }
}
