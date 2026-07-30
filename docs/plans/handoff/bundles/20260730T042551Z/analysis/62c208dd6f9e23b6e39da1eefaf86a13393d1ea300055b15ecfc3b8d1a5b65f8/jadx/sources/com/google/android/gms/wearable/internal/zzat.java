package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.ChannelApi;

/* loaded from: classes3.dex */
final class zzat extends zzu {
    private final String zza;
    private ChannelApi.ChannelListener zzb;

    public zzat(GoogleApiClient googleApiClient, ChannelApi.ChannelListener channelListener, String str) {
        super(googleApiClient);
        this.zzb = (ChannelApi.ChannelListener) Preconditions.checkNotNull(channelListener);
        this.zza = str;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        this.zzb = null;
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        ((zzim) anyClient).zzy(this, this.zzb, this.zza);
        this.zzb = null;
    }
}
