package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.TaskUtil;
import defpackage.GG;

/* loaded from: classes3.dex */
final class zzgj extends zza {
    final /* synthetic */ GG zza;

    public zzgj(zzgl zzglVar, GG gg) {
        this.zza = gg;
    }

    @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzex
    public final void zzy(zzer zzerVar) {
        TaskUtil.setResultOrApiException(zzhf.zza(zzerVar.zza), zzerVar.zzb, this.zza);
    }
}
