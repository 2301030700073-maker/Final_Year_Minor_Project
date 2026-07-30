package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.AFj1qSDK;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class AFf1wSDK extends AFe1eSDK<AFa1mSDK> {
    private int AFInAppEventParameterName;
    private int AFInAppEventType;
    private final CountDownLatch AFKeystoreWrapper;
    private int AFLogger;
    private final AFa1pSDK areAllFieldsValid;
    private final AFj1rSDK copy;
    private final AFa1rSDK copydefault;
    private final AFh1tSDK equals;
    private final AFc1eSDK hashCode;
    private final List<AFj1qSDK> registerClient;
    private final AFc1pSDK toString;

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final boolean AFAdRevenueData() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final boolean a_() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    public final /* bridge */ /* synthetic */ AppsFlyerRequestListener areAllFieldsValid() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final boolean copydefault() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFf1wSDK(AFa1pSDK aFa1pSDK, AFc1bSDK aFc1bSDK) {
        super(AFe1mSDK.DLSDK, new AFe1mSDK[]{AFe1mSDK.RC_CDN, AFe1mSDK.FETCH_ADVERTISING_ID}, aFc1bSDK, "DdlSdk");
        Intrinsics.checkNotNullParameter(aFa1pSDK, "");
        Intrinsics.checkNotNullParameter(aFc1bSDK, "");
        this.areAllFieldsValid = aFa1pSDK;
        this.AFKeystoreWrapper = new CountDownLatch(1);
        this.registerClient = new ArrayList();
        AFc1pSDK currencyIso4217Code = aFc1bSDK.getCurrencyIso4217Code();
        Intrinsics.checkNotNullExpressionValue(currencyIso4217Code, "");
        this.toString = currencyIso4217Code;
        AFc1eSDK afInfoLog = aFc1bSDK.afInfoLog();
        Intrinsics.checkNotNullExpressionValue(afInfoLog, "");
        this.hashCode = afInfoLog;
        AFa1rSDK i = aFc1bSDK.i();
        Intrinsics.checkNotNullExpressionValue(i, "");
        this.copydefault = i;
        AFh1tSDK component3 = aFc1bSDK.component3();
        Intrinsics.checkNotNullExpressionValue(component3, "");
        this.equals = component3;
        AFj1rSDK AFLogger = aFc1bSDK.AFLogger();
        Intrinsics.checkNotNullExpressionValue(AFLogger, "");
        this.copy = AFLogger;
        AFj1qSDK[] aFj1qSDKArr = (AFj1qSDK[]) AFLogger.getCurrencyIso4217Code.toArray(new AFj1qSDK[0]);
        Intrinsics.checkNotNullExpressionValue(aFj1qSDKArr, "");
        ArrayList arrayList = new ArrayList();
        for (AFj1qSDK aFj1qSDK : aFj1qSDKArr) {
            AFj1qSDK aFj1qSDK2 = aFj1qSDK;
            if (aFj1qSDK2 != null && aFj1qSDK2.areAllFieldsValid != AFj1qSDK.AFa1vSDK.NOT_STARTED) {
                arrayList.add(aFj1qSDK);
            }
        }
        ArrayList<AFj1qSDK> arrayList2 = arrayList;
        this.AFLogger = arrayList2.size();
        for (final AFj1qSDK aFj1qSDK3 : arrayList2) {
            AFj1qSDK.AFa1vSDK aFa1vSDK = aFj1qSDK3.areAllFieldsValid;
            int i2 = aFa1vSDK == null ? -1 : AFa1ySDK.getMonetizationNetwork[aFa1vSDK.ordinal()];
            if (i2 == 1) {
                AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, aFj1qSDK3.AFAdRevenueData.get("source") + " referrer collected earlier", false, 4, null);
                Intrinsics.checkNotNullExpressionValue(aFj1qSDK3, "");
                getMonetizationNetwork(aFj1qSDK3);
            } else if (i2 == 2) {
                aFj1qSDK3.addObserver(new Observer() { // from class: com.appsflyer.internal.AFf1wSDK$$ExternalSyntheticLambda0
                    @Override // java.util.Observer
                    public final void update(Observable observable, Object obj) {
                        AFf1wSDK.getRevenue(AFj1qSDK.this, this, observable, obj);
                    }
                });
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c0 A[Catch: Exception -> 0x0169, TryCatch #1 {Exception -> 0x0169, blocks: (B:6:0x0011, B:10:0x001d, B:12:0x002e, B:13:0x0073, B:19:0x0081, B:21:0x008c, B:22:0x0096, B:25:0x00c0, B:27:0x00d2, B:29:0x00e9, B:31:0x00ed, B:33:0x00f3, B:35:0x00f9, B:37:0x011c, B:38:0x0133, B:40:0x0139, B:42:0x014f, B:44:0x012e, B:45:0x0154, B:47:0x0046, B:48:0x005f), top: B:5:0x0011 }] */
    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFe1uSDK getMediationNetwork() {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1wSDK.getMediationNetwork():com.appsflyer.internal.AFe1uSDK");
    }

    private final void getMonetizationNetwork(AFj1qSDK aFj1qSDK) {
        if (AFAdRevenueData(aFj1qSDK)) {
            this.registerClient.add(aFj1qSDK);
            this.AFKeystoreWrapper.countDown();
            AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, "Added non-organic " + aFj1qSDK.getClass().getSimpleName(), false, 4, null);
            return;
        }
        int i = this.AFInAppEventParameterName + 1;
        this.AFInAppEventParameterName = i;
        if (i == this.AFLogger) {
            this.AFKeystoreWrapper.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getRevenue(AFj1qSDK aFj1qSDK, AFf1wSDK aFf1wSDK, Observable observable, Object obj) {
        Intrinsics.checkNotNullParameter(aFf1wSDK, "");
        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, aFj1qSDK.AFAdRevenueData.get("source") + " referrer collected via observer", false, 4, null);
        Intrinsics.checkNotNull(observable, "");
        aFf1wSDK.getMonetizationNetwork((AFj1qSDK) observable);
    }

    private final boolean copy() {
        Object obj = this.areAllFieldsValid.getCurrencyIso4217Code.get("referrers");
        List list = obj instanceof List ? (List) obj : null;
        return (list != null ? list.size() : 0) < this.AFLogger && !this.areAllFieldsValid.getCurrencyIso4217Code.containsKey("referrers");
    }

    private static boolean AFAdRevenueData(AFj1qSDK aFj1qSDK) {
        Object obj = aFj1qSDK.AFAdRevenueData.get("click_ts");
        Long l = obj instanceof Long ? (Long) obj : null;
        if (l != null) {
            if (System.currentTimeMillis() - TimeUnit.SECONDS.toMillis(l.longValue()) < TimeUnit.DAYS.toMillis(1L)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final long getCurrencyIso4217Code() {
        return this.copydefault.component2;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x016a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x011d A[SYNTHETIC] */
    @Override // com.appsflyer.internal.AFe1eSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.appsflyer.internal.AFd1jSDK<com.appsflyer.internal.AFa1mSDK> getRevenue(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1wSDK.getRevenue(java.lang.String):com.appsflyer.internal.AFd1jSDK");
    }

    private static Map<String, String> getCurrencyIso4217Code(AFb1mSDK aFb1mSDK) {
        String str;
        if (aFb1mSDK == null || (str = aFb1mSDK.getCurrencyIso4217Code) == null) {
            return null;
        }
        Intrinsics.checkNotNullExpressionValue(str, "");
        Boolean bool = aFb1mSDK.getRevenue;
        if (bool == null || !bool.booleanValue()) {
            return MapsKt.mapOf(TuplesKt.to("type", "unhashed"), TuplesKt.to("value", str));
        }
        return null;
    }

    public /* synthetic */ class AFa1ySDK {
        public static final /* synthetic */ int[] AFAdRevenueData;
        public static final /* synthetic */ int[] getMonetizationNetwork;

        static {
            int[] iArr = new int[AFe1uSDK.values().length];
            try {
                iArr[AFe1uSDK.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFe1uSDK.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            AFAdRevenueData = iArr;
            int[] iArr2 = new int[AFj1qSDK.AFa1vSDK.values().length];
            try {
                iArr2[AFj1qSDK.AFa1vSDK.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AFj1qSDK.AFa1vSDK.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            getMonetizationNetwork = iArr2;
        }
    }
}
