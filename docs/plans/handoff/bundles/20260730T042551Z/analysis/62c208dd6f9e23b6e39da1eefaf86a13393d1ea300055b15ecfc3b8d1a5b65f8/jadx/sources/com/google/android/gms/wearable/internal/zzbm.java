package com.google.android.gms.wearable.internal;

import android.net.Uri;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
final class zzbm extends zzu {
    final /* synthetic */ Uri zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzbq zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbm(zzbq zzbqVar, GoogleApiClient googleApiClient, Uri uri, long j, long j2) {
        super(googleApiClient);
        this.zzd = zzbqVar;
        this.zza = uri;
        this.zzb = j;
        this.zzc = j2;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        String str;
        str = this.zzd.zza;
        ((zzim) anyClient).zzC(this, str, this.zza, this.zzb, this.zzc);
    }
}
