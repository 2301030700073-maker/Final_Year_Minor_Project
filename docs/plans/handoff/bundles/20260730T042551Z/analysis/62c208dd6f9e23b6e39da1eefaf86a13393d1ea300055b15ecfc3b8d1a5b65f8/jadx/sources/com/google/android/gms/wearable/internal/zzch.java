package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.PutDataRequest;

/* loaded from: classes3.dex */
final class zzch extends zzu {
    final /* synthetic */ PutDataRequest zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzch(zzct zzctVar, GoogleApiClient googleApiClient, PutDataRequest putDataRequest) {
        super(googleApiClient);
        this.zza = putDataRequest;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzcq(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        ((zzim) anyClient).zzv(this, this.zza);
    }
}
