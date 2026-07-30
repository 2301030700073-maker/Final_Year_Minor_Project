package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
final class zzeu extends zzdy.zza {
    private final /* synthetic */ String zzd;
    private final /* synthetic */ Object zze;
    private final /* synthetic */ zzdy zzh;
    private final /* synthetic */ int zzc = 5;
    private final /* synthetic */ Object zzf = null;
    private final /* synthetic */ Object zzg = null;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeu(zzdy zzdyVar, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(false);
        this.zzd = str;
        this.zze = obj;
        this.zzh = zzdyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy.zza
    public final void zza() {
        zzdj zzdjVar;
        zzdjVar = this.zzh.zzj;
        ((zzdj) Preconditions.checkNotNull(zzdjVar)).logHealthData(this.zzc, this.zzd, new BinderC3652rv(this.zze), new BinderC3652rv(null), new BinderC3652rv(null));
    }
}
