package com.appsflyer.internal;

import com.appsflyer.attribution.AppsFlyerRequestListener;

/* loaded from: classes2.dex */
public class AFf1uSDK extends AFe1eSDK<String> {
    private static final AFe1mSDK[] AFLogger = {AFe1mSDK.DLSDK, AFe1mSDK.ONELINK, AFe1mSDK.REGISTER};
    private final AFf1gSDK AFInAppEventType;
    protected final AFc1oSDK areAllFieldsValid;
    protected final AFg1rSDK copy;
    private final AFe1ySDK copydefault;
    private final AFf1lSDK equals;
    private final AFc1pSDK hashCode;
    private final AFc1gSDK registerClient;
    private final AFh1jSDK toString;

    @Override // com.appsflyer.internal.AFe1eSDK
    protected boolean copydefault() {
        return true;
    }

    public AFf1uSDK(AFh1jSDK aFh1jSDK, AFc1bSDK aFc1bSDK) {
        this(aFh1jSDK, aFc1bSDK, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFf1uSDK(AFh1jSDK aFh1jSDK, AFc1bSDK aFc1bSDK, String str) {
        super(aFh1jSDK.getCurrencyIso4217Code(), new AFe1mSDK[]{AFe1mSDK.RC_CDN, AFe1mSDK.FETCH_ADVERTISING_ID}, aFc1bSDK, str);
        this.toString = aFh1jSDK;
        this.copydefault = aFc1bSDK.AFInAppEventParameterName();
        this.areAllFieldsValid = aFc1bSDK.component2();
        this.equals = aFc1bSDK.component1();
        this.registerClient = aFc1bSDK.registerClient();
        this.hashCode = aFc1bSDK.getCurrencyIso4217Code();
        this.copy = aFc1bSDK.component4();
        this.AFInAppEventType = aFc1bSDK.force();
        for (AFe1mSDK aFe1mSDK : AFLogger) {
            if (this.getCurrencyIso4217Code == aFe1mSDK) {
                return;
            }
        }
        int i = this.toString.component1;
        AFe1mSDK aFe1mSDK2 = this.getCurrencyIso4217Code;
        if (i <= 0) {
            if (aFe1mSDK2 != AFe1mSDK.CONVERSION) {
                this.getMediationNetwork.add(AFe1mSDK.CONVERSION);
                return;
            }
            return;
        }
        this.getRevenue.add(AFe1mSDK.CONVERSION);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0147  */
    @Override // com.appsflyer.internal.AFe1eSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.appsflyer.internal.AFd1jSDK<java.lang.String> getRevenue(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1uSDK.getRevenue(java.lang.String):com.appsflyer.internal.AFd1jSDK");
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final AppsFlyerRequestListener areAllFieldsValid() {
        return this.toString.getMonetizationNetwork;
    }

    protected void getRevenue(AFh1jSDK aFh1jSDK) {
        this.copy.getCurrencyIso4217Code(aFh1jSDK.getCurrencyIso4217Code);
    }

    protected void getCurrencyIso4217Code(AFh1jSDK aFh1jSDK) {
        this.copy.getCurrencyIso4217Code(aFh1jSDK);
    }

    protected void getMonetizationNetwork(AFh1jSDK aFh1jSDK) {
        this.copy.getMonetizationNetwork(aFh1jSDK);
    }

    protected void AFAdRevenueData(AFh1jSDK aFh1jSDK) {
        this.copy.getMediationNetwork(aFh1jSDK);
    }

    protected void areAllFieldsValid(AFh1jSDK aFh1jSDK) {
        this.copy.AFAdRevenueData(aFh1jSDK);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0098 A[Catch: all -> 0x0113, TryCatch #1 {all -> 0x0113, blocks: (B:3:0x001e, B:5:0x0024, B:7:0x0054, B:8:0x0059, B:10:0x005f, B:11:0x0068, B:13:0x0073, B:17:0x007f, B:20:0x0087, B:21:0x0092, B:23:0x0098, B:25:0x00b2, B:26:0x00b7, B:28:0x00cd, B:29:0x00d7, B:31:0x00dd, B:34:0x00e4, B:35:0x00ec, B:36:0x00b5, B:37:0x00ef, B:39:0x00f9, B:40:0x0107, B:48:0x0012, B:2:0x0000), top: B:1:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f9 A[Catch: all -> 0x0113, TryCatch #1 {all -> 0x0113, blocks: (B:3:0x001e, B:5:0x0024, B:7:0x0054, B:8:0x0059, B:10:0x005f, B:11:0x0068, B:13:0x0073, B:17:0x007f, B:20:0x0087, B:21:0x0092, B:23:0x0098, B:25:0x00b2, B:26:0x00b7, B:28:0x00cd, B:29:0x00d7, B:31:0x00dd, B:34:0x00e4, B:35:0x00ec, B:36:0x00b5, B:37:0x00ef, B:39:0x00f9, B:40:0x0107, B:48:0x0012, B:2:0x0000), top: B:1:0x0000, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void getMediationNetwork(com.appsflyer.internal.AFh1jSDK r9) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1uSDK.getMediationNetwork(com.appsflyer.internal.AFh1jSDK):void");
    }
}
