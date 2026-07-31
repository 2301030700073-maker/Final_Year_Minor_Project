package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFb1qSDK;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailability;
import com.propertyguru.webkit.IncognitoWebView;
import com.samsung.android.game.cloudgame.dev.sdk.CloudDevCallback;
import io.sentry.clientreport.DiscardedEvent;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002*+B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\nH\u0003¢\u0006\u0004\b\r\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\fJ\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u000b\u0010\u0012J\u001f\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\r\u0010\u0012J\u000f\u0010\u000b\u001a\u00020\u0013H\u0017¢\u0006\u0004\b\u000b\u0010\u0014J\u000f\u0010\u000e\u001a\u00020\u0015H\u0017¢\u0006\u0004\b\u000e\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0019\u0010\tJ\u001d\u0010\r\u001a\u00020\u001b*\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\r\u0010\u001cR\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0017\u001a\u00020\u001f8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\u000e\u001a\u00020\"8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\u0019\u001a\u00020\u00078CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\tR\u001b\u0010\u000b\u001a\u00020\u00078CX\u0083\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010%\u001a\u0004\b \u0010\tR\u0014\u0010'\u001a\u00020&8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0015\u0010\u001d\u001a\u00020\u00138BX\u0083\u0084\u0002¢\u0006\u0006\n\u0004\b)\u0010%"}, d2 = {"Lcom/appsflyer/internal/AFe1fSDK;", "Lcom/appsflyer/internal/AFe1lSDK;", "Lcom/appsflyer/internal/AFh1pSDK;", "Lcom/appsflyer/internal/AFc1bSDK;", "p0", "<init>", "(Lcom/appsflyer/internal/AFc1bSDK;)V", "", "copydefault", "()Z", "", "getCurrencyIso4217Code", "(I)Z", "getRevenue", "getMediationNetwork", "Landroid/content/Context;", "Lcom/appsflyer/internal/AFe1fSDK$AFa1tSDK;", "p1", "(Landroid/content/Context;Lcom/appsflyer/internal/AFe1fSDK$AFa1tSDK;)Z", "", "()J", "Lcom/appsflyer/internal/AFe1uSDK;", "()Lcom/appsflyer/internal/AFe1uSDK;", "getMonetizationNetwork", "(Landroid/content/Context;)I", "AFAdRevenueData", "", "", "(Lcom/appsflyer/internal/AFh1pSDK;Ljava/lang/String;)V", "areAllFieldsValid", "Lcom/appsflyer/internal/AFh1pSDK;", "Lcom/appsflyer/internal/AFc1gSDK;", "component2", "Lcom/appsflyer/internal/AFc1gSDK;", "Lcom/appsflyer/internal/AFc1pSDK;", "component3", "Lcom/appsflyer/internal/AFc1pSDK;", "Lkotlin/Lazy;", "Lcom/appsflyer/internal/AFc1eSDK;", "component1", "Lcom/appsflyer/internal/AFc1eSDK;", "component4", "AFa1vSDK", "AFa1tSDK"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AFe1fSDK extends AFe1lSDK<AFh1pSDK> {

    /* renamed from: areAllFieldsValid, reason: from kotlin metadata */
    private final AFh1pSDK getRevenue;
    private final AFc1eSDK component1;

    /* renamed from: component2, reason: from kotlin metadata */
    private final AFc1gSDK getMonetizationNetwork;

    /* renamed from: component3, reason: from kotlin metadata */
    private final AFc1pSDK getMediationNetwork;

    /* renamed from: component4, reason: from kotlin metadata */
    private final Lazy areAllFieldsValid;

    /* renamed from: copydefault, reason: from kotlin metadata */
    private final Lazy getCurrencyIso4217Code;

    @Override // com.appsflyer.internal.AFe1lSDK
    public final boolean AFAdRevenueData() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFe1fSDK(AFc1bSDK aFc1bSDK) {
        super(AFe1mSDK.FETCH_ADVERTISING_ID, new AFe1mSDK[0], "FetchAdvertisingIdTask");
        Intrinsics.checkNotNullParameter(aFc1bSDK, "");
        AFc1gSDK registerClient = aFc1bSDK.registerClient();
        Intrinsics.checkNotNullExpressionValue(registerClient, "");
        this.getMonetizationNetwork = registerClient;
        AFc1pSDK currencyIso4217Code = aFc1bSDK.getCurrencyIso4217Code();
        Intrinsics.checkNotNullExpressionValue(currencyIso4217Code, "");
        this.getMediationNetwork = currencyIso4217Code;
        AFc1eSDK afInfoLog = aFc1bSDK.afInfoLog();
        Intrinsics.checkNotNullExpressionValue(afInfoLog, "");
        this.component1 = afInfoLog;
        this.getRevenue = new AFh1pSDK(null, null, null, null, null, null, null, null, 255, null);
        this.areAllFieldsValid = LazyKt.lazy(new Function0<Long>() { // from class: com.appsflyer.internal.AFe1fSDK.4
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Long invoke() {
                Long longOrNull;
                String monetizationNetwork = AFe1fSDK.this.getMediationNetwork.getMonetizationNetwork("com.appsflyer.fetch_ids.timeout");
                return Long.valueOf((monetizationNetwork == null || (longOrNull = StringsKt.toLongOrNull(monetizationNetwork)) == null) ? 1000L : longOrNull.longValue());
            }
        });
        this.getCurrencyIso4217Code = LazyKt.lazy(new Function0<Boolean>() { // from class: com.appsflyer.internal.AFe1fSDK.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf(Boolean.parseBoolean(AFe1fSDK.this.getMediationNetwork.getMonetizationNetwork("com.appsflyer.enable_instant_plays")));
            }
        });
    }

    private final boolean component2() {
        return ((Boolean) this.getCurrencyIso4217Code.getValue()).booleanValue();
    }

    private static boolean areAllFieldsValid() {
        String str;
        try {
            Class.forName("com.samsung.android.game.cloudgame.dev.sdk.CloudDevSdk");
            return true;
        } catch (Throwable th) {
            if (th instanceof ClassNotFoundException) {
                str = "CloudDevSdk not found";
            } else {
                str = "Unexpected exception while checking if running in cloud environment: " + th.getMessage();
            }
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, str, th, true, false, false, false, 112, null);
            return false;
        }
    }

    @Override // com.appsflyer.internal.AFe1lSDK
    public final AFe1uSDK getMediationNetwork() {
        AFe1uSDK aFe1uSDK;
        if (this.component1.getRevenue()) {
            AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "QUEUE: Advertising ID collection is disabled. Skipping fetching... ", false, 4, null);
            return AFe1uSDK.FAILURE;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (CollectionsKt.listOf((Object[]) new Boolean[]{Boolean.valueOf(copydefault()), Boolean.FALSE, Boolean.FALSE}).contains(Boolean.TRUE)) {
            aFe1uSDK = AFe1uSDK.SUCCESS;
        } else {
            aFe1uSDK = AFe1uSDK.FAILURE;
        }
        AFc1eSDK aFc1eSDK = this.component1;
        AFd1aSDK aFd1aSDK = new AFd1aSDK(System.currentTimeMillis() - currentTimeMillis);
        AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "QUEUE: FetchAdvertisingIdTask: took " + aFd1aSDK.getRevenue + "ms", false, 4, null);
        aFc1eSDK.getMediationNetwork(aFd1aSDK);
        return aFe1uSDK;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b A[LOOP:0: B:2:0x0003->B:10:0x004b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004e A[EDGE_INSN: B:11:0x004e->B:12:0x004e BREAK  A[LOOP:0: B:2:0x0003->B:10:0x004b], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean copydefault() {
        /*
            r10 = this;
            r0 = 2
            r1 = 0
            r2 = r1
        L3:
            if (r0 <= 0) goto L4e
            boolean r2 = r10.component2()
            r3 = 1
            if (r2 == 0) goto L22
            boolean r2 = r10.getMediationNetwork(r0)
            if (r2 == 0) goto L22
            com.appsflyer.AFLogger r2 = com.appsflyer.AFLogger.INSTANCE
            r4 = r2
            com.appsflyer.internal.AFh1ySDK r4 = (com.appsflyer.internal.AFh1ySDK) r4
            com.appsflyer.internal.AFg1cSDK r5 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r8 = 4
            r9 = 0
            java.lang.String r6 = "GAID fetched using Samsung Cloud dev SDK"
            r7 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r4, r5, r6, r7, r8, r9)
            goto L37
        L22:
            boolean r2 = r10.getCurrencyIso4217Code(r0)
            if (r2 == 0) goto L39
            com.appsflyer.AFLogger r2 = com.appsflyer.AFLogger.INSTANCE
            r4 = r2
            com.appsflyer.internal.AFh1ySDK r4 = (com.appsflyer.internal.AFh1ySDK) r4
            com.appsflyer.internal.AFg1cSDK r5 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r8 = 4
            r9 = 0
            java.lang.String r6 = "GAID fetched using GMS"
            r7 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r4, r5, r6, r7, r8, r9)
        L37:
            r2 = r3
            goto L49
        L39:
            com.appsflyer.AFLogger r2 = com.appsflyer.AFLogger.INSTANCE
            r3 = r2
            com.appsflyer.internal.AFh1ySDK r3 = (com.appsflyer.internal.AFh1ySDK) r3
            com.appsflyer.internal.AFg1cSDK r4 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r7 = 4
            r8 = 0
            java.lang.String r5 = "Failed to fetch GAID"
            r6 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r3, r4, r5, r6, r7, r8)
            r2 = r1
        L49:
            if (r2 != 0) goto L4e
            int r0 = r0 + (-1)
            goto L3
        L4e:
            com.appsflyer.internal.AFc1eSDK r0 = r10.component1
            com.appsflyer.internal.AFh1pSDK r1 = r10.getRevenue
            r0.component2 = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1fSDK.copydefault():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x008c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean getCurrencyIso4217Code(int r15) {
        /*
            r14 = this;
            com.appsflyer.AFLogger r0 = com.appsflyer.AFLogger.INSTANCE
            r1 = r0
            com.appsflyer.internal.AFh1ySDK r1 = (com.appsflyer.internal.AFh1ySDK) r1
            com.appsflyer.internal.AFg1cSDK r2 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r5 = 4
            r6 = 0
            java.lang.String r3 = "Trying to fetch GAID..."
            r4 = 0
            com.appsflyer.internal.AFh1ySDK.i$default(r1, r2, r3, r4, r5, r6)
            com.appsflyer.internal.AFe1fSDK$AFa1tSDK r0 = new com.appsflyer.internal.AFe1fSDK$AFa1tSDK
            r12 = 15
            r13 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r7 = r0
            r7.<init>(r8, r9, r10, r11, r12, r13)
            com.appsflyer.internal.AFc1gSDK r1 = r14.getMonetizationNetwork
            android.content.Context r1 = r1.getRevenue
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            int r1 = getMonetizationNetwork(r1)
            com.appsflyer.internal.AFc1gSDK r2 = r14.getMonetizationNetwork
            android.content.Context r2 = r2.getRevenue
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            boolean r2 = r14.getRevenue(r2, r0)
            r3 = 0
            r4 = 1
            if (r2 != 0) goto L8d
            com.appsflyer.AppsFlyerProperties r2 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r5 = "enableGpsFallback"
            boolean r2 = r2.getBoolean(r5, r4)
            if (r2 == 0) goto L51
            com.appsflyer.internal.AFc1gSDK r2 = r14.getMonetizationNetwork
            android.content.Context r2 = r2.getRevenue
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            boolean r2 = r14.getCurrencyIso4217Code(r2, r0)
            if (r2 == 0) goto L51
            r2 = r4
            goto L52
        L51:
            r2 = r3
        L52:
            java.lang.StringBuilder r5 = r0.getGaidError()
            java.lang.String r5 = r5.toString()
            r6 = r5
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6
            if (r6 == 0) goto L85
            boolean r7 = kotlin.text.StringsKt.isBlank(r6)
            if (r7 == 0) goto L66
            goto L85
        L66:
            java.lang.CharSequence r5 = kotlin.text.StringsKt.trim(r6)
            java.lang.String r5 = r5.toString()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.StringBuilder r1 = r6.append(r1)
            java.lang.String r6 = ": "
            java.lang.StringBuilder r1 = r1.append(r6)
            java.lang.StringBuilder r1 = r1.append(r5)
            java.lang.String r5 = r1.toString()
        L85:
            com.appsflyer.internal.AFh1pSDK r1 = r14.getRevenue
            getRevenue(r1, r5)
            if (r2 != 0) goto L8d
            return r3
        L8d:
            com.appsflyer.internal.AFh1pSDK r1 = r14.getRevenue
            java.lang.String r2 = r0.getAdvertisingId()
            r1.getRevenue = r2
            java.lang.Boolean r2 = r0.isLimitAdTrackingEnabled()
            r1.component2 = r2
            java.lang.Boolean r2 = r0.isLimitAdTrackingEnabled()
            if (r2 == 0) goto Lab
            boolean r2 = r2.booleanValue()
            r2 = r2 ^ r4
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            goto Lac
        Lab:
            r2 = 0
        Lac:
            r1.getCurrencyIso4217Code = r2
            boolean r0 = r0.getAdvertisingIdWithGps()
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r1.getMediationNetwork = r0
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r1.AFAdRevenueData = r0
            r0 = 2
            if (r15 == r0) goto Lc0
            r3 = r4
        Lc0:
            java.lang.Boolean r15 = java.lang.Boolean.valueOf(r3)
            r1.component3 = r15
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1fSDK.getCurrencyIso4217Code(int):boolean");
    }

    private static int getMonetizationNetwork(Context p0) {
        try {
            return GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(p0);
        } catch (Throwable th) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "isGooglePlayServicesAvailable error", th, false, false, false, false, 96, null);
            return -1;
        }
    }

    private final boolean getCurrencyIso4217Code(Context p0, AFa1tSDK p1) throws IllegalStateException {
        try {
            AFb1qSDK.AFa1uSDK AFAdRevenueData = AFb1qSDK.AFAdRevenueData(p0);
            p1.setAdvertisingId(AFAdRevenueData.getCurrencyIso4217Code);
            p1.setLimitAdTrackingEnabled(Boolean.valueOf(AFAdRevenueData.getRevenue()));
            String advertisingId = p1.getAdvertisingId();
            if (advertisingId == null || advertisingId.length() == 0) {
                p1.getGaidError().append("emptyOrNull (bypass) |");
            }
            if (Unit.INSTANCE != null) {
                return true;
            }
            AFe1fSDK aFe1fSDK = this;
            p1.getGaidError().append("gpsAdInfo-null (bypass) |");
            throw new IllegalStateException("GpsAdInfo is null (bypass)".toString());
        } catch (Throwable th) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "Failed to fetch GAID: " + th.getMessage(), th, true, false, false, false, 64, null);
            p1.getGaidError().append(th.getClass().getSimpleName()).append(" |");
            String localizedMessage = th.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = th.toString();
            }
            AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, localizedMessage, false, 4, null);
            return false;
        }
    }

    private final boolean getRevenue(Context p0, AFa1tSDK p1) throws IllegalStateException {
        Unit unit;
        try {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(p0);
            if (advertisingIdInfo != null) {
                p1.setAdvertisingId(advertisingIdInfo.getId());
                p1.setLimitAdTrackingEnabled(Boolean.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled()));
                p1.setAdvertisingIdWithGps(true);
                String advertisingId = p1.getAdvertisingId();
                if (advertisingId == null || advertisingId.length() == 0) {
                    p1.getGaidError().append("emptyOrNull |");
                }
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit != null) {
                return true;
            }
            AFe1fSDK aFe1fSDK = this;
            p1.getGaidError().append("gpsAdInfo-null |");
            throw new IllegalStateException("GpsAdIndo is null".toString());
        } catch (Throwable th) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "Google Play Services is missing " + th.getMessage(), th, false, false, false, false, 88, null);
            p1.getGaidError().append(th.getClass().getSimpleName()).append(" |");
            AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "WARNING: Google Play Services is missing.", false, 4, null);
            return false;
        }
    }

    private final boolean getMediationNetwork(int p0) {
        return getRevenue(p0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x00dd, code lost:
    
        r0 = r11.getAdvertisingId();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00e3, code lost:
    
        if (r0 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00e9, code lost:
    
        if (r0.length() != 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00ec, code lost:
    
        r0 = r22.getRevenue;
        r0.getRevenue = r11.getAdvertisingId();
        r0.component2 = java.lang.Boolean.FALSE;
        r0.getCurrencyIso4217Code = java.lang.Boolean.TRUE;
        r0.getMediationNetwork = java.lang.Boolean.FALSE;
        r0.AFAdRevenueData = java.lang.Boolean.TRUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0107, code lost:
    
        if (r23 == 2) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0109, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x010a, code lost:
    
        r0.component3 = java.lang.Boolean.valueOf(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0110, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0111, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00da, code lost:
    
        if (r11.getGaidError().length() <= 0) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean getRevenue(int r23) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1fSDK.getRevenue(int):boolean");
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001c\u0010\u0006\u001a\u00020\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\bH\u0016¨\u0006\t"}, d2 = {"com/appsflyer/internal/components/queue/tasks/FetchAdvertisingIdTask$fetchGaidUsingSamsungSdk$1", "Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevCallback;", IncognitoWebView.EVENT_ON_ERROR, "", DiscardedEvent.JsonKeys.REASON, "", "onSuccess", "kinds", "", "SDK_prodRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AFa1uSDK implements CloudDevCallback {
        final /* synthetic */ AFa1tSDK $fetchGaidData;
        final /* synthetic */ CountDownLatch $latch;

        AFa1uSDK(AFa1tSDK aFa1tSDK, CountDownLatch countDownLatch) {
            this.$fetchGaidData = aFa1tSDK;
            this.$latch = countDownLatch;
        }

        public final void onError(String reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            AFh1ySDK.w$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "Could not fetch GAID using CloudDevSdk: " + reason, false, 4, null);
            this.$fetchGaidData.getGaidError().append(reason).append(" |");
            this.$latch.countDown();
        }

        public final void onSuccess(Map<String, String> kinds) {
            Intrinsics.checkNotNullParameter(kinds, "kinds");
            AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "CloudDevCallback received onSuccess", false, 4, null);
            this.$fetchGaidData.setAdvertisingId(kinds.get("gaid"));
            this.$latch.countDown();
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0010\b\u0082\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\f\b\u0002\u0010\t\u001a\u00060\u0007j\u0002`\b¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÇ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0004HÇ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0014\u0010\u0012\u001a\u00060\u0007j\u0002`\bHÇ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J@\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\f\b\u0002\u0010\t\u001a\u00060\u0007j\u0002`\bHÇ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u001c\u0010\rR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0007@\u0007X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\r\"\u0004\b\u001f\u0010 R\"\u0010\u0006\u001a\u00020\u00048\u0007@\u0007X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010!\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010$R\u001e\u0010\t\u001a\u00060\u0007j\u0002`\b8\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010%\u001a\u0004\b&\u0010\u0013R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0007@\u0007X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010'\u001a\u0004\b\u0005\u0010\u000f\"\u0004\b(\u0010)"}, d2 = {"Lcom/appsflyer/internal/AFe1fSDK$AFa1tSDK;", "", "", "advertisingId", "", "isLimitAdTrackingEnabled", "advertisingIdWithGps", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "gaidError", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/StringBuilder;)V", "component1", "()Ljava/lang/String;", "component2", "()Ljava/lang/Boolean;", "component3", "()Z", "component4", "()Ljava/lang/StringBuilder;", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/StringBuilder;)Lcom/appsflyer/internal/AFe1fSDK$AFa1tSDK;", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", InAppPurchaseConstants.METHOD_TO_STRING, "Ljava/lang/String;", "getAdvertisingId", "setAdvertisingId", "(Ljava/lang/String;)V", "Z", "getAdvertisingIdWithGps", "setAdvertisingIdWithGps", "(Z)V", "Ljava/lang/StringBuilder;", "getGaidError", "Ljava/lang/Boolean;", "setLimitAdTrackingEnabled", "(Ljava/lang/Boolean;)V"}, k = 1, mv = {1, 8, 0}, xi = 48)
    static final /* data */ class AFa1tSDK {
        private String advertisingId;
        private boolean advertisingIdWithGps;
        private final StringBuilder gaidError;
        private Boolean isLimitAdTrackingEnabled;

        public AFa1tSDK() {
            this(null, null, false, null, 15, null);
        }

        public static /* synthetic */ AFa1tSDK copy$default(AFa1tSDK aFa1tSDK, String str, Boolean bool, boolean z, StringBuilder sb, int i, Object obj) {
            if ((i & 1) != 0) {
                str = aFa1tSDK.advertisingId;
            }
            if ((i & 2) != 0) {
                bool = aFa1tSDK.isLimitAdTrackingEnabled;
            }
            if ((i & 4) != 0) {
                z = aFa1tSDK.advertisingIdWithGps;
            }
            if ((i & 8) != 0) {
                sb = aFa1tSDK.gaidError;
            }
            return aFa1tSDK.copy(str, bool, z, sb);
        }

        /* renamed from: component1, reason: from getter */
        public final String getAdvertisingId() {
            return this.advertisingId;
        }

        /* renamed from: component2, reason: from getter */
        public final Boolean getIsLimitAdTrackingEnabled() {
            return this.isLimitAdTrackingEnabled;
        }

        /* renamed from: component3, reason: from getter */
        public final boolean getAdvertisingIdWithGps() {
            return this.advertisingIdWithGps;
        }

        /* renamed from: component4, reason: from getter */
        public final StringBuilder getGaidError() {
            return this.gaidError;
        }

        public final AFa1tSDK copy(String advertisingId, Boolean isLimitAdTrackingEnabled, boolean advertisingIdWithGps, StringBuilder gaidError) {
            Intrinsics.checkNotNullParameter(gaidError, "gaidError");
            return new AFa1tSDK(advertisingId, isLimitAdTrackingEnabled, advertisingIdWithGps, gaidError);
        }

        public final boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AFa1tSDK)) {
                return false;
            }
            AFa1tSDK aFa1tSDK = (AFa1tSDK) other;
            return Intrinsics.areEqual(this.advertisingId, aFa1tSDK.advertisingId) && Intrinsics.areEqual(this.isLimitAdTrackingEnabled, aFa1tSDK.isLimitAdTrackingEnabled) && this.advertisingIdWithGps == aFa1tSDK.advertisingIdWithGps && Intrinsics.areEqual(this.gaidError, aFa1tSDK.gaidError);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            String str = this.advertisingId;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            Boolean bool = this.isLimitAdTrackingEnabled;
            int hashCode2 = (hashCode + (bool != null ? bool.hashCode() : 0)) * 31;
            boolean z = this.advertisingIdWithGps;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return ((hashCode2 + i) * 31) + this.gaidError.hashCode();
        }

        public final String toString() {
            return "FetchGaidData(advertisingId=" + this.advertisingId + ", isLimitAdTrackingEnabled=" + this.isLimitAdTrackingEnabled + ", advertisingIdWithGps=" + this.advertisingIdWithGps + ", gaidError=" + ((Object) this.gaidError) + ")";
        }

        public AFa1tSDK(String str, Boolean bool, boolean z, StringBuilder gaidError) {
            Intrinsics.checkNotNullParameter(gaidError, "gaidError");
            this.advertisingId = str;
            this.isLimitAdTrackingEnabled = bool;
            this.advertisingIdWithGps = z;
            this.gaidError = gaidError;
        }

        public final String getAdvertisingId() {
            return this.advertisingId;
        }

        public final void setAdvertisingId(String str) {
            this.advertisingId = str;
        }

        public final Boolean isLimitAdTrackingEnabled() {
            return this.isLimitAdTrackingEnabled;
        }

        public final void setLimitAdTrackingEnabled(Boolean bool) {
            this.isLimitAdTrackingEnabled = bool;
        }

        public final boolean getAdvertisingIdWithGps() {
            return this.advertisingIdWithGps;
        }

        public final void setAdvertisingIdWithGps(boolean z) {
            this.advertisingIdWithGps = z;
        }

        public /* synthetic */ AFa1tSDK(String str, Boolean bool, boolean z, StringBuilder sb, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? false : z, (i & 8) != 0 ? new StringBuilder() : sb);
        }

        public final StringBuilder getGaidError() {
            return this.gaidError;
        }
    }

    @Override // com.appsflyer.internal.AFe1lSDK
    public final long getCurrencyIso4217Code() {
        return ((Number) this.areAllFieldsValid.getValue()).longValue();
    }

    private static void getRevenue(AFh1pSDK aFh1pSDK, String str) {
        String str2;
        if (str == null) {
            return;
        }
        String str3 = aFh1pSDK.getMonetizationNetwork;
        if (str3 != null && (str2 = str3 + " | " + str) != null) {
            str = str2;
        }
        aFh1pSDK.getMonetizationNetwork = str;
    }
}
