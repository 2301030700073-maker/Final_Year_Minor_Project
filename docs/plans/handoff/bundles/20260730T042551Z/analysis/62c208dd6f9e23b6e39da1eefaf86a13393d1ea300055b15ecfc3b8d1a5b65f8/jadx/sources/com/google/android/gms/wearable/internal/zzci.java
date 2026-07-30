package com.google.android.gms.wearable.internal;

import android.net.Uri;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
final class zzci extends zzu {
    final /* synthetic */ Uri zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzci(zzct zzctVar, GoogleApiClient googleApiClient, Uri uri) {
        super(googleApiClient);
        this.zza = uri;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzcq(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        ((zzfb) ((zzim) anyClient).getService()).zzo(new zzhx(this), this.zza);
    }
}
