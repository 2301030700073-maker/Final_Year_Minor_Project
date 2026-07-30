package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
final class zzego implements zzgcd {
    final /* synthetic */ long zza;
    final /* synthetic */ zzfbr zzb;
    final /* synthetic */ zzfbo zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzfiv zze;
    final /* synthetic */ zzfca zzf;
    final /* synthetic */ zzegq zzg;

    public zzego(zzegq zzegqVar, long j, zzfbr zzfbrVar, zzfbo zzfboVar, String str, zzfiv zzfivVar, zzfca zzfcaVar) {
        this.zza = j;
        this.zzb = zzfbrVar;
        this.zzc = zzfboVar;
        this.zzd = str;
        this.zze = zzfivVar;
        this.zzf = zzfcaVar;
        this.zzg = zzegqVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgcd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Throwable r17) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzego.zza(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zzb(Object obj) {
        Clock clock;
        boolean z;
        boolean z2;
        boolean zzq;
        LinkedHashMap linkedHashMap;
        zzedb zzedbVar;
        LinkedHashMap linkedHashMap2;
        zzegs zzegsVar;
        clock = this.zzg.zza;
        long elapsedRealtime = clock.elapsedRealtime() - this.zza;
        synchronized (this.zzg) {
            zzegq zzegqVar = this.zzg;
            z = zzegqVar.zze;
            if (z) {
                zzegsVar = zzegqVar.zzb;
                zzegsVar.zza(this.zzb, this.zzc, 0, null, elapsedRealtime);
            }
            zzegq zzegqVar2 = this.zzg;
            z2 = zzegqVar2.zzg;
            if (z2) {
                return;
            }
            zzq = zzegqVar2.zzq(this.zzc);
            if (zzq) {
                linkedHashMap2 = this.zzg.zzd;
                ((zzegp) linkedHashMap2.get(this.zzc)).zzd = elapsedRealtime;
            } else {
                linkedHashMap = this.zzg.zzd;
                zzfbo zzfboVar = this.zzc;
                linkedHashMap.put(zzfboVar, new zzegp(this.zzd, zzfboVar.zzaf, 0, elapsedRealtime, null));
            }
            zzedbVar = this.zzg.zzf;
            zzedbVar.zzg(this.zzc, elapsedRealtime, null);
        }
    }
}
