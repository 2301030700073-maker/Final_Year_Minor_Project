package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzext implements zzelc {
    final /* synthetic */ zzexu zza;

    public zzext(zzexu zzexuVar) {
        this.zza = zzexuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzexm zzexmVar;
        zzexm zzexmVar2;
        zzdrw zzdrwVar;
        zzcog zzcogVar = (zzcog) obj;
        synchronized (this.zza) {
            zzcog zzcogVar2 = this.zza.zza;
            if (zzcogVar2 != null) {
                zzcogVar2.zzb();
            }
            zzexu zzexuVar = this.zza;
            zzexuVar.zza = zzcogVar;
            zzcogVar.zzc(zzexuVar);
            zzexu zzexuVar2 = this.zza;
            zzexmVar = zzexuVar2.zzg;
            zzexmVar2 = zzexuVar2.zzg;
            zzdrwVar = zzexuVar2.zzi;
            zzexmVar.zzk(new zzcoh(zzcogVar, zzexuVar2, zzexmVar2, zzdrwVar));
            zzcogVar.zzk();
        }
    }
}
