package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataItemAsset;

/* loaded from: classes3.dex */
final class zzcn extends zzu {
    final /* synthetic */ DataItemAsset zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcn(zzct zzctVar, GoogleApiClient googleApiClient, DataItemAsset dataItemAsset) {
        super(googleApiClient);
        this.zza = dataItemAsset;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzcs(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        ((zzim) anyClient).zzu(this, Asset.createFromRef(this.zza.getId()));
    }
}
