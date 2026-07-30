package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import defpackage.GG;

/* loaded from: classes3.dex */
final class zzgi implements BaseImplementation.ResultHolder {
    final /* synthetic */ GG zza;

    public zzgi(zzgl zzglVar, GG gg) {
        this.zza = gg;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final void setFailedResult(Status status) {
        this.zza.m719do(ApiExceptionUtil.fromStatus(status));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        zzgk zzgkVar = (zzgk) obj;
        if (zzgkVar.getStatus().isSuccess()) {
            this.zza.m721if(zzgkVar.zza());
        } else {
            this.zza.m719do(ApiExceptionUtil.fromStatus(zzgkVar.getStatus()));
        }
    }
}
