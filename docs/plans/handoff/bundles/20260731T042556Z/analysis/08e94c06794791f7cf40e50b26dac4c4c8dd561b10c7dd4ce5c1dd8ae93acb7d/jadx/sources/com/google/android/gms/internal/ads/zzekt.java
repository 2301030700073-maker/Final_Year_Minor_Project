package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzekt implements zzguf {
    final /* synthetic */ long zza;
    final /* synthetic */ zzffx zzb;
    final /* synthetic */ zzffu zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzfnc zze;
    final /* synthetic */ zzfgf zzf;
    final /* synthetic */ zzekv zzg;

    zzekt(zzekv zzekvVar, long j, zzffx zzffxVar, zzffu zzffuVar, String str, zzfnc zzfncVar, zzfgf zzfgfVar) {
        this.zza = j;
        this.zzb = zzffxVar;
        this.zzc = zzffuVar;
        this.zzd = str;
        this.zze = zzfncVar;
        this.zzf = zzfgfVar;
        Objects.requireNonNull(zzekvVar);
        this.zzg = zzekvVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzguf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Throwable r17) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzekt.zza(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zzb(Object obj) {
        zzekv zzekvVar = this.zzg;
        long elapsedRealtime = zzekvVar.zzj().elapsedRealtime() - this.zza;
        synchronized (zzekvVar) {
            if (zzekvVar.zzn()) {
                zzekvVar.zzk().zza(this.zzb, this.zzc, 0, null, elapsedRealtime);
            }
            if (zzekvVar.zzp()) {
                return;
            }
            zzffu zzffuVar = this.zzc;
            if (zzekvVar.zzi(zzffuVar)) {
                ((zzeku) zzekvVar.zzm().get(zzffuVar)).zzd = elapsedRealtime;
            } else {
                zzekvVar.zzm().put(zzffuVar, new zzeku(this.zzd, zzffuVar.zzaf, 0, elapsedRealtime, null));
            }
            zzekvVar.zzo().zzd(zzffuVar, elapsedRealtime, null);
        }
    }
}
