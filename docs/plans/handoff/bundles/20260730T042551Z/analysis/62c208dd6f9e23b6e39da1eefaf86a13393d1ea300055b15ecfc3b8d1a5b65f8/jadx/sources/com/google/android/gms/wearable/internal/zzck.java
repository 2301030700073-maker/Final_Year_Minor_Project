package com.google.android.gms.wearable.internal;

import android.net.Uri;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataItemBuffer;

/* loaded from: classes3.dex */
final class zzck extends zzu {
    final /* synthetic */ Uri zza;
    final /* synthetic */ int zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzck(zzct zzctVar, GoogleApiClient googleApiClient, Uri uri, int i) {
        super(googleApiClient);
        this.zza = uri;
        this.zzb = i;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        return new DataItemBuffer(DataHolder.empty(status.getStatusCode()));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        ((zzfb) ((zzim) anyClient).getService()).zzq(new zzhy(this), this.zza, this.zzb);
    }
}
