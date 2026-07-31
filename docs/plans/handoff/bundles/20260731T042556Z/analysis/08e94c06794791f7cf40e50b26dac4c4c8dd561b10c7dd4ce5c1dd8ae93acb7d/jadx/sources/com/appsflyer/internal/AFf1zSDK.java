package com.appsflyer.internal;

import com.appsflyer.AFPurchaseDetails;
import com.appsflyer.AFPurchaseType;
import com.appsflyer.AppsFlyerInAppPurchaseValidationCallback;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\b\u0007\u0018\u00002\u00020\u0001:\u0001*BK\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J/\u0010\u0014\u001a\u00020\u00132\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u0014\u0010\u0015JC\u0010\u0014\u001a\u000e\u0012\b\u0012\u0006*\u00020\t0\t\u0018\u00010\u00162\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0005\u001a\u00020\t2\b\u0010\u0007\u001a\u0004\u0018\u00010\tH\u0017¢\u0006\u0004\b\u0014\u0010\u0017J%\u0010\u0014\u001a\u00020\t2\u0014\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0015¢\u0006\u0004\b\u0014\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u001c\u0010\u001dR\"\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\b8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020\r8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u000b8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\u0014\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010)\u001a\u00020\u00068\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b'\u0010("}, d2 = {"Lcom/appsflyer/internal/AFf1zSDK;", "Lcom/appsflyer/internal/AFe1gSDK;", "Lcom/appsflyer/internal/AFc1bSDK;", "p0", "Lcom/appsflyer/AppsFlyerProperties;", "p1", "Lcom/appsflyer/AFPurchaseDetails;", "p2", "", "", "p3", "Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;", "p4", "Lcom/appsflyer/internal/AFj1jSDK;", "p5", "<init>", "(Lcom/appsflyer/internal/AFc1bSDK;Lcom/appsflyer/AppsFlyerProperties;Lcom/appsflyer/AFPurchaseDetails;Ljava/util/Map;Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;Lcom/appsflyer/internal/AFj1jSDK;)V", "", "", "", "getMediationNetwork", "(Ljava/util/Map;Ljava/lang/String;)V", "Lcom/appsflyer/internal/AFd1jSDK;", "(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1jSDK;", "(Ljava/util/Map;)Ljava/lang/String;", "", "getCurrencyIso4217Code", "(Ljava/lang/String;I)V", "getRevenue", "()V", "copydefault", "Ljava/util/Map;", "hashCode", "Lcom/appsflyer/internal/AFj1jSDK;", "AFAdRevenueData", "copy", "Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;", "areAllFieldsValid", "Lcom/appsflyer/AppsFlyerProperties;", InAppPurchaseConstants.METHOD_TO_STRING, "Lcom/appsflyer/AFPurchaseDetails;", "getMonetizationNetwork", "AFa1vSDK"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AFf1zSDK extends AFe1gSDK {

    /* renamed from: areAllFieldsValid, reason: from kotlin metadata */
    private final AppsFlyerProperties getMediationNetwork;

    /* renamed from: copy, reason: from kotlin metadata */
    private final AppsFlyerInAppPurchaseValidationCallback getRevenue;

    /* renamed from: copydefault, reason: from kotlin metadata */
    private final Map<String, String> getCurrencyIso4217Code;

    /* renamed from: hashCode, reason: from kotlin metadata */
    private final AFj1jSDK AFAdRevenueData;

    /* renamed from: toString, reason: from kotlin metadata */
    private final AFPurchaseDetails getMonetizationNetwork;

    public static final class AFa1vSDK extends RuntimeException {
    }

    public /* synthetic */ AFf1zSDK(AFc1bSDK aFc1bSDK, AppsFlyerProperties appsFlyerProperties, AFPurchaseDetails aFPurchaseDetails, Map map, AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback, AFj1gSDK aFj1gSDK, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(aFc1bSDK, appsFlyerProperties, aFPurchaseDetails, map, appsFlyerInAppPurchaseValidationCallback, (i & 32) != 0 ? new AFj1gSDK() : aFj1gSDK);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private AFf1zSDK(AFc1bSDK aFc1bSDK, AppsFlyerProperties appsFlyerProperties, AFPurchaseDetails aFPurchaseDetails, Map<String, String> map, AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback, AFj1jSDK aFj1jSDK) {
        super(AFe1mSDK.MANUAL_PURCHASE_VALIDATION, new AFe1mSDK[]{AFe1mSDK.RC_CDN, AFe1mSDK.FETCH_ADVERTISING_ID}, aFc1bSDK, null, MapsKt.emptyMap());
        Intrinsics.checkNotNullParameter(aFc1bSDK, "");
        Intrinsics.checkNotNullParameter(appsFlyerProperties, "");
        Intrinsics.checkNotNullParameter(aFPurchaseDetails, "");
        Intrinsics.checkNotNullParameter(aFj1jSDK, "");
        this.getMediationNetwork = appsFlyerProperties;
        this.getMonetizationNetwork = aFPurchaseDetails;
        this.getCurrencyIso4217Code = map;
        this.getRevenue = appsFlyerInAppPurchaseValidationCallback;
        this.AFAdRevenueData = aFj1jSDK;
        this.getRevenue.add(AFe1mSDK.CONVERSION);
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final void getRevenue() {
        Object m2098constructorimpl;
        Unit unit;
        super.getRevenue();
        Throwable component1 = component1();
        if (component1 != null && !(component1 instanceof AFe1iSDK)) {
            if (!(component1 instanceof AFe1pSDK)) {
                if (component1 instanceof AFa1vSDK) {
                    getCurrencyIso4217Code("One or more of provided arguments is empty", -1);
                } else {
                    getCurrencyIso4217Code("Error while sending request to server", -1);
                }
            } else {
                getCurrencyIso4217Code("No dev key", -1);
            }
        }
        ResponseNetwork responseNetwork = ((AFe1eSDK) this).component3;
        if (responseNetwork != null) {
            if (responseNetwork.getStatusCode() == 200) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    AFf1zSDK aFf1zSDK = this;
                    AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback = this.getRevenue;
                    if (appsFlyerInAppPurchaseValidationCallback != null) {
                        appsFlyerInAppPurchaseValidationCallback.onInAppPurchaseValidationFinished(AFj1cSDK.getRevenue(new JSONObject((String) responseNetwork.getBody())));
                        unit = Unit.INSTANCE;
                    } else {
                        unit = null;
                    }
                    m2098constructorimpl = Result.m2098constructorimpl(unit);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    m2098constructorimpl = Result.m2098constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m2101exceptionOrNullimpl(m2098constructorimpl) != null) {
                    getCurrencyIso4217Code("Error while trying to parse JSON response", responseNetwork.getStatusCode());
                }
                Result.m2097boximpl(m2098constructorimpl);
                return;
            }
            AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback2 = this.getRevenue;
            if (appsFlyerInAppPurchaseValidationCallback2 != null) {
                appsFlyerInAppPurchaseValidationCallback2.onInAppPurchaseValidationError(MapsKt.mapOf(TuplesKt.to("error_code", Integer.valueOf(responseNetwork.getStatusCode())), TuplesKt.to("error_message", responseNetwork.getBody())));
            }
        }
    }

    @Override // com.appsflyer.internal.AFe1gSDK
    protected final void getMediationNetwork(Map<String, Object> p0, String p1) {
        Map<String, Object> emptyMap;
        Intrinsics.checkNotNullParameter(p0, "");
        super.getMediationNetwork(p0, p1);
        List listOf = CollectionsKt.listOf((Object[]) new String[]{this.getMonetizationNetwork.getPurchaseToken(), this.getMonetizationNetwork.getProductId()});
        if (!(listOf instanceof Collection) || !listOf.isEmpty()) {
            Iterator it = listOf.iterator();
            while (it.hasNext()) {
                if (((String) it.next()).length() == 0) {
                    throw new AFa1vSDK();
                }
            }
        }
        p0.put("purchase_token", this.getMonetizationNetwork.getPurchaseToken());
        p0.put("product_id", this.getMonetizationNetwork.getProductId());
        p0.put("purchase_type", this.getMonetizationNetwork.getPurchaseType().getValue());
        Map<String, String> map = this.getCurrencyIso4217Code;
        if (map != null && !map.isEmpty()) {
            p0.put("purchase_additional_details", this.getCurrencyIso4217Code);
        }
        String string = this.getMediationNetwork.getString(AppsFlyerProperties.ADDITIONAL_CUSTOM_DATA);
        String str = string;
        if (str == null || str.length() == 0) {
            emptyMap = MapsKt.emptyMap();
        } else {
            emptyMap = AFj1cSDK.getRevenue(new JSONObject(string));
        }
        p0.put("custom_data", emptyMap);
    }

    @Override // com.appsflyer.internal.AFe1gSDK
    protected final String getMediationNetwork(Map<String, Object> p0) {
        Intrinsics.checkNotNullParameter(p0, "");
        return this.AFAdRevenueData.getRevenue();
    }

    private final void getCurrencyIso4217Code(String p0, int p1) {
        AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback = this.getRevenue;
        if (appsFlyerInAppPurchaseValidationCallback != null) {
            appsFlyerInAppPurchaseValidationCallback.onInAppPurchaseValidationError(MapsKt.mapOf(TuplesKt.to("error_code", Integer.valueOf(p1)), TuplesKt.to("error_message", p0)));
        }
    }

    @Override // com.appsflyer.internal.AFe1gSDK
    public final AFd1jSDK<String> getMediationNetwork(Map<String, Object> p0, String p1, String p2) {
        Intrinsics.checkNotNullParameter(p0, "");
        Intrinsics.checkNotNullParameter(p1, "");
        int i = AFa1tSDK.getMediationNetwork[this.getMonetizationNetwork.getPurchaseType().ordinal()];
        if (i == 1) {
            return ((AFe1eSDK) this).component1.getCurrencyIso4217Code(p0, p1);
        }
        if (i == 2) {
            return ((AFe1eSDK) this).component1.getRevenue(p0, p1);
        }
        throw new NoWhenBranchMatchedException();
    }

    public /* synthetic */ class AFa1tSDK {
        public static final /* synthetic */ int[] getMediationNetwork;

        static {
            int[] iArr = new int[AFPurchaseType.values().length];
            try {
                iArr[AFPurchaseType.SUBSCRIPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFPurchaseType.ONE_TIME_PURCHASE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            getMediationNetwork = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AFf1zSDK(AFc1bSDK aFc1bSDK, AppsFlyerProperties appsFlyerProperties, AFPurchaseDetails aFPurchaseDetails, Map<String, String> map, AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback) {
        this(aFc1bSDK, appsFlyerProperties, aFPurchaseDetails, map, appsFlyerInAppPurchaseValidationCallback, null, 32, null);
        Intrinsics.checkNotNullParameter(aFc1bSDK, "");
        Intrinsics.checkNotNullParameter(appsFlyerProperties, "");
        Intrinsics.checkNotNullParameter(aFPurchaseDetails, "");
    }
}
