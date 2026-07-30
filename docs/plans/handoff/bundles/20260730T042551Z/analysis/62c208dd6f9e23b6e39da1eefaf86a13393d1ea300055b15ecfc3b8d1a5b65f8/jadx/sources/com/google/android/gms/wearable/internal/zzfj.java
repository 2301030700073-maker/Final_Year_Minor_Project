package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.MessageApi;

/* loaded from: classes3.dex */
final class zzfj extends zzu {
    private MessageApi.MessageListener zza;
    private ListenerHolder zzb;
    private IntentFilter[] zzc;

    public /* synthetic */ zzfj(GoogleApiClient googleApiClient, MessageApi.MessageListener messageListener, ListenerHolder listenerHolder, IntentFilter[] intentFilterArr, zzfi zzfiVar) {
        super(googleApiClient);
        this.zza = (MessageApi.MessageListener) Preconditions.checkNotNull(messageListener);
        this.zzb = (ListenerHolder) Preconditions.checkNotNull(listenerHolder);
        this.zzc = (IntentFilter[]) Preconditions.checkNotNull(intentFilterArr);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) {
        ((zzim) anyClient).zzs(this, this.zza, this.zzb, this.zzc);
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }
}
