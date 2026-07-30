package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
final class zzbi extends zzu {
    final /* synthetic */ int zza;
    final /* synthetic */ zzbq zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbi(zzbq zzbqVar, GoogleApiClient googleApiClient, int i) {
        super(googleApiClient);
        this.zzb = zzbqVar;
        this.zza = i;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        String str;
        str = this.zzb.zza;
        ((zzfb) ((zzim) anyClient).getService()).zzg(new zzhp(this), str, this.zza);
    }
}
