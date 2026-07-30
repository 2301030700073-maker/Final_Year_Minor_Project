package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
final class zzfj extends zzdy.zza {
    private final /* synthetic */ Activity zzc;
    private final /* synthetic */ zzdy.zzd zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfj(zzdy.zzd zzdVar, Activity activity) {
        super(zzdy.this);
        this.zzc = activity;
        this.zzd = zzdVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy.zza
    public final void zza() {
        zzdj zzdjVar;
        zzdjVar = zzdy.this.zzj;
        ((zzdj) Preconditions.checkNotNull(zzdjVar)).onActivityStopped(new BinderC3652rv(this.zzc), this.zzb);
    }
}
