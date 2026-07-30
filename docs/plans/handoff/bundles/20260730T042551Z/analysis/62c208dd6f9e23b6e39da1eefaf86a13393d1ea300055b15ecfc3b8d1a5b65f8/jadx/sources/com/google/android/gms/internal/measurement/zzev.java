package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;

/* loaded from: classes.dex */
final class zzev extends zzdy.zza {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ zzdk zzd;
    private final /* synthetic */ zzdy zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzev(zzdy zzdyVar, String str, zzdk zzdkVar) {
        super(zzdyVar);
        this.zzc = str;
        this.zzd = zzdkVar;
        this.zze = zzdyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy.zza
    public final void zza() {
        zzdj zzdjVar;
        zzdjVar = this.zze.zzj;
        ((zzdj) Preconditions.checkNotNull(zzdjVar)).getMaxUserProperties(this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.measurement.zzdy.zza
    public final void zzb() {
        this.zzd.zza((Bundle) null);
    }
}
