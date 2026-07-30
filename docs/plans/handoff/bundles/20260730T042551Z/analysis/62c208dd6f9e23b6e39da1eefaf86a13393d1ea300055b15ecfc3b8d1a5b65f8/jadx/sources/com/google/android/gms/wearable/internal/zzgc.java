package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;

/* loaded from: classes3.dex */
public final class zzgc implements NodeApi.GetLocalNodeResult {
    private final Status zza;
    private final Node zzb;

    public zzgc(Status status, Node node) {
        this.zza = status;
        this.zzb = node;
    }

    @Override // com.google.android.gms.wearable.NodeApi.GetLocalNodeResult
    public final Node getNode() {
        return this.zzb;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zza;
    }
}
