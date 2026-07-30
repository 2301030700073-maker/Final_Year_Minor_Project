package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.wearable.NodeApi;

/* loaded from: classes3.dex */
public final class zzgd implements NodeApi {
    @Override // com.google.android.gms.wearable.NodeApi
    public final PendingResult<NodeApi.GetConnectedNodesResult> getConnectedNodes(GoogleApiClient googleApiClient) {
        return googleApiClient.enqueue(new zzga(this, googleApiClient));
    }

    @Override // com.google.android.gms.wearable.NodeApi
    public final PendingResult<NodeApi.GetLocalNodeResult> getLocalNode(GoogleApiClient googleApiClient) {
        return googleApiClient.enqueue(new zzfz(this, googleApiClient));
    }
}
