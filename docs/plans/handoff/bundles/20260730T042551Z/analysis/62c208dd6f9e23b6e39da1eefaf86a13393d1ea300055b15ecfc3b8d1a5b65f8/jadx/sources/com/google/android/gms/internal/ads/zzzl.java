package com.google.android.gms.internal.ads;

import android.view.Surface;

/* loaded from: classes.dex */
final class zzzl implements zzabe {
    final /* synthetic */ zzzp zza;

    public zzzl(zzzp zzzpVar) {
        this.zza = zzzpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzabe
    public final void zza(zzabh zzabhVar) {
        Surface surface;
        zzzp zzzpVar = this.zza;
        surface = zzzpVar.zzq;
        if (surface != null) {
            zzzpVar.zzaZ();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabe
    public final void zzb(zzabh zzabhVar) {
        Surface surface;
        zzzp zzzpVar = this.zza;
        surface = zzzpVar.zzq;
        if (surface != null) {
            zzzpVar.zzaR(0, 1);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabe
    public final void zzc(zzabh zzabhVar, zzcd zzcdVar) {
    }
}
