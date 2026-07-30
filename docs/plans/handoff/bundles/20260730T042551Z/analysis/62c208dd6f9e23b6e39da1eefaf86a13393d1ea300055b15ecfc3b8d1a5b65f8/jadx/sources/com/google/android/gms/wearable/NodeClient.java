package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.wearable.Wearable;
import defpackage.FG;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class NodeClient extends GoogleApi<Wearable.WearableOptions> {
    public NodeClient(Activity activity, GoogleApi.Settings settings) {
        super(activity, Wearable.API, Wearable.WearableOptions.zza, settings);
    }

    public abstract FG<String> getCompanionPackageForNode(String str);

    public abstract FG<List<Node>> getConnectedNodes();

    public abstract FG<Node> getLocalNode();

    public abstract FG<String> getNodeId(String str);

    public NodeClient(Context context, GoogleApi.Settings settings) {
        super(context, Wearable.API, Wearable.WearableOptions.zza, settings);
    }
}
