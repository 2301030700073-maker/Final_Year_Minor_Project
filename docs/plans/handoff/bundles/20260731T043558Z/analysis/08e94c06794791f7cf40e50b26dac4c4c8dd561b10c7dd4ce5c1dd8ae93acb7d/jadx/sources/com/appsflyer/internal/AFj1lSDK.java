package com.appsflyer.internal;

import android.content.Context;
import android.database.Cursor;
import com.appsflyer.internal.AFj1qSDK;
import java.util.Map;

/* loaded from: classes2.dex */
public final class AFj1lSDK extends AFi1cSDK {
    private final AFc1bSDK getMediationNetwork;

    public AFj1lSDK(Runnable runnable, AFc1bSDK aFc1bSDK) {
        super("store", "samsung", runnable);
        this.getMediationNetwork = aFc1bSDK;
    }

    @Override // com.appsflyer.internal.AFj1qSDK
    public final void getCurrencyIso4217Code(Context context) {
        AFb1vSDK<Map<String, Object>> aFb1vSDK = new AFb1vSDK<Map<String, Object>>(context, this.getMediationNetwork.getMediationNetwork(), "com.sec.android.app.samsungapps.referrer", "FBA3AF4E7757D9016E953FB3EE4671CA2BD9AF725F9A53D52ED4A38EAAA08901") { // from class: com.appsflyer.internal.AFj1lSDK.2
            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Code restructure failed: missing block: B:15:0x00c1, code lost:
            
                if (r2 != null) goto L24;
             */
            /* JADX WARN: Code restructure failed: missing block: B:16:0x00dc, code lost:
            
                r0 = ((android.content.pm.PackageItemInfo) r10.getCurrencyIso4217Code.getPackageManager().resolveContentProvider(r10.getRevenue, 128)).packageName;
                r10.AFAdRevenueData.AFAdRevenueData.put("api_ver", java.lang.Long.valueOf(com.appsflyer.internal.AFj1iSDK.getCurrencyIso4217Code(r10.getCurrencyIso4217Code, r0)));
                r10.AFAdRevenueData.AFAdRevenueData.put("api_ver_name", com.appsflyer.internal.AFj1iSDK.getRevenue(r10.getCurrencyIso4217Code, r0));
                r10.AFAdRevenueData.getMonetizationNetwork();
             */
            /* JADX WARN: Code restructure failed: missing block: B:17:0x0117, code lost:
            
                return r10.AFAdRevenueData.AFAdRevenueData;
             */
            /* JADX WARN: Code restructure failed: missing block: B:19:0x00d9, code lost:
            
                r2.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:28:0x00d7, code lost:
            
                if (0 == 0) goto L25;
             */
            @Override // com.appsflyer.internal.AFb1vSDK
            /* renamed from: AFAdRevenueData, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.Map<java.lang.String, java.lang.Object> getCurrencyIso4217Code() {
                /*
                    Method dump skipped, instructions count: 286
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1lSDK.AnonymousClass2.getCurrencyIso4217Code():java.util.Map");
            }

            private static void D_(String str, Map<String, Object> map, Cursor cursor) {
                int columnIndex = cursor.getColumnIndex(str);
                if (columnIndex == -1) {
                    return;
                }
                long j = cursor.getLong(columnIndex);
                if (j == 0) {
                    return;
                }
                map.put(str, Long.valueOf(j));
            }

            private static void E_(String str, Map<String, Object> map, Cursor cursor) {
                String string;
                int columnIndex = cursor.getColumnIndex(str);
                if (columnIndex == -1 || (string = cursor.getString(columnIndex)) == null) {
                    return;
                }
                map.put(str, string);
            }
        };
        AFc1oSDK component2 = this.getMediationNetwork.component2();
        AFa1uSDK.getMonetizationNetwork();
        if (AFa1uSDK.getMonetizationNetwork(component2, false) > 0 || !aFb1vSDK.getMediationNetwork()) {
            return;
        }
        aFb1vSDK.getMediationNetwork.execute(aFb1vSDK.getMonetizationNetwork);
        this.component1 = System.currentTimeMillis();
        this.areAllFieldsValid = AFj1qSDK.AFa1vSDK.STARTED;
        addObserver(new AFj1qSDK.AnonymousClass1());
    }
}
