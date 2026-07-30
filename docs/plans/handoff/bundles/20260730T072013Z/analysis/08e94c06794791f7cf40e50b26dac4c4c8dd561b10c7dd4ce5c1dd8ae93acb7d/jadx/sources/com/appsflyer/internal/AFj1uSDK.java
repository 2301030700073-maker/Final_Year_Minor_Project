package com.appsflyer.internal;

import android.content.Context;
import android.database.Cursor;
import com.appsflyer.AFLogger;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class AFj1uSDK extends AFi1aSDK {
    private final ExecutorService getMediationNetwork;

    @Override // com.appsflyer.internal.AFj1qSDK
    protected final void getCurrencyIso4217Code() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFj1uSDK(ExecutorService executorService, AFc1pSDK aFc1pSDK, Runnable runnable) {
        super("preload", "samsung", aFc1pSDK, runnable);
        Intrinsics.checkNotNullParameter(executorService, "");
        Intrinsics.checkNotNullParameter(aFc1pSDK, "");
        Intrinsics.checkNotNullParameter(runnable, "");
        this.getMediationNetwork = executorService;
    }

    @Override // com.appsflyer.internal.AFj1qSDK
    public final void getCurrencyIso4217Code(final Context context) {
        Intrinsics.checkNotNullParameter(context, "");
        if (getRevenue(context)) {
            this.getMediationNetwork.execute(new Runnable() { // from class: com.appsflyer.internal.AFj1uSDK$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AFj1uSDK.getMonetizationNetwork(AFj1uSDK.this, context);
                }
            });
        }
    }

    private final boolean getRevenue(Context context) {
        if (!getMediationNetwork()) {
            AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.SAMSUNG_PRELOAD_REFERRER, "Referrer collection disallowed by counter.", false, 4, null);
            return false;
        }
        if (AFAdRevenueData(context)) {
            return true;
        }
        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.SAMSUNG_PRELOAD_REFERRER, "Referrer collection disallowed by missing content provider.", false, 4, null);
        return false;
    }

    private static boolean C_(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("RESULT");
        if (columnIndex != -1) {
            return Boolean.parseBoolean(cursor.getString(columnIndex));
        }
        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.SAMSUNG_PRELOAD_REFERRER, "No such column", false, 4, null);
        return false;
    }

    private static boolean AFAdRevenueData(Context context) {
        return context.getPackageManager().resolveContentProvider("com.samsung.android.mapsagent.providers.apptracking", 0) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0122, code lost:
    
        if (r3 != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0124, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x010b, code lost:
    
        if (r3 != null) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0144 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void getMonetizationNetwork(com.appsflyer.internal.AFj1uSDK r11, android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1uSDK.getMonetizationNetwork(com.appsflyer.internal.AFj1uSDK, android.content.Context):void");
    }
}
