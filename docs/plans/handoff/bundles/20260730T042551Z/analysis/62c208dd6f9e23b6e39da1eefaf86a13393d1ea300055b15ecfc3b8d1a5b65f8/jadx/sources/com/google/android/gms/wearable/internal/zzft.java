package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.wearable.MessageApi;
import defpackage.GG;

/* loaded from: classes3.dex */
final class zzft implements BaseImplementation.ResultHolder {
    final /* synthetic */ GG zza;

    public zzft(zzfw zzfwVar, GG gg) {
        this.zza = gg;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final void setFailedResult(Status status) {
        this.zza.m719do(ApiExceptionUtil.fromStatus(status));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        MessageApi.SendMessageResult sendMessageResult = (MessageApi.SendMessageResult) obj;
        if (sendMessageResult.getStatus().isSuccess()) {
            this.zza.m721if(Integer.valueOf(sendMessageResult.getRequestId()));
        } else {
            this.zza.m719do(ApiExceptionUtil.fromStatus(sendMessageResult.getStatus()));
        }
    }
}
