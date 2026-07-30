package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.DataApi;

/* loaded from: classes3.dex */
public final class zzcr implements DataApi.DeleteDataItemsResult {
    private final Status zza;
    private final int zzb;

    public zzcr(Status status, int i) {
        this.zza = status;
        this.zzb = i;
    }

    @Override // com.google.android.gms.wearable.DataApi.DeleteDataItemsResult
    public final int getNumDeleted() {
        return this.zzb;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zza;
    }
}
