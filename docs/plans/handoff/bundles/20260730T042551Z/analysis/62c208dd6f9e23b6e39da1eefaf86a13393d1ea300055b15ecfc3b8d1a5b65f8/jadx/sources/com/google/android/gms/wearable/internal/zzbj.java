package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
final class zzbj extends zzu {
    final /* synthetic */ zzbq zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbj(zzbq zzbqVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zza = zzbqVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzbo(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        String str;
        str = this.zza.zza;
        zzca zzcaVar = new zzca();
        ((zzfb) ((zzim) anyClient).getService()).zzk(new zzht(this, zzcaVar), zzcaVar, str);
    }
}
