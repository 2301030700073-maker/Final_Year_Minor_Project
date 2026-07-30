package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy;

import android.content.SharedPreferences;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidPreferences;

/* loaded from: classes.dex */
public class SubmissionTimePolicy implements DeliveryPolicy {

    /* renamed from: do, reason: not valid java name */
    public final AnalyticsContext f8875do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Long f8876do;

    public SubmissionTimePolicy(AnalyticsContext analyticsContext) {
        this.f8875do = analyticsContext;
        this.f8876do = Long.valueOf(((DefaultAnalyticsContext) analyticsContext).f8805do.f8836do.f8832do.getLong("SubmissionTimePolicy.submissionTime", 0L));
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.DeliveryPolicy
    /* renamed from: do */
    public final void mo5093do(boolean z) {
        if (z) {
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            this.f8876do = valueOf;
            AndroidPreferences androidPreferences = ((DefaultAnalyticsContext) this.f8875do).f8805do.f8836do;
            long longValue = valueOf.longValue();
            SharedPreferences.Editor edit = androidPreferences.f8832do.edit();
            edit.putLong("SubmissionTimePolicy.submissionTime", longValue);
            edit.commit();
        }
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.DeliveryPolicy
    /* renamed from: if */
    public final boolean mo5094if() {
        System.currentTimeMillis();
        this.f8876do.longValue();
        return true;
    }
}
