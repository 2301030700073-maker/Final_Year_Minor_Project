package com.google.android.gms.internal.appset;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import defpackage.C3307m2;
import defpackage.GG;

/* loaded from: classes.dex */
final class zzo extends zze {
    final /* synthetic */ GG zza;

    public zzo(zzp zzpVar, GG gg) {
        this.zza = gg;
    }

    @Override // com.google.android.gms.internal.appset.zzf
    public final void zzb(Status status, com.google.android.gms.appset.zzc zzcVar) {
        TaskUtil.setResultOrApiException(status, zzcVar != null ? new C3307m2(zzcVar.f10143break, zzcVar.f10144for) : null, this.zza);
    }
}
