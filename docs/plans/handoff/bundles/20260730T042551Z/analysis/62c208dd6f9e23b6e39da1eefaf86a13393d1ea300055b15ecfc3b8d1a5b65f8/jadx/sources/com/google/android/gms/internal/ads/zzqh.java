package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* loaded from: classes.dex */
final class zzqh implements zzpp {
    final /* synthetic */ zzqm zza;

    public /* synthetic */ zzqh(zzqm zzqmVar, zzql zzqlVar) {
        this.zza = zzqmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zza(long j) {
        zzdo.zzf("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
    }

    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zzb(long j) {
        zzpj zzpjVar;
        zzpj zzpjVar2;
        zzpe zzpeVar;
        zzqm zzqmVar = this.zza;
        zzpjVar = zzqmVar.zzp;
        if (zzpjVar != null) {
            zzpjVar2 = zzqmVar.zzp;
            zzpeVar = ((zzqq) zzpjVar2).zza.zzc;
            zzpeVar.zzv(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zzc(long j, long j2, long j3, long j4) {
        long zzL;
        long zzM;
        zzqm zzqmVar = this.zza;
        zzL = zzqmVar.zzL();
        zzM = zzqmVar.zzM();
        zzdo.zzf("DefaultAudioSink", "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + zzL + ", " + zzM);
    }

    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zzd(long j, long j2, long j3, long j4) {
        long zzL;
        long zzM;
        zzqm zzqmVar = this.zza;
        zzL = zzqmVar.zzL();
        zzM = zzqmVar.zzM();
        zzdo.zzf("DefaultAudioSink", "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + zzL + ", " + zzM);
    }

    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zze(int i, long j) {
        zzpj zzpjVar;
        long j2;
        zzpj zzpjVar2;
        zzpe zzpeVar;
        zzqm zzqmVar = this.zza;
        zzpjVar = zzqmVar.zzp;
        if (zzpjVar != null) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            j2 = zzqmVar.zzV;
            zzpjVar2 = this.zza.zzp;
            zzpeVar = ((zzqq) zzpjVar2).zza.zzc;
            zzpeVar.zzx(i, j, elapsedRealtime - j2);
        }
    }
}
