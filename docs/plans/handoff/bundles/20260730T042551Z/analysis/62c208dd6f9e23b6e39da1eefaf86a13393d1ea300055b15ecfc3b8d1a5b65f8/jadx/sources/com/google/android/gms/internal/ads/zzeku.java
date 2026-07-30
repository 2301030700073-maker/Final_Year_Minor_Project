package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzeku implements zzelc {
    final /* synthetic */ zzekv zza;

    public zzeku(zzekv zzekvVar) {
        this.zza = zzekvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzj = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdeq zzdeqVar;
        zzdeq zzdeqVar2 = (zzdeq) obj;
        synchronized (this.zza) {
            this.zza.zzj = zzdeqVar2;
            zzdeqVar = this.zza.zzj;
            zzdeqVar.zzk();
        }
    }
}
