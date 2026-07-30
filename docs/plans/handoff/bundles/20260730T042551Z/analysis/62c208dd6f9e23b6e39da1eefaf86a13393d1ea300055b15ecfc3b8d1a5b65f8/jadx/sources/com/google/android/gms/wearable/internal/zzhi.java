package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import defpackage.GG;

/* loaded from: classes3.dex */
final class zzhi implements BaseImplementation.ResultHolder {
    final GG zza;

    public zzhi(GG gg) {
        this.zza = gg;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final void setFailedResult(Status status) {
        this.zza.m719do(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        Status status = (Status) obj;
        int statusCode = status.getStatusCode();
        if (statusCode == 0) {
            this.zza.m721if(Boolean.TRUE);
        } else if (statusCode == 4002) {
            this.zza.m721if(Boolean.FALSE);
        } else {
            setFailedResult(status);
        }
    }
}
