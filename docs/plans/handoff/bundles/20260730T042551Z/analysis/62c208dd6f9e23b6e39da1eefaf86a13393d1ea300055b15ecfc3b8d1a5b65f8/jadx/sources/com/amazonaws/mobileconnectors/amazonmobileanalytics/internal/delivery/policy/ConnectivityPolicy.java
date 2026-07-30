package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidConnectivity;

/* loaded from: classes.dex */
public class ConnectivityPolicy implements DeliveryPolicy {

    /* renamed from: do, reason: not valid java name */
    public final AnalyticsContext f8869do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AndroidConnectivity f8870do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f8871do;

    public ConnectivityPolicy(AnalyticsContext analyticsContext, boolean z) {
        this.f8869do = analyticsContext;
        this.f8870do = ((DefaultAnalyticsContext) analyticsContext).f8805do.f8834do;
        this.f8871do = z;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.DeliveryPolicy
    /* renamed from: do, reason: not valid java name */
    public final void mo5093do(boolean z) {
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.DeliveryPolicy
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo5094if() {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.ConnectivityPolicy.mo5094if():boolean");
    }
}
