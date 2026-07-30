package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
final class zzc extends zzu {
    private Object zza;
    private ListenerHolder zzb;
    private final zzb zzc;

    private zzc(GoogleApiClient googleApiClient, Object obj, ListenerHolder listenerHolder, zzb zzbVar) {
        super(googleApiClient);
        this.zza = Preconditions.checkNotNull(obj);
        this.zzb = (ListenerHolder) Preconditions.checkNotNull(listenerHolder);
        this.zzc = (zzb) Preconditions.checkNotNull(zzbVar);
    }

    public static PendingResult zza(GoogleApiClient googleApiClient, zzb zzbVar, Object obj) {
        return googleApiClient.enqueue(new zzc(googleApiClient, obj, googleApiClient.registerListener(obj), zzbVar));
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        this.zza = null;
        this.zzb = null;
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        this.zzc.zza((zzim) anyClient, this, this.zza, this.zzb);
        this.zza = null;
        this.zzb = null;
    }
}
