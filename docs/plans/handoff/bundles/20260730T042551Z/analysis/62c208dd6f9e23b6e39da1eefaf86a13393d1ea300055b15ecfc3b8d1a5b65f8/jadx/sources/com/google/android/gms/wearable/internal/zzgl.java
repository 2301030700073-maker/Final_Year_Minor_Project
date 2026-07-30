package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.NodeClient;
import defpackage.FG;
import defpackage.GG;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzgl extends NodeClient {
    final NodeApi zza;

    public zzgl(Activity activity, GoogleApi.Settings settings) {
        super(activity, settings);
        this.zza = new zzgd();
    }

    @Override // com.google.android.gms.wearable.NodeClient
    public final FG<String> getCompanionPackageForNode(final String str) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzge
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzgl zzglVar = zzgl.this;
                ((zzfb) ((zzim) obj).getService()).zzm(new zzhv(new zzgi(zzglVar, (GG) obj2)), str);
            }
        }).setFeatures(com.google.android.gms.wearable.zze.zzc).setMethodKey(24023).build());
    }

    @Override // com.google.android.gms.wearable.NodeClient
    public final FG<List<Node>> getConnectedNodes() {
        NodeApi nodeApi = this.zza;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzga((zzgd) nodeApi, asGoogleApiClient)), new PendingResultUtil.ResultConverter() { // from class: com.google.android.gms.wearable.internal.zzgf
            @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
            public final Object convert(Result result) {
                return ((NodeApi.GetConnectedNodesResult) result).getNodes();
            }
        });
    }

    @Override // com.google.android.gms.wearable.NodeClient
    public final FG<Node> getLocalNode() {
        NodeApi nodeApi = this.zza;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzfz((zzgd) nodeApi, asGoogleApiClient)), new PendingResultUtil.ResultConverter() { // from class: com.google.android.gms.wearable.internal.zzgh
            @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
            public final Object convert(Result result) {
                return ((NodeApi.GetLocalNodeResult) result).getNode();
            }
        });
    }

    @Override // com.google.android.gms.wearable.NodeClient
    public final FG<String> getNodeId(final String str) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzgg
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzgl zzglVar = zzgl.this;
                String str2 = str;
                ((zzfb) ((zzim) obj).getService()).zzt(new zzgj(zzglVar, (GG) obj2), str2);
            }
        }).setFeatures(com.google.android.gms.wearable.zze.zzi).setMethodKey(24025).build());
    }

    public zzgl(Context context, GoogleApi.Settings settings) {
        super(context, settings);
        this.zza = new zzgd();
    }
}
