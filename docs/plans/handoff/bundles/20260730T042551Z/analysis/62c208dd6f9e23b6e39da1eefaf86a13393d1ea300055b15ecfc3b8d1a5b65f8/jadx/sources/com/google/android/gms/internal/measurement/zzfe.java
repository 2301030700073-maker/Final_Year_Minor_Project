package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;

/* loaded from: classes.dex */
final class zzfe extends zzdy.zza {
    private final /* synthetic */ zzdy.zzb zzc;
    private final /* synthetic */ zzdy zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfe(zzdy zzdyVar, zzdy.zzb zzbVar) {
        super(zzdyVar);
        this.zzc = zzbVar;
        this.zzd = zzdyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy.zza
    public final void zza() {
        zzdj zzdjVar;
        zzdjVar = this.zzd.zzj;
        ((zzdj) Preconditions.checkNotNull(zzdjVar)).registerOnMeasurementEventListener(this.zzc);
    }
}
