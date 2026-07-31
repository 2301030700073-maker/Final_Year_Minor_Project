package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfoi implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzea zzb;
    final /* synthetic */ zzfom zzc;

    zzfoi(zzfom zzfomVar, long j, com.google.android.gms.ads.internal.client.zzea zzeaVar) {
        this.zza = j;
        this.zzb = zzeaVar;
        Objects.requireNonNull(zzfomVar);
        this.zzc = zzfomVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String zzQ;
        zzfom zzfomVar = this.zzc;
        if (zzfomVar.zzA() != null) {
            zzfnv zzA = zzfomVar.zzA();
            long j = this.zza;
            com.google.android.gms.ads.internal.client.zzea zzeaVar = this.zzb;
            zzfoc zzC = zzfomVar.zzC();
            zzQ = zzfom.zzQ(zzeaVar);
            zzA.zzi(j, zzQ, zzC, zzfomVar.zze.zzd, zzfomVar.zzn(), zzfomVar.zzz());
        }
    }
}
