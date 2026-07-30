package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;

/* loaded from: classes.dex */
public class DefaultDeliveryPolicyFactory {

    /* renamed from: do, reason: not valid java name */
    public final long f8872do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AnalyticsContext f8873do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f8874do;

    public DefaultDeliveryPolicyFactory(AnalyticsContext analyticsContext, boolean z) {
        this.f8873do = analyticsContext;
        this.f8874do = z;
        DefaultAnalyticsContext defaultAnalyticsContext = (DefaultAnalyticsContext) analyticsContext;
        this.f8872do = defaultAnalyticsContext.f8803do.m5069if("forceSubmissionWaitTime", 60L).longValue() * 1000;
        defaultAnalyticsContext.f8803do.m5069if("backgroundSubmissionWaitTime", 0L).longValue();
    }
}
