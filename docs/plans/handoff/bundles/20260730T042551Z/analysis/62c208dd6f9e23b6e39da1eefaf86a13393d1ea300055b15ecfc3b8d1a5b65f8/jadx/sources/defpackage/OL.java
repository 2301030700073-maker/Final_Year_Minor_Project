package defpackage;

import android.os.Bundle;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.Wearable;

/* loaded from: classes3.dex */
public final class OL implements GoogleApiClient.ConnectionCallbacks {

    /* renamed from: OL$do, reason: invalid class name */
    public class Cdo implements ResultCallback<NodeApi.GetConnectedNodesResult> {
        @Override // com.google.android.gms.common.api.ResultCallback
        public final void onResult(NodeApi.GetConnectedNodesResult getConnectedNodesResult) {
            MobileAnalyticsManager mobileAnalyticsManager;
            if (getConnectedNodesResult.getNodes() == null || (mobileAnalyticsManager = C4012y0.f16658do) == null) {
                return;
            }
            try {
                DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
                defaultEventClient.m5099case(defaultEventClient.m5101for("WearPresent"));
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Wearable.NodeApi.getConnectedNodes(PL.f2773do).setResultCallback(new Cdo());
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
