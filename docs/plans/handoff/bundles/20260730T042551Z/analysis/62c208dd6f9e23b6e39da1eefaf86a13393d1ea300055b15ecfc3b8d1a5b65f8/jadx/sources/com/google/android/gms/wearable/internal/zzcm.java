package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Asset;

/* loaded from: classes3.dex */
final class zzcm extends zzu {
    final /* synthetic */ Asset zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcm(zzct zzctVar, GoogleApiClient googleApiClient, Asset asset) {
        super(googleApiClient);
        this.zza = asset;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzcs(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        ((zzim) anyClient).zzu(this, this.zza);
    }
}
