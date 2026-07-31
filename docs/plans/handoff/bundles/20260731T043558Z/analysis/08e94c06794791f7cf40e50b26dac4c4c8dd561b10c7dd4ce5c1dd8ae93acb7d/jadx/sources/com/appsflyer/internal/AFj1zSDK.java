package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;

/* loaded from: classes2.dex */
public final class AFj1zSDK extends AFi1aSDK {
    private final AFj1ySDK getMediationNetwork;
    private final AFc1bSDK getRevenue;

    public AFj1zSDK(Runnable runnable, AFc1bSDK aFc1bSDK, AFj1ySDK aFj1ySDK) {
        super("store", "huawei", aFc1bSDK.getCurrencyIso4217Code(), runnable);
        this.getRevenue = aFc1bSDK;
        this.getMediationNetwork = aFj1ySDK;
    }

    @Override // com.appsflyer.internal.AFj1qSDK
    public final void getCurrencyIso4217Code(final Context context) {
        if (getRevenue(context)) {
            this.getRevenue.getMediationNetwork().execute(new Runnable() { // from class: com.appsflyer.internal.AFj1zSDK$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AFj1zSDK.this.AFAdRevenueData(context);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00dd, code lost:
    
        if (r2 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0103, code lost:
    
        getMonetizationNetwork();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0106, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void AFAdRevenueData(android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1zSDK.AFAdRevenueData(android.content.Context):void");
    }

    private boolean getRevenue(Context context) {
        if (!getMediationNetwork()) {
            AFLogger.INSTANCE.d(AFg1cSDK.REFERRER, "Huawei referrer collection disallowed by counter.");
            return false;
        }
        if (!this.getMediationNetwork.AFAdRevenueData(context)) {
            AFLogger.INSTANCE.d(AFg1cSDK.REFERRER, "Huawei referrer collection disallowed by missing content provider.");
            return false;
        }
        if (this.getMediationNetwork.getMonetizationNetwork(context)) {
            return true;
        }
        AFLogger.INSTANCE.d(AFg1cSDK.REFERRER, "Huawei referrer collection disallowed by invalid content provider.");
        return false;
    }
}
