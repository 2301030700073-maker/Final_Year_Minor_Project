package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzqq implements zzpj {
    final /* synthetic */ zzqs zza;

    public /* synthetic */ zzqq(zzqs zzqsVar, zzqr zzqrVar) {
        this.zza = zzqsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpj
    public final void zza(Exception exc) {
        zzpe zzpeVar;
        zzdo.zzd("MediaCodecAudioRenderer", "Audio sink error", exc);
        zzpeVar = this.zza.zzc;
        zzpeVar.zzb(exc);
    }
}
