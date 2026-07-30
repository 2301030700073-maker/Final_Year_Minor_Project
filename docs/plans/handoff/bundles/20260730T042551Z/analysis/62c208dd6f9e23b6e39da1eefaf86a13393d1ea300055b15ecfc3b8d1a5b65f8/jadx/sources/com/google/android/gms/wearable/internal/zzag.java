package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.CapabilityApi;

/* loaded from: classes3.dex */
final class zzag extends zzu {
    private CapabilityApi.CapabilityListener zza;

    public /* synthetic */ zzag(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener, zzaf zzafVar) {
        super(googleApiClient);
        this.zza = capabilityListener;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        this.zza = null;
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        ((zzim) anyClient).zzx(this, this.zza);
        this.zza = null;
    }
}
