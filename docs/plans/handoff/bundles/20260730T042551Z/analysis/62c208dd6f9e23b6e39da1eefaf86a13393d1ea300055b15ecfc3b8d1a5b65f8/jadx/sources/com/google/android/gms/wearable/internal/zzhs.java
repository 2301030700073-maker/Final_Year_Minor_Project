package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* loaded from: classes3.dex */
final class zzhs extends zzhn {
    public zzhs(BaseImplementation.ResultHolder resultHolder) {
        super(resultHolder);
    }

    @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzex
    public final void zzk(zzdp zzdpVar) {
        Status zza = zzhf.zza(zzdpVar.zza);
        zzao zzaoVar = zzdpVar.zzb;
        zzI(new zzae(zza, zzaoVar == null ? null : new zzac(zzaoVar)));
    }
}
