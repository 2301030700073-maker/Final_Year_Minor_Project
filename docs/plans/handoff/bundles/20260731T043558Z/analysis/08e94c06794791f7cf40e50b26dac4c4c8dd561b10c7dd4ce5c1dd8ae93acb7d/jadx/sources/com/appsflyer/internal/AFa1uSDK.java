package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.appcompat.app.AppCompatDelegate;
import com.appsflyer.AFAdRevenueData;
import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AFLogger;
import com.appsflyer.AFPurchaseDetails;
import com.appsflyer.AppsFlyerConsent;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerInAppPurchaseValidationCallback;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.PurchaseHandler;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.deeplink.DeepLinkResult;
import com.appsflyer.internal.AFa1uSDK;
import com.appsflyer.internal.AFb1aSDK;
import com.appsflyer.internal.AFd1xSDK;
import com.appsflyer.internal.AFe1nSDK.AnonymousClass3;
import com.appsflyer.internal.AFj1qSDK;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.appsflyer.internal.platform_extension.PluginInfo;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.GoogleApiAvailability;
import io.sentry.Session;
import io.sentry.protocol.Mechanism;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class AFa1uSDK extends AppsFlyerLib {
    private static int $10 = 0;
    private static int $11 = 1;
    public static final String AFAdRevenueData;
    private static char[] AFInAppEventParameterName = null;
    private static int AFInAppEventType = 0;
    private static int AFKeystoreWrapper = 0;
    private static boolean AFLogger = false;
    private static AFa1uSDK areAllFieldsValid = null;
    private static int d = 1;
    static AppsFlyerInAppPurchaseValidatorListener getCurrencyIso4217Code;
    public static final String getRevenue;
    private static boolean registerClient;
    Application component3;
    private volatile SharedPreferences copy;
    private Map<Long, String> copydefault;
    private AFf1nSDK equals;
    private boolean toString;
    public volatile AppsFlyerConversionListener getMediationNetwork = null;
    private long component4 = -1;
    long getMonetizationNetwork = -1;
    private long component2 = TimeUnit.SECONDS.toMillis(5);
    boolean component1 = false;
    private final AFc1dSDK hashCode = new AFc1dSDK();

    public static /* synthetic */ Object getRevenue(Object[] objArr, int i, int i2, int i3) {
        int i4 = (i * (-1335)) + (i2 * (-667));
        int i5 = ~i2;
        int i6 = i | i3;
        switch (i4 + (((~i6) | i5) * (-668)) + ((i | (~(i3 | i5))) * 1336) + ((i6 | i5) * 668)) {
            case 1:
                break;
            case 2:
                AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
                String[] strArr = (String[]) objArr[1];
                int i7 = 2 % 2;
                int i8 = AFKeystoreWrapper + 89;
                d = i8 % 128;
                int i9 = i8 % 2;
                aFa1uSDK.setSharingFilterForPartners(strArr);
                int i10 = AFKeystoreWrapper + 21;
                d = i10 % 128;
                int i11 = i10 % 2;
                break;
            case 3:
                boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
                int i12 = 2 % 2;
                int i13 = d + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
                AFKeystoreWrapper = i13 % 128;
                int i14 = i13 % 2;
                getCurrencyIso4217Code(AppsFlyerProperties.ENABLE_TCF_DATA_COLLECTION, Boolean.toString(booleanValue));
                int i15 = d + 105;
                AFKeystoreWrapper = i15 % 128;
                int i16 = i15 % 2;
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                AFa1uSDK aFa1uSDK2 = (AFa1uSDK) objArr[0];
                int intValue = ((Number) objArr[1]).intValue();
                int i17 = 2 % 2;
                int i18 = AFKeystoreWrapper + 61;
                d = i18 % 128;
                int i19 = i18 % 2;
                aFa1uSDK2.component2 = TimeUnit.SECONDS.toMillis(intValue);
                int i20 = d + 111;
                AFKeystoreWrapper = i20 % 128;
                int i21 = i20 % 2;
                break;
            case 7:
                break;
            case 8:
                break;
            case 9:
                break;
            case 10:
                AFa1uSDK aFa1uSDK3 = (AFa1uSDK) objArr[0];
                Context context = (Context) objArr[1];
                String str = (String) objArr[2];
                Map<String, Object> map = (Map) objArr[3];
                int i22 = 2 % 2;
                int i23 = AFKeystoreWrapper + 7;
                d = i23 % 128;
                int i24 = i23 % 2;
                aFa1uSDK3.logEvent(context, str, map, null);
                int i25 = AFKeystoreWrapper + 119;
                d = i25 % 128;
                int i26 = i25 % 2;
                break;
            case 11:
                break;
            case 12:
                boolean booleanValue2 = ((Boolean) objArr[1]).booleanValue();
                int i27 = 2 % 2;
                int i28 = d + 111;
                AFKeystoreWrapper = i28 % 128;
                int i29 = i28 % 2;
                AFLogger.afDebugLog("setDisableNetworkData: ".concat(String.valueOf(booleanValue2)));
                getRevenue(new Object[]{AppsFlyerProperties.DISABLE_NETWORK_DATA, Boolean.valueOf(booleanValue2)}, -222394073, 222394090, (int) System.currentTimeMillis());
                int i30 = AFKeystoreWrapper + 69;
                d = i30 % 128;
                int i31 = i30 % 2;
                break;
            case 13:
                break;
            case 14:
                break;
            case 15:
                break;
            case 16:
                AFa1uSDK aFa1uSDK4 = (AFa1uSDK) objArr[0];
                Context context2 = (Context) objArr[1];
                URI uri = (URI) objArr[2];
                int i32 = 2 % 2;
                int i33 = AFKeystoreWrapper + 37;
                int i34 = i33 % 128;
                d = i34;
                int i35 = i33 % 2;
                if (uri != null) {
                    int i36 = i34 + 1;
                    AFKeystoreWrapper = i36 % 128;
                    int i37 = i36 % 2;
                    if (!uri.toString().isEmpty()) {
                        if (context2 != null) {
                            aFa1uSDK4.getMediationNetwork(context2);
                            ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK4}, 389316487, -389316474, System.identityHashCode(aFa1uSDK4))).i().g_(AFa1gSDK.getMonetizationNetwork(((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK4}, 389316487, -389316474, System.identityHashCode(aFa1uSDK4))).afErrorLogForExcManagerOnly()), Uri.parse(uri.toString()));
                            break;
                        } else {
                            ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK4}, 389316487, -389316474, System.identityHashCode(aFa1uSDK4))).i().getMediationNetwork(new StringBuilder("Context is \"").append(context2).append("\"").toString(), DeepLinkResult.Error.NETWORK);
                            break;
                        }
                    }
                }
                ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK4}, 389316487, -389316474, System.identityHashCode(aFa1uSDK4))).i().getMediationNetwork(new StringBuilder("Link is \"").append(uri).append("\"").toString(), DeepLinkResult.Error.NETWORK);
                break;
            case 17:
                break;
            case 18:
                AFa1uSDK aFa1uSDK5 = (AFa1uSDK) objArr[0];
                int i38 = 2 % 2;
                int i39 = d + 47;
                AFKeystoreWrapper = i39 % 128;
                break;
            case 19:
                break;
            case 20:
                AFa1uSDK aFa1uSDK6 = (AFa1uSDK) objArr[0];
                int i40 = 2 % 2;
                ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK6}, 389316487, -389316474, System.identityHashCode(aFa1uSDK6))).afInfoLog().getRevenue = new AFb1uSDK((String[]) objArr[1]);
                int i41 = d + 31;
                AFKeystoreWrapper = i41 % 128;
                int i42 = i41 % 2;
                break;
            case 21:
                break;
            case 22:
                break;
            case 23:
                AFa1uSDK aFa1uSDK7 = (AFa1uSDK) objArr[0];
                Context context3 = (Context) objArr[1];
                String str2 = (String) objArr[2];
                aFa1uSDK7.getMediationNetwork(context3);
                AFg1tSDK aFg1tSDK = new AFg1tSDK(context3);
                if (str2 != null && !str2.trim().isEmpty()) {
                    AFLogger.INSTANCE.i(AFg1cSDK.UNINSTALL, "Firebase Refreshed Token = ".concat(String.valueOf(str2)));
                    AFf1aSDK revenue = aFg1tSDK.getRevenue();
                    if (revenue == null || !str2.equals(revenue.getMonetizationNetwork)) {
                        long currentTimeMillis = System.currentTimeMillis();
                        boolean z = revenue == null || currentTimeMillis - revenue.getCurrencyIso4217Code > TimeUnit.SECONDS.toMillis(2L);
                        AFf1aSDK aFf1aSDK = new AFf1aSDK(str2, currentTimeMillis, !z);
                        aFg1tSDK.getMonetizationNetwork.AFAdRevenueData("afUninstallToken", aFf1aSDK.getMonetizationNetwork);
                        aFg1tSDK.getMonetizationNetwork.getRevenue("afUninstallToken_received_time", aFf1aSDK.getCurrencyIso4217Code);
                        aFg1tSDK.getMonetizationNetwork.getCurrencyIso4217Code("afUninstallToken_queued", aFf1aSDK.getMediationNetwork);
                        if (z) {
                            AFa1uSDK monetizationNetwork = getMonetizationNetwork();
                            AFc1bSDK aFc1bSDK = (AFc1bSDK) getRevenue(new Object[]{monetizationNetwork}, 389316487, -389316474, System.identityHashCode(monetizationNetwork));
                            AFf1pSDK aFf1pSDK = new AFf1pSDK(str2, aFc1bSDK);
                            AFe1nSDK copydefault = aFc1bSDK.copydefault();
                            copydefault.AFAdRevenueData.execute(copydefault.new AnonymousClass3(aFf1pSDK));
                            break;
                        }
                    }
                } else {
                    AFLogger.INSTANCE.w(AFg1cSDK.UNINSTALL, "Firebase Token is either empty or null and was not registered.");
                    break;
                }
                break;
            case 24:
                AFa1uSDK aFa1uSDK8 = (AFa1uSDK) objArr[0];
                Context context4 = (Context) objArr[1];
                Map<String, Object> map2 = (Map) objArr[2];
                PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback = (PurchaseHandler.PurchaseValidationCallback) objArr[3];
                int i43 = 2 % 2;
                int i44 = d + 5;
                AFKeystoreWrapper = i44 % 128;
                int i45 = i44 % 2;
                aFa1uSDK8.getMediationNetwork(context4);
                PurchaseHandler areAllFieldsValid2 = ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK8}, 389316487, -389316474, System.identityHashCode(aFa1uSDK8))).areAllFieldsValid();
                if (areAllFieldsValid2.getMonetizationNetwork(map2, purchaseValidationCallback, "purchases")) {
                    AFe1bSDK aFe1bSDK = new AFe1bSDK(map2, purchaseValidationCallback, areAllFieldsValid2.AFAdRevenueData);
                    AFe1nSDK aFe1nSDK = areAllFieldsValid2.getCurrencyIso4217Code;
                    aFe1nSDK.AFAdRevenueData.execute(aFe1nSDK.new AnonymousClass3(aFe1bSDK));
                }
                int i46 = d + 65;
                AFKeystoreWrapper = i46 % 128;
                int i47 = i46 % 2;
                break;
            default:
                AFa1uSDK aFa1uSDK9 = (AFa1uSDK) objArr[0];
                boolean booleanValue3 = ((Boolean) objArr[1]).booleanValue();
                int i48 = 2 % 2;
                int i49 = AFKeystoreWrapper + 57;
                d = i49 % 128;
                if (i49 % 2 == 0) {
                    AFd1mSDK equals = ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK9}, 389316487, -389316474, System.identityHashCode(aFa1uSDK9))).equals();
                    String[] strArr2 = new String[1];
                    strArr2[1] = String.valueOf(booleanValue3);
                    equals.getCurrencyIso4217Code("setCollectAndroidID", strArr2);
                } else {
                    ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK9}, 389316487, -389316474, System.identityHashCode(aFa1uSDK9))).equals().getCurrencyIso4217Code("setCollectAndroidID", String.valueOf(booleanValue3));
                }
                getCurrencyIso4217Code(AppsFlyerProperties.COLLECT_ANDROID_ID, Boolean.toString(booleanValue3));
                getCurrencyIso4217Code(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, Boolean.toString(booleanValue3));
                break;
        }
        return null;
    }

    static {
        component3();
        getRevenue = "356";
        AFAdRevenueData = "6.17.3".substring(0, "6.17.3".lastIndexOf("."));
        getCurrencyIso4217Code = null;
        areAllFieldsValid = new AFa1uSDK();
        int i = d + 61;
        AFKeystoreWrapper = i % 128;
        if (i % 2 != 0) {
            int i2 = 48 / 0;
        }
    }

    private static void a(String str, String str2, int[] iArr, int i, Object[] objArr) {
        char[] cArr;
        int i2 = 2 % 2;
        byte[] bArr = str2;
        if (str2 != null) {
            bArr = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr2 = bArr;
        char[] cArr2 = str;
        if (str != null) {
            int i3 = $10 + 117;
            $11 = i3 % 128;
            if (i3 % 2 == 0) {
                str.toCharArray();
                throw null;
            }
            cArr2 = str.toCharArray();
        }
        char[] cArr3 = cArr2;
        AFk1iSDK aFk1iSDK = new AFk1iSDK();
        char[] cArr4 = AFInAppEventParameterName;
        if (cArr4 != null) {
            int length = cArr4.length;
            char[] cArr5 = new char[length];
            for (int i4 = 0; i4 < length; i4++) {
                cArr5[i4] = (char) (cArr4[i4] ^ 1825820251896122634L);
            }
            cArr4 = cArr5;
        }
        int i5 = (int) (1825820251896122634L ^ AFInAppEventType);
        if (AFLogger) {
            int i6 = $11 + 21;
            $10 = i6 % 128;
            if (i6 % 2 != 0) {
                aFk1iSDK.getCurrencyIso4217Code = bArr2.length;
                cArr = new char[aFk1iSDK.getCurrencyIso4217Code];
                aFk1iSDK.getMediationNetwork = 1;
            } else {
                aFk1iSDK.getCurrencyIso4217Code = bArr2.length;
                cArr = new char[aFk1iSDK.getCurrencyIso4217Code];
                aFk1iSDK.getMediationNetwork = 0;
            }
            while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
                cArr[aFk1iSDK.getMediationNetwork] = (char) (cArr4[bArr2[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] + i] - i5);
                aFk1iSDK.getMediationNetwork++;
            }
            objArr[0] = new String(cArr);
            return;
        }
        if (!registerClient) {
            aFk1iSDK.getCurrencyIso4217Code = iArr.length;
            char[] cArr6 = new char[aFk1iSDK.getCurrencyIso4217Code];
            aFk1iSDK.getMediationNetwork = 0;
            while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
                cArr6[aFk1iSDK.getMediationNetwork] = (char) (cArr4[iArr[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] - i] - i5);
                aFk1iSDK.getMediationNetwork++;
            }
            objArr[0] = new String(cArr6);
            return;
        }
        aFk1iSDK.getCurrencyIso4217Code = cArr3.length;
        char[] cArr7 = new char[aFk1iSDK.getCurrencyIso4217Code];
        aFk1iSDK.getMediationNetwork = 0;
        int i7 = $10 + 121;
        $11 = i7 % 128;
        while (true) {
            int i8 = i7 % 2;
            if (aFk1iSDK.getMediationNetwork >= aFk1iSDK.getCurrencyIso4217Code) {
                objArr[0] = new String(cArr7);
                return;
            }
            int i9 = $10 + 115;
            $11 = i9 % 128;
            int i10 = i9 % 2;
            cArr7[aFk1iSDK.getMediationNetwork] = (char) (cArr4[cArr3[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] - i] - i5);
            aFk1iSDK.getMediationNetwork++;
            i7 = $10 + 115;
            $11 = i7 % 128;
        }
    }

    private static /* synthetic */ Object component2(Object[] objArr) {
        AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
        int i = 2 % 2;
        int i2 = d + 45;
        int i3 = i2 % 128;
        AFKeystoreWrapper = i3;
        int i4 = i2 % 2;
        AFc1dSDK aFc1dSDK = aFa1uSDK.hashCode;
        int i5 = i3 + 73;
        d = i5 % 128;
        if (i5 % 2 == 0) {
            int i6 = 82 / 0;
        }
        return aFc1dSDK;
    }

    public final void getMediationNetwork(Context context) {
        int i = 2 % 2;
        int i2 = d + 37;
        int i3 = i2 % 128;
        AFKeystoreWrapper = i3;
        int i4 = i2 % 2;
        AFc1dSDK aFc1dSDK = this.hashCode;
        if (context != null) {
            int i5 = i3 + 25;
            d = i5 % 128;
            Object obj = null;
            if (i5 % 2 == 0) {
                AFc1gSDK aFc1gSDK = aFc1dSDK.getMonetizationNetwork;
                throw null;
            }
            AFc1gSDK aFc1gSDK2 = aFc1dSDK.getMonetizationNetwork;
            if (context != null) {
                int i6 = AFKeystoreWrapper + 3;
                d = i6 % 128;
                if (i6 % 2 != 0) {
                    aFc1gSDK2.getRevenue = context.getApplicationContext();
                } else {
                    aFc1gSDK2.getRevenue = context.getApplicationContext();
                    obj.hashCode();
                    throw null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AFAdRevenueData(AFf1oSDK aFf1oSDK) {
        int i = 2 % 2;
        int i2 = d + 61;
        AFKeystoreWrapper = i2 % 128;
        Object obj = null;
        if (i2 % 2 == 0) {
            AFc1bSDK aFc1bSDK = (AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this));
            if (aFf1oSDK == AFf1oSDK.SUCCESS) {
                int i3 = AFKeystoreWrapper + 103;
                d = i3 % 128;
                if (i3 % 2 != 0) {
                    aFc1bSDK.afWarnLog().getRevenue();
                } else {
                    aFc1bSDK.afWarnLog().getRevenue();
                    obj.hashCode();
                    throw null;
                }
            }
            if (!aFc1bSDK.equals().getCurrencyIso4217Code()) {
                int i4 = AFKeystoreWrapper + 77;
                d = i4 % 128;
                int i5 = i4 % 2;
                aFc1bSDK.afErrorLog().AFAdRevenueData();
                return;
            }
            aFc1bSDK.afErrorLog().getMediationNetwork();
            return;
        }
        AFf1oSDK aFf1oSDK2 = AFf1oSDK.SUCCESS;
        obj.hashCode();
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
    
        if (r4.equals == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001e, code lost:
    
        r2 = r2 + 123;
        com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r2 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0025, code lost:
    
        if ((r2 % 2) != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0027, code lost:
    
        r4.equals = new com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda1(r4);
        r0 = 2 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0030, code lost:
    
        r4.equals = new com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda1(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0038, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x001c, code lost:
    
        if (r4.equals == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final synchronized com.appsflyer.internal.AFf1nSDK AFAdRevenueData() {
        /*
            r4 = this;
            monitor-enter(r4)
            r0 = 2
            int r1 = r0 % r0
            int r1 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper     // Catch: java.lang.Throwable -> L3f
            int r1 = r1 + 83
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1uSDK.d = r2     // Catch: java.lang.Throwable -> L3f
            int r1 = r1 % r0
            if (r1 != 0) goto L1a
            com.appsflyer.internal.AFf1nSDK r1 = r4.equals     // Catch: java.lang.Throwable -> L3f
            r3 = 14
            int r3 = r3 / 0
            if (r1 != 0) goto L3b
            goto L1e
        L18:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L3f
        L1a:
            com.appsflyer.internal.AFf1nSDK r1 = r4.equals     // Catch: java.lang.Throwable -> L3f
            if (r1 != 0) goto L3b
        L1e:
            int r2 = r2 + 123
            int r1 = r2 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r1     // Catch: java.lang.Throwable -> L3f
            int r2 = r2 % r0
            if (r2 != 0) goto L30
            com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda1 r1 = new com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda1     // Catch: java.lang.Throwable -> L3f
            r1.<init>()     // Catch: java.lang.Throwable -> L3f
            r4.equals = r1     // Catch: java.lang.Throwable -> L3f
            int r0 = r0 % r0
            goto L3b
        L30:
            com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda1 r0 = new com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda1     // Catch: java.lang.Throwable -> L3f
            r0.<init>()     // Catch: java.lang.Throwable -> L3f
            r4.equals = r0     // Catch: java.lang.Throwable -> L3f
            r0 = 0
            throw r0     // Catch: java.lang.Throwable -> L39
        L39:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L3f
        L3b:
            com.appsflyer.internal.AFf1nSDK r0 = r4.equals     // Catch: java.lang.Throwable -> L3f
            monitor-exit(r4)
            return r0
        L3f:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L3f
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.AFAdRevenueData():com.appsflyer.internal.AFf1nSDK");
    }

    public AFa1uSDK() {
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afErrorLog().getMediationNetwork();
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afErrorLog().getRevenue();
        AFe1nSDK copydefault = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).copydefault();
        copydefault.getMonetizationNetwork.add(new C0007AFa1uSDK());
    }

    public static AFa1uSDK getMonetizationNetwork() {
        int i = 2 % 2;
        int i2 = d + 87;
        int i3 = i2 % 128;
        AFKeystoreWrapper = i3;
        int i4 = i2 % 2;
        AFa1uSDK aFa1uSDK = areAllFieldsValid;
        int i5 = i3 + 85;
        d = i5 % 128;
        int i6 = i5 % 2;
        return aFa1uSDK;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setSharingFilterForAllPartners() {
        int i = 2 % 2;
        int i2 = d + 113;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        setSharingFilterForPartners("all");
        int i4 = AFKeystoreWrapper + 57;
        d = i4 % 128;
        if (i4 % 2 != 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendPurchaseData(Context context, Map<String, Object> map, PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        int i = 2 % 2;
        int i2 = d + 65;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        getMediationNetwork(context);
        PurchaseHandler areAllFieldsValid2 = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).areAllFieldsValid();
        if (areAllFieldsValid2.getMonetizationNetwork(map, purchaseValidationCallback, "subscriptions")) {
            AFe1jSDK aFe1jSDK = new AFe1jSDK(map, purchaseValidationCallback, areAllFieldsValid2.AFAdRevenueData);
            AFe1nSDK aFe1nSDK = areAllFieldsValid2.getCurrencyIso4217Code;
            aFe1nSDK.AFAdRevenueData.execute(aFe1nSDK.new AnonymousClass3(aFe1jSDK));
            int i4 = AFKeystoreWrapper + 91;
            d = i4 % 128;
            int i5 = i4 % 2;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void appendParametersToDeepLinkingURL(String str, Map<String, String> map) {
        int i = 2 % 2;
        int i2 = d + 45;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 == 0) {
            AFa1rSDK i3 = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i();
            i3.getMonetizationNetwork = str;
            i3.getMediationNetwork = map;
            int i4 = AFKeystoreWrapper + 99;
            d = i4 % 128;
            int i5 = i4 % 2;
            return;
        }
        AFa1rSDK i6 = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i();
        i6.getMonetizationNetwork = str;
        i6.getMediationNetwork = map;
        throw null;
    }

    private static /* synthetic */ Object component3(Object[] objArr) {
        AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
        DeepLinkListener deepLinkListener = (DeepLinkListener) objArr[1];
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 59;
        d = i2 % 128;
        int i3 = i2 % 2;
        aFa1uSDK.subscribeForDeepLink(deepLinkListener, TimeUnit.SECONDS.toMillis(3L));
        int i4 = AFKeystoreWrapper + 11;
        d = i4 % 128;
        if (i4 % 2 != 0) {
            return null;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void subscribeForDeepLink(DeepLinkListener deepLinkListener, long j) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 61;
        d = i2 % 128;
        if (i2 % 2 == 0) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i().getRevenue = deepLinkListener;
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i().component2 = j;
            int i3 = 45 / 0;
        } else {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i().getRevenue = deepLinkListener;
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i().component2 = j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object hashCode(java.lang.Object[] r10) {
        /*
            r0 = 0
            r1 = r10[r0]
            com.appsflyer.internal.AFa1uSDK r1 = (com.appsflyer.internal.AFa1uSDK) r1
            r2 = 1
            r3 = r10[r2]
            android.content.Context r3 = (android.content.Context) r3
            r4 = 2
            r10 = r10[r4]
            android.content.Intent r10 = (android.content.Intent) r10
            int r5 = r4 % r4
            r1.getMediationNetwork(r3)
            java.lang.Object[] r5 = new java.lang.Object[]{r1}
            int r6 = java.lang.System.identityHashCode(r1)
            r7 = 389316487(0x17347f87, float:5.83221E-25)
            r8 = -389316474(0xffffffffe8cb8086, float:-7.68809E24)
            java.lang.Object r5 = getRevenue(r5, r7, r8, r6)
            com.appsflyer.internal.AFc1bSDK r5 = (com.appsflyer.internal.AFc1bSDK) r5
            com.appsflyer.internal.AFa1rSDK r5 = r5.i()
            java.lang.Object[] r6 = new java.lang.Object[]{r1}
            int r1 = java.lang.System.identityHashCode(r1)
            java.lang.Object r1 = getRevenue(r6, r7, r8, r1)
            com.appsflyer.internal.AFc1bSDK r1 = (com.appsflyer.internal.AFc1bSDK) r1
            com.appsflyer.internal.AFc1oSDK r1 = r1.component2()
            r6 = 0
            if (r10 == 0) goto L65
            int r7 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r7 = r7 + 35
            int r8 = r7 % 128
            com.appsflyer.internal.AFa1uSDK.d = r8
            int r7 = r7 % r4
            java.lang.String r8 = "android.intent.action.VIEW"
            if (r7 == 0) goto L5d
            java.lang.String r7 = r10.getAction()
            boolean r7 = r8.equals(r7)
            if (r7 == 0) goto L65
            android.net.Uri r7 = r10.getData()
            goto L66
        L5d:
            java.lang.String r10 = r10.getAction()
            r8.equals(r10)
            throw r6
        L65:
            r7 = r6
        L66:
            if (r7 == 0) goto L90
            int r8 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r8 = r8 + 7
            int r9 = r8 % 128
            com.appsflyer.internal.AFa1uSDK.d = r9
            int r8 = r8 % r4
            if (r8 == 0) goto L88
            java.lang.String r7 = r7.toString()
            boolean r7 = r7.isEmpty()
            if (r7 != 0) goto L90
            int r7 = com.appsflyer.internal.AFa1uSDK.d
            int r7 = r7 + 93
            int r8 = r7 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r8
            int r7 = r7 % r4
            r7 = r2
            goto L91
        L88:
            java.lang.String r10 = r7.toString()
            r10.isEmpty()
            throw r6
        L90:
            r7 = r0
        L91:
            java.lang.String r8 = "ddl_sent"
            boolean r1 = r1.getMediationNetwork(r8, r0)
            if (r1 == 0) goto Lb6
            r1 = r7 ^ 1
            if (r1 == r2) goto L9e
            goto Lb6
        L9e:
            int r10 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r10 = r10 + 93
            int r1 = r10 % 128
            com.appsflyer.internal.AFa1uSDK.d = r1
            int r10 = r10 % r4
            java.lang.String r1 = "No direct deep link"
            if (r10 != 0) goto Lb2
            r5.getMediationNetwork(r1, r6)
            r10 = 37
            int r10 = r10 / r0
            goto Lb5
        Lb2:
            r5.getMediationNetwork(r1, r6)
        Lb5:
            return r6
        Lb6:
            com.appsflyer.internal.AFc1bSDK r0 = r5.component1
            com.appsflyer.internal.AFa1hSDK r0 = r0.afErrorLogForExcManagerOnly()
            com.appsflyer.internal.AFa1gSDK r0 = com.appsflyer.internal.AFa1gSDK.getMonetizationNetwork(r0)
            r5.f_(r0, r10, r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.hashCode(java.lang.Object[]):java.lang.Object");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void performOnDeepLinking(final Intent intent, Context context) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 45;
        int i3 = i2 % 128;
        d = i3;
        int i4 = i2 % 2;
        Object obj = null;
        if (intent == null) {
            int i5 = i3 + 71;
            AFKeystoreWrapper = i5 % 128;
            if (i5 % 2 == 0) {
                ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i().getMediationNetwork("performOnDeepLinking was called with null intent", DeepLinkResult.Error.DEVELOPER_ERROR);
                return;
            } else {
                ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i().getMediationNetwork("performOnDeepLinking was called with null intent", DeepLinkResult.Error.DEVELOPER_ERROR);
                obj.hashCode();
                throw null;
            }
        }
        if (context == null) {
            int i6 = i3 + 123;
            AFKeystoreWrapper = i6 % 128;
            if (i6 % 2 != 0) {
                ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i().getMediationNetwork("performOnDeepLinking was called with null context", DeepLinkResult.Error.DEVELOPER_ERROR);
                int i7 = 4 / 0;
                return;
            } else {
                ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i().getMediationNetwork("performOnDeepLinking was called with null context", DeepLinkResult.Error.DEVELOPER_ERROR);
                return;
            }
        }
        final Context applicationContext = context.getApplicationContext();
        getMediationNetwork(applicationContext);
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).getMediationNetwork().execute(new Runnable() { // from class: com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                AFa1uSDK.this.e_(applicationContext, intent);
            }
        });
        int i8 = d + 97;
        AFKeystoreWrapper = i8 % 128;
        if (i8 % 2 != 0) {
            throw null;
        }
    }

    private static /* synthetic */ Object areAllFieldsValid(Object[] objArr) {
        AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
        String[] strArr = (String[]) objArr[1];
        int i = 2 % 2;
        int i2 = d + 47;
        AFKeystoreWrapper = i2 % 128;
        Object obj = null;
        if (i2 % 2 == 0) {
            List<String> asList = Arrays.asList(strArr);
            List<List<String>> list = ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).i().AFAdRevenueData;
            if (!list.contains(asList)) {
                list.add(asList);
                int i3 = AFKeystoreWrapper + 71;
                d = i3 % 128;
                int i4 = i3 % 2;
            }
            return null;
        }
        ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).i().AFAdRevenueData.contains(Arrays.asList(strArr));
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPartnerData(String str, Map<String, Object> map) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 9;
        d = i2 % 128;
        int i3 = i2 % 2;
        AFc1eSDK afInfoLog = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afInfoLog();
        if (afInfoLog.getCurrencyIso4217Code == null) {
            afInfoLog.getCurrencyIso4217Code = new AFb1rSDK();
        }
        AFb1rSDK aFb1rSDK = afInfoLog.getCurrencyIso4217Code;
        if (str != null) {
            int i4 = d + 53;
            AFKeystoreWrapper = i4 % 128;
            int i5 = i4 % 2;
            if (!str.isEmpty()) {
                Object obj = null;
                if (map != null) {
                    int i6 = d + 5;
                    AFKeystoreWrapper = i6 % 128;
                    if (i6 % 2 != 0) {
                        map.isEmpty();
                        throw null;
                    }
                    if (!map.isEmpty()) {
                        AFLogger.afDebugLog(new StringBuilder("Setting partner data for ").append(str).append(": ").append(map).toString());
                        int length = new JSONObject(map).toString().length();
                        if (length <= 1000) {
                            aFb1rSDK.getRevenue.put(str, map);
                            aFb1rSDK.getCurrencyIso4217Code.remove(str);
                            return;
                        } else {
                            AFLogger.afWarnLog("Partner data 1000 characters limit exceeded");
                            HashMap hashMap = new HashMap();
                            hashMap.put("error", "limit exceeded: ".concat(String.valueOf(length)));
                            aFb1rSDK.getCurrencyIso4217Code.put(str, hashMap);
                            return;
                        }
                    }
                }
                AFLogger.afWarnLog(aFb1rSDK.getRevenue.remove(str) == null ? "Partner data is missing or `null`" : "Cleared partner data for ".concat(String.valueOf(str)));
                int i7 = d + 65;
                AFKeystoreWrapper = i7 % 128;
                if (i7 % 2 == 0) {
                    return;
                }
                obj.hashCode();
                throw null;
            }
        }
        AFLogger.afWarnLog("Partner ID is missing or `null`");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0030, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002e, code lost:
    
        if (r6 == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0020, code lost:
    
        if (r6 == false) goto L9;
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setDisableAdvertisingIdentifiers(boolean r6) {
        /*
            r5 = this;
            r0 = 2
            int r1 = r0 % r0
            int r1 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r1 = r1 + 39
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1uSDK.d = r2
            int r1 = r1 % r0
            r2 = 0
            java.lang.String r3 = "setDisableAdvertisingIdentifiers: "
            if (r1 != 0) goto L23
            java.lang.String r1 = java.lang.String.valueOf(r6)
            java.lang.String r1 = r3.concat(r1)
            com.appsflyer.AFLogger.afDebugLog(r1)
            r1 = 82
            int r1 = r1 / r2
            if (r6 != 0) goto L31
            goto L30
        L23:
            java.lang.String r1 = java.lang.String.valueOf(r6)
            java.lang.String r1 = r3.concat(r1)
            com.appsflyer.AFLogger.afDebugLog(r1)
            if (r6 != 0) goto L31
        L30:
            r2 = 1
        L31:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r2)
            com.appsflyer.internal.AFb1kSDK.getMediationNetwork = r1
            java.lang.Object[] r1 = new java.lang.Object[]{r5}
            int r2 = java.lang.System.identityHashCode(r5)
            r3 = 389316487(0x17347f87, float:5.83221E-25)
            r4 = -389316474(0xffffffffe8cb8086, float:-7.68809E24)
            java.lang.Object r1 = getRevenue(r1, r3, r4, r2)
            com.appsflyer.internal.AFc1bSDK r1 = (com.appsflyer.internal.AFc1bSDK) r1
            com.appsflyer.internal.AFc1eSDK r2 = r1.afInfoLog()
            r2.component3 = r6
            if (r6 == 0) goto L7c
            int r6 = com.appsflyer.internal.AFa1uSDK.d
            int r6 = r6 + 109
            int r2 = r6 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r2
            int r6 = r6 % r0
            r2 = 0
            if (r6 != 0) goto L72
            com.appsflyer.internal.AFc1eSDK r6 = r1.afInfoLog()
            r6.component2 = r2
            int r6 = com.appsflyer.internal.AFa1uSDK.d
            int r6 = r6 + 7
            int r1 = r6 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r1
            int r6 = r6 % r0
            if (r6 != 0) goto L71
            return
        L71:
            throw r2
        L72:
            com.appsflyer.internal.AFc1eSDK r6 = r1.afInfoLog()
            r6.component2 = r2
            r2.hashCode()
            throw r2
        L7c:
            com.appsflyer.internal.AFe1nSDK r6 = r1.copydefault()
            com.appsflyer.internal.AFe1fSDK r0 = new com.appsflyer.internal.AFe1fSDK
            com.appsflyer.internal.AFc1bSDK r1 = r5.getCurrencyIso4217Code()
            r0.<init>(r1)
            java.util.concurrent.Executor r1 = r6.AFAdRevenueData
            com.appsflyer.internal.AFe1nSDK$3 r2 = new com.appsflyer.internal.AFe1nSDK$3
            r2.<init>(r0)
            r1.execute(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.setDisableAdvertisingIdentifiers(boolean):void");
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
        Context context = (Context) objArr[1];
        int i = 2 % 2;
        AFj1kSDK aFj1kSDK = new AFj1kSDK((Intent) objArr[2]);
        if (aFj1kSDK.getCurrencyIso4217Code("appsflyer_preinstall") != null) {
            int i2 = AFKeystoreWrapper + 53;
            d = i2 % 128;
            if (i2 % 2 == 0) {
                getRevenue(new Object[]{aFj1kSDK.getCurrencyIso4217Code("appsflyer_preinstall")}, 698517988, -698517984, (int) System.currentTimeMillis());
                throw null;
            }
            getRevenue(new Object[]{aFj1kSDK.getCurrencyIso4217Code("appsflyer_preinstall")}, 698517988, -698517984, (int) System.currentTimeMillis());
        }
        AFLogger.afInfoLog("****** onReceive called *******");
        AppsFlyerProperties.getInstance();
        String currencyIso4217Code = aFj1kSDK.getCurrencyIso4217Code("referrer");
        AFLogger.afInfoLog("Play store referrer: ".concat(String.valueOf(currencyIso4217Code)));
        if (currencyIso4217Code != null) {
            int i3 = AFKeystoreWrapper + 87;
            d = i3 % 128;
            int i4 = i3 % 2;
            ((AFc1oSDK) getRevenue(new Object[]{aFa1uSDK, context}, -1595266545, 1595266567, System.identityHashCode(aFa1uSDK))).AFAdRevenueData("referrer", currencyIso4217Code);
            AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
            appsFlyerProperties.set("AF_REFERRER", currencyIso4217Code);
            appsFlyerProperties.AFAdRevenueData = currencyIso4217Code;
            if (AppsFlyerProperties.getInstance().AFAdRevenueData()) {
                AFLogger.afInfoLog("onReceive: isLaunchCalled");
                aFa1uSDK.getMediationNetwork(context, AFh1xSDK.onReceive);
                aFa1uSDK.getRevenue(currencyIso4217Code);
                int i5 = d + 55;
                AFKeystoreWrapper = i5 % 128;
                int i6 = i5 % 2;
            }
        }
        int i7 = d + 35;
        AFKeystoreWrapper = i7 % 128;
        if (i7 % 2 != 0) {
            int i8 = 83 / 0;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00e0 A[LOOP:4: B:27:0x0076->B:41:0x00e0, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void AFAdRevenueData(org.json.JSONObject r14) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.AFAdRevenueData(org.json.JSONObject):void");
    }

    public final void getMonetizationNetwork(Context context, String str) {
        JSONArray jSONArray;
        JSONObject jSONObject;
        int i = 2 % 2;
        AFLogger.afDebugLog("received a new (extra) referrer: ".concat(String.valueOf(str)));
        try {
            long currentTimeMillis = System.currentTimeMillis();
            String monetizationNetwork = ((AFc1oSDK) getRevenue(new Object[]{this, context}, -1595266545, 1595266567, System.identityHashCode(this))).getMonetizationNetwork("extraReferrers", null);
            if (monetizationNetwork == null) {
                jSONObject = new JSONObject();
                jSONArray = new JSONArray();
            } else {
                JSONObject jSONObject2 = new JSONObject(monetizationNetwork);
                jSONArray = jSONObject2.has(str) ? new JSONArray((String) jSONObject2.get(str)) : new JSONArray();
                jSONObject = jSONObject2;
            }
            if (jSONArray.length() < 5) {
                int i2 = AFKeystoreWrapper + 21;
                d = i2 % 128;
                int i3 = i2 % 2;
                jSONArray.put(currentTimeMillis);
                int i4 = d + 57;
                AFKeystoreWrapper = i4 % 128;
                if (i4 % 2 != 0) {
                    int i5 = 2 % 4;
                }
            }
            if (jSONObject.length() >= 4) {
                int i6 = AFKeystoreWrapper + 117;
                d = i6 % 128;
                if (i6 % 2 == 0) {
                    AFAdRevenueData(jSONObject);
                    int i7 = 14 / 0;
                } else {
                    AFAdRevenueData(jSONObject);
                }
            }
            jSONObject.put(str, jSONArray.toString());
            ((AFc1oSDK) getRevenue(new Object[]{this, context}, -1595266545, 1595266567, System.identityHashCode(this))).AFAdRevenueData("extraReferrers", jSONObject.toString());
        } catch (JSONException e) {
            AFLogger.afErrorLogForExcManagerOnly("error at addReferrer", e);
        } catch (Throwable th) {
            AFLogger.afErrorLog(new StringBuilder("Couldn't save referrer - ").append(str).append(": ").toString(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void getMediationNetwork(AFc1bSDK aFc1bSDK) {
        int i = 2 % 2;
        int i2 = d + 49;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        aFc1bSDK.AFInAppEventType().getMonetizationNetwork();
        if (i3 != 0) {
            int i4 = 22 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void stop(boolean z, Context context) {
        AFc1oSDK component2;
        boolean z2;
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 63;
        d = i2 % 128;
        int i3 = i2 % 2;
        getMediationNetwork(context);
        final AFc1bSDK aFc1bSDK = (AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this));
        aFc1bSDK.AFKeystoreWrapper().getRevenue(z);
        aFc1bSDK.getMediationNetwork().submit(new Runnable() { // from class: com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AFa1uSDK.getMediationNetwork(AFc1bSDK.this);
            }
        });
        if (z) {
            int i4 = AFKeystoreWrapper + 31;
            d = i4 % 128;
            if (i4 % 2 == 0) {
                component2 = aFc1bSDK.component2();
                z2 = false;
            } else {
                component2 = aFc1bSDK.component2();
                z2 = true;
            }
            component2.getCurrencyIso4217Code("is_stop_tracking_used", z2);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getSdkVersion() {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 105;
        d = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("getSdkVersion", new String[0]);
        String component2 = AFc1pSDK.component2();
        int i4 = AFKeystoreWrapper + 125;
        d = i4 % 128;
        if (i4 % 2 != 0) {
            return component2;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void onPause(Context context) {
        int i = 2 % 2;
        int i2 = d + 57;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afDebugLog().getMonetizationNetwork();
            int i3 = 92 / 0;
        } else {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afDebugLog().getMonetizationNetwork();
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDebugLog(boolean z) {
        int i = 2 % 2;
        int i2 = d + 65;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        setLogLevel(!z ? AFLogger.LogLevel.NONE : AFLogger.LogLevel.DEBUG);
        int i4 = AFKeystoreWrapper + 3;
        d = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setImeiData(String str) {
        Object revenue;
        int i = 2 % 2;
        int i2 = d + 37;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setImeiData", str);
            revenue = getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this));
        } else {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setImeiData", str);
            revenue = getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this));
        }
        ((AFc1bSDK) revenue).AFKeystoreWrapper().getCurrencyIso4217Code(str);
        int i3 = AFKeystoreWrapper + 61;
        d = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOaidData(String str) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 3;
        d = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setOaidData", str);
        AFb1kSDK.getRevenue = str;
        int i4 = AFKeystoreWrapper + 3;
        d = i4 % 128;
        if (i4 % 2 != 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAndroidIdData(String str) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 25;
        d = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setAndroidIdData", str);
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afInfoLog().AFAdRevenueData = str;
        int i4 = d + 53;
        AFKeystoreWrapper = i4 % 128;
        int i5 = i4 % 2;
    }

    private static void getCurrencyIso4217Code(String str, String str2) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 5;
        d = i2 % 128;
        if (i2 % 2 != 0) {
            AppsFlyerProperties.getInstance().set(str, str2);
            int i3 = AFKeystoreWrapper + 105;
            d = i3 % 128;
            if (i3 % 2 == 0) {
                int i4 = 84 / 0;
                return;
            }
            return;
        }
        AppsFlyerProperties.getInstance().set(str, str2);
        throw null;
    }

    private static /* synthetic */ Object copy(Object[] objArr) {
        String str = (String) objArr[0];
        boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 83;
        d = i2 % 128;
        if (i2 % 2 != 0) {
            AppsFlyerProperties.getInstance().set(str, booleanValue);
            return null;
        }
        AppsFlyerProperties.getInstance().set(str, booleanValue);
        throw null;
    }

    private static String getCurrencyIso4217Code(String str) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 105;
        d = i2 % 128;
        int i3 = i2 % 2;
        AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
        if (i3 != 0) {
            return appsFlyerProperties.getString(str);
        }
        appsFlyerProperties.getString(str);
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private static boolean AFAdRevenueData(String str) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 63;
        d = i2 % 128;
        int i3 = i2 % 2;
        boolean z = AppsFlyerProperties.getInstance().getBoolean(str, false);
        int i4 = d + 87;
        AFKeystoreWrapper = i4 % 128;
        int i5 = i4 % 2;
        return z;
    }

    public final boolean getRevenue() {
        int i = 2 % 2;
        int i2 = d + 27;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        if (!AFAdRevenueData(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID) || getMediationNetwork() != null) {
            return false;
        }
        int i4 = d + 49;
        AFKeystoreWrapper = i4 % 128;
        return i4 % 2 == 0;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void waitForCustomerUserId(boolean z) {
        int i = 2 % 2;
        int i2 = d + 43;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        AFLogger.afInfoLog("initAfterCustomerUserID: ".concat(String.valueOf(z)), true);
        getRevenue(new Object[]{AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, Boolean.valueOf(z)}, -222394073, 222394090, (int) System.currentTimeMillis());
        int i4 = AFKeystoreWrapper + 107;
        d = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCustomerIdAndLogSession(String str, Context context) {
        int i = 2 % 2;
        if (context != null) {
            int i2 = d + 101;
            AFKeystoreWrapper = i2 % 128;
            if (i2 % 2 == 0) {
                if (getRevenue()) {
                    setCustomerUserId(str);
                    AFLogger.afInfoLog(new StringBuilder("CustomerUserId set: ").append(str).append(" - Initializing AppsFlyer Tacking").toString(), true);
                    String referrer = AppsFlyerProperties.getInstance().getReferrer(((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).component2());
                    getMediationNetwork(context, AFh1xSDK.setCustomerIdAndLogSession);
                    ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMediationNetwork();
                    if (referrer == null) {
                        referrer = "";
                    }
                    if (context instanceof Activity) {
                        int i3 = d + 113;
                        AFKeystoreWrapper = i3 % 128;
                        if (i3 % 2 != 0) {
                            ((Activity) context).getIntent();
                            int i4 = 4 / 0;
                        } else {
                            ((Activity) context).getIntent();
                        }
                    }
                    getRevenue(context, referrer);
                    return;
                }
                setCustomerUserId(str);
                AFLogger.afInfoLog("waitForCustomerUserId is false; setting CustomerUserID: ".concat(String.valueOf(str)), true);
                int i5 = AFKeystoreWrapper + 51;
                d = i5 % 128;
                int i6 = i5 % 2;
                return;
            }
            getRevenue();
            Object obj = null;
            obj.hashCode();
            throw null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getOutOfStore(Context context) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 107;
        d = i2 % 128;
        Object obj = null;
        if (i2 % 2 != 0) {
            String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_STORE_FROM_API);
            if (string != null) {
                return string;
            }
            String currencyIso4217Code = getCurrencyIso4217Code(context, "AF_STORE");
            if (currencyIso4217Code != null) {
                int i3 = AFKeystoreWrapper + 71;
                d = i3 % 128;
                if (i3 % 2 == 0) {
                    int i4 = 72 / 0;
                }
                return currencyIso4217Code;
            }
            AFLogger.afInfoLog("No out-of-store value set");
            return null;
        }
        AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_STORE_FROM_API);
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOutOfStore(String str) {
        int i = 2 % 2;
        int i2 = d;
        int i3 = i2 + 75;
        AFKeystoreWrapper = i3 % 128;
        int i4 = i3 % 2;
        if (str != null) {
            int i5 = i2 + 1;
            AFKeystoreWrapper = i5 % 128;
            int i6 = i5 % 2;
            String lowerCase = str.toLowerCase(Locale.getDefault());
            AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_STORE_FROM_API, lowerCase);
            AFLogger.afInfoLog("Store API set with value: ".concat(String.valueOf(lowerCase)), true);
            return;
        }
        AFLogger.afWarnLog("Cannot set setOutOfStore with null", true);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAppInviteOneLink(String str) {
        int i = 2 % 2;
        int i2 = d + 89;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setAppInviteOneLink", str);
        AFLogger.afInfoLog("setAppInviteOneLink = ".concat(String.valueOf(str)));
        if (str == null || !str.equals(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID))) {
            AppsFlyerProperties.getInstance().remove(AppsFlyerProperties.ONELINK_DOMAIN);
            AppsFlyerProperties.getInstance().remove(AppsFlyerProperties.ONELINK_VERSION);
            AppsFlyerProperties.getInstance().remove(AppsFlyerProperties.ONELINK_SCHEME);
        }
        getCurrencyIso4217Code(AppsFlyerProperties.ONELINK_ID, str);
        int i4 = d + 91;
        AFKeystoreWrapper = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAdditionalData(Map<String, Object> map) {
        int i = 2 % 2;
        int i2 = d + 23;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        if (map != null) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setAdditionalData", map.toString());
            AppsFlyerProperties.getInstance().setCustomData(new JSONObject(map).toString());
        }
        int i4 = AFKeystoreWrapper + 9;
        d = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0023, code lost:
    
        if (r18 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0092, code lost:
    
        ((com.appsflyer.internal.AFc1bSDK) getRevenue(new java.lang.Object[]{r17}, 389316487, -389316474, java.lang.System.identityHashCode(r17))).equals().getCurrencyIso4217Code("sendPushNotificationData", "activity_null");
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x002c, code lost:
    
        if (r18.getIntent() == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x002e, code lost:
    
        ((com.appsflyer.internal.AFc1bSDK) getRevenue(new java.lang.Object[]{r17}, 389316487, -389316474, java.lang.System.identityHashCode(r17))).equals().getCurrencyIso4217Code("sendPushNotificationData", r18.getLocalClassName(), new java.lang.StringBuilder("activity_intent_").append(r18.getIntent().toString()).toString());
        r4 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper + 85;
        com.appsflyer.internal.AFa1uSDK.d = r4 % 128;
        r4 = r4 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0026, code lost:
    
        if (r18 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x006e, code lost:
    
        if (r18 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0070, code lost:
    
        ((com.appsflyer.internal.AFc1bSDK) getRevenue(new java.lang.Object[]{r17}, 389316487, -389316474, java.lang.System.identityHashCode(r17))).equals().getCurrencyIso4217Code("sendPushNotificationData", r18.getLocalClassName(), "activity_intent_null");
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x01c3  */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void sendPushNotificationData(android.app.Activity r18) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.sendPushNotificationData(android.app.Activity):void");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserEmails(String... strArr) {
        int i = 2 % 2;
        int i2 = d + 89;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setUserEmails", strArr);
            setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, strArr);
            int i3 = 48 / 0;
        } else {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setUserEmails", strArr);
            setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, strArr);
        }
    }

    /* renamed from: com.appsflyer.internal.AFa1uSDK$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] getRevenue;

        static {
            int[] iArr = new int[AppsFlyerProperties.EmailsCryptType.values().length];
            getRevenue = iArr;
            try {
                iArr[AppsFlyerProperties.EmailsCryptType.SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                getRevenue[AppsFlyerProperties.EmailsCryptType.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserEmails(AppsFlyerProperties.EmailsCryptType emailsCryptType, String... strArr) {
        int i = 2 % 2;
        ArrayList arrayList = new ArrayList(strArr.length + 1);
        arrayList.add(emailsCryptType.toString());
        arrayList.addAll(Arrays.asList(strArr));
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setUserEmails", (String[]) arrayList.toArray(new String[strArr.length + 1]));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EMAIL_CRYPT_TYPE, emailsCryptType.getValue());
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        int length = strArr.length;
        String str = null;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = d + 121;
            AFKeystoreWrapper = i3 % 128;
            if (i3 % 2 != 0) {
                String str2 = strArr[i2];
                int i4 = AnonymousClass2.getRevenue[emailsCryptType.ordinal()];
                throw null;
            }
            String str3 = strArr[i2];
            if (AnonymousClass2.getRevenue[emailsCryptType.ordinal()] != 2) {
                arrayList2.add(AFj1bSDK.getCurrencyIso4217Code(str3));
                str = "sha256_el_arr";
            } else {
                arrayList2.add(str3);
                str = "plain_el_arr";
            }
        }
        hashMap.put(str, arrayList2);
        AppsFlyerProperties.getInstance().setUserEmails(new JSONObject(hashMap).toString());
        int i5 = d + 35;
        AFKeystoreWrapper = i5 % 128;
        if (i5 % 2 != 0) {
            throw null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCollectIMEI(boolean z) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 111;
        d = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setCollectIMEI", String.valueOf(z));
        getCurrencyIso4217Code(AppsFlyerProperties.COLLECT_IMEI, Boolean.toString(z));
        getCurrencyIso4217Code(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, Boolean.toString(z));
        int i4 = d + 115;
        AFKeystoreWrapper = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setCollectOaid(boolean z) {
        int i = 2 % 2;
        int i2 = d + 43;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setCollectOaid", String.valueOf(z));
        getCurrencyIso4217Code(AppsFlyerProperties.COLLECT_OAID, Boolean.toString(z));
        int i4 = AFKeystoreWrapper + 55;
        d = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setResolveDeepLinkURLs(String... strArr) {
        int i = 2 % 2;
        int i2 = d + 51;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        AFLogger.afDebugLog(String.format("setResolveDeepLinkURLs %s", Arrays.toString(strArr)));
        AFa1rSDK i4 = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).i();
        i4.component4.clear();
        i4.component4.addAll(Arrays.asList(strArr));
        int i5 = AFKeystoreWrapper + 37;
        d = i5 % 128;
        int i6 = i5 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOneLinkCustomDomain(String... strArr) {
        Object revenue;
        int i = 2 % 2;
        int i2 = d + 91;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            AFLogger.afDebugLog(String.format("setOneLinkCustomDomain %s", Arrays.toString(strArr)));
            revenue = getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this));
        } else {
            AFLogger.afDebugLog(String.format("setOneLinkCustomDomain %s", Arrays.toString(strArr)));
            revenue = getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this));
        }
        ((AFc1bSDK) revenue).i().areAllFieldsValid = strArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void copy() {
        AFi1qSDK aFi1qSDK;
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 125;
        d = i2 % 128;
        if (i2 % 2 == 0) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afRDLog().getMonetizationNetwork();
            throw null;
        }
        if (((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afRDLog().getMonetizationNetwork()) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afRDLog().getRevenue();
        }
        AFi1sSDK w = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).w();
        if (Build.VERSION.SDK_INT >= 31) {
            aFi1qSDK = new AFi1oSDK(w.getCurrencyIso4217Code);
        } else {
            aFi1qSDK = new AFi1qSDK(w.getCurrencyIso4217Code);
            int i3 = d + 67;
            AFKeystoreWrapper = i3 % 128;
            int i4 = i3 % 2;
        }
        w.getMediationNetwork = aFi1qSDK;
        AFf1cSDK AFKeystoreWrapper2 = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper();
        AFf1cSDK.getRevenue(new Object[]{AFKeystoreWrapper2, ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).getCurrencyIso4217Code()}, 826598914, -826598912, System.identityHashCode(AFKeystoreWrapper2));
        AFh1tSDK component3 = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).component3();
        component3.component2 = System.currentTimeMillis();
        int mediationNetwork = component3.getMediationNetwork.getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 0);
        if (mediationNetwork == 1 && component3.getCurrencyIso4217Code.getRevenue("first_launch")) {
            int i5 = d + 71;
            AFKeystoreWrapper = i5 % 128;
            int i6 = i5 % 2;
            component3.getMonetizationNetwork.putAll(component3.AFAdRevenueData("first_launch"));
        }
        if (mediationNetwork > 0 && component3.getCurrencyIso4217Code.getRevenue("gcd")) {
            int i7 = d + 75;
            AFKeystoreWrapper = i7 % 128;
            int i8 = i7 % 2;
            component3.AFAdRevenueData.putAll(component3.AFAdRevenueData("gcd"));
        }
        component3.hashCode = component3.getCurrencyIso4217Code.getCurrencyIso4217Code("prev_session_dur", 0L);
        component2();
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFInAppEventType().getCurrencyIso4217Code();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void getMediationNetwork(boolean z) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper;
        int i3 = i2 + 113;
        d = i3 % 128;
        int i4 = i3 % 2;
        if (!z) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afErrorLog().getMonetizationNetwork();
            return;
        }
        int i5 = i2 + 99;
        d = i5 % 128;
        int i6 = i5 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afErrorLog().getCurrencyIso4217Code();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void equals() {
        int i = 2 % 2;
        getCurrencyIso4217Code(new AFh1kSDK());
        int i2 = AFKeystoreWrapper + 69;
        d = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 11 / 0;
        }
    }

    private static /* synthetic */ Object component1(Object[] objArr) {
        final AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
        String str = (String) objArr[1];
        AppsFlyerConversionListener appsFlyerConversionListener = (AppsFlyerConversionListener) objArr[2];
        Context context = (Context) objArr[3];
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 65;
        d = i2 % 128;
        if (i2 % 2 == 0) {
            boolean z = aFa1uSDK.toString;
            throw null;
        }
        if (aFa1uSDK.toString) {
            return aFa1uSDK;
        }
        aFa1uSDK.toString = true;
        ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).AFKeystoreWrapper().getMonetizationNetwork(str);
        if (context != null) {
            aFa1uSDK.getMediationNetwork(context);
            Application O_ = AFj1iSDK.O_(context);
            if (O_ == null) {
                return aFa1uSDK;
            }
            aFa1uSDK.component3 = O_;
            ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).getMediationNetwork().execute(new Runnable() { // from class: com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    AFa1uSDK.this.copy();
                }
            });
            AFe1nSDK copydefault = ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).copydefault();
            copydefault.AFAdRevenueData.execute(copydefault.new AnonymousClass3(new AFe1fSDK(aFa1uSDK.getCurrencyIso4217Code())));
            ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).afWarnLog().getMediationNetwork(new AFd1xSDK.AFa1ySDK() { // from class: com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda5
                @Override // com.appsflyer.internal.AFd1xSDK.AFa1ySDK
                public final void onConfigurationChanged(boolean z2) {
                    AFa1uSDK.this.getMediationNetwork(z2);
                }
            });
            ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).component1().getRevenue(aFa1uSDK.AFAdRevenueData());
            AFj1rSDK AFLogger2 = ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).AFLogger();
            Runnable runnable = new Runnable() { // from class: com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    AFa1uSDK.this.equals();
                }
            };
            AFi1bSDK monetizationNetwork = AFLogger2.getMonetizationNetwork(runnable);
            Runnable revenue = AFLogger2.getRevenue(monetizationNetwork, runnable);
            AFLogger2.getCurrencyIso4217Code.add(monetizationNetwork);
            AFLogger2.getCurrencyIso4217Code.add(new AFj1mSDK(AFLogger2.getMonetizationNetwork.getCurrencyIso4217Code(), revenue));
            AFLogger2.getCurrencyIso4217Code.add(new AFj1zSDK(revenue, AFLogger2.getMonetizationNetwork, new AFj1vSDK()));
            AFLogger2.getCurrencyIso4217Code.add(new AFj1lSDK(revenue, AFLogger2.getMonetizationNetwork));
            AFLogger2.getCurrencyIso4217Code.add(new AFj1uSDK(AFLogger2.getMonetizationNetwork.getMediationNetwork(), AFLogger2.getMonetizationNetwork.getCurrencyIso4217Code(), revenue));
            AFLogger2.getMediationNetwork(revenue);
            AFj1qSDK[] aFj1qSDKArr = (AFj1qSDK[]) AFLogger2.getCurrencyIso4217Code.toArray(new AFj1qSDK[0]);
            int length = aFj1qSDKArr.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = AFKeystoreWrapper + 89;
                d = i4 % 128;
                if (i4 % 2 == 0) {
                    aFj1qSDKArr[i3].getCurrencyIso4217Code(AFLogger2.getMonetizationNetwork.registerClient().getRevenue);
                    i3 += 21;
                } else {
                    aFj1qSDKArr[i3].getCurrencyIso4217Code(AFLogger2.getMonetizationNetwork.registerClient().getRevenue);
                    i3++;
                }
            }
            if (!AFLogger2.getMediationNetwork()) {
                AFLogger2.AFAdRevenueData(AFLogger2.getMonetizationNetwork.registerClient().getRevenue, revenue, AFLogger2.getMonetizationNetwork);
                int i5 = AFKeystoreWrapper + 47;
                d = i5 % 128;
                int i6 = i5 % 2;
            }
        } else {
            AFLogger.INSTANCE.w(AFg1cSDK.REFERRER, "context is null, Google Install Referrer will be not initialized");
        }
        AFd1mSDK equals = ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).equals();
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = appsFlyerConversionListener == null ? "null" : "conversionDataListener";
        equals.getCurrencyIso4217Code(Session.JsonKeys.INIT, strArr);
        AFLogger.INSTANCE.force(AFg1cSDK.GENERAL, String.format("Initializing AppsFlyer SDK: (v%s.%s)", "6.17.3", getRevenue));
        aFa1uSDK.getMediationNetwork = appsFlyerConversionListener;
        return aFa1uSDK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void getMediationNetwork(AFi1jSDK aFi1jSDK) {
        int i = 2 % 2;
        int i2 = d + 57;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        getMonetizationNetwork(aFi1jSDK);
        if (i3 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private void component2() {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 77;
        d = i2 % 128;
        int i3 = i2 % 2;
        try {
            final AFi1jSDK v = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).v();
            if (v == null) {
                return;
            }
            if (!v.getMonetizationNetwork()) {
                if (v.getMediationNetwork()) {
                    return;
                }
                getMonetizationNetwork(v);
            } else {
                int i4 = d + 9;
                AFKeystoreWrapper = i4 % 128;
                int i5 = i4 % 2;
                v.getMonetizationNetwork(new AFi1eSDK() { // from class: com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda0
                    @Override // com.appsflyer.internal.AFi1eSDK
                    public final void onRequestFinished() {
                        AFa1uSDK.this.getMediationNetwork(v);
                    }
                });
            }
        } catch (Throwable th) {
            AFLogger.afErrorLogForExcManagerOnly("Error at attempt to request PIA token", th);
            AFLogger.afRDLog("Get PIA token failed with exception:".concat(String.valueOf(th)));
        }
    }

    private void getMonetizationNetwork(AFi1jSDK aFi1jSDK) {
        int i = 2 % 2;
        AFf1ySDK aFf1ySDK = new AFf1ySDK(aFi1jSDK, getCurrencyIso4217Code().getCurrencyIso4217Code(), getCurrencyIso4217Code(), getCurrencyIso4217Code().component4(), getCurrencyIso4217Code().registerClient());
        AFe1nSDK copydefault = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).copydefault();
        copydefault.AFAdRevenueData.execute(copydefault.new AnonymousClass3(aFf1ySDK));
        int i2 = AFKeystoreWrapper + 1;
        d = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void enableFacebookDeferredApplinks(boolean z) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 47;
        d = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).unregisterClient().getMonetizationNetwork(z);
        int i4 = AFKeystoreWrapper + 73;
        d = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(Context context) {
        int i = 2 % 2;
        int i2 = d + 27;
        AFKeystoreWrapper = i2 % 128;
        Object obj = null;
        if (i2 % 2 == 0) {
            start(context, null);
            int i3 = d + 61;
            AFKeystoreWrapper = i3 % 128;
            int i4 = i3 % 2;
            return;
        }
        start(context, null);
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(Context context, String str) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 1;
        d = i2 % 128;
        int i3 = i2 % 2;
        start(context, str, null);
        int i4 = AFKeystoreWrapper + 29;
        d = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(Context context, String str, final AppsFlyerRequestListener appsFlyerRequestListener) {
        int i = 2 % 2;
        if (((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afDebugLog().getCurrencyIso4217Code()) {
            return;
        }
        if (!this.toString) {
            getMediationNetwork("start");
            if (str == null) {
                int i2 = AFKeystoreWrapper + 79;
                int i3 = i2 % 128;
                d = i3;
                if (i2 % 2 == 0) {
                    throw null;
                }
                if (appsFlyerRequestListener != null) {
                    int i4 = i3 + 21;
                    AFKeystoreWrapper = i4 % 128;
                    if (i4 % 2 != 0) {
                        appsFlyerRequestListener.onError(88, "No dev key");
                        return;
                    } else {
                        appsFlyerRequestListener.onError(41, "No dev key");
                        return;
                    }
                }
                return;
            }
        }
        getMediationNetwork(context);
        final AFh1tSDK component3 = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).component3();
        component3.getRevenue(AFh1uSDK.getRevenue(context));
        if (this.component3 == null) {
            int i5 = AFKeystoreWrapper + 35;
            d = i5 % 128;
            int i6 = i5 % 2;
            Application O_ = AFj1iSDK.O_(context);
            if (O_ == null) {
                return;
            }
            int i7 = AFKeystoreWrapper + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
            d = i7 % 128;
            int i8 = i7 % 2;
            this.component3 = O_;
        }
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("start", str);
        AFLogger aFLogger = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.GENERAL;
        String str2 = getRevenue;
        aFLogger.i(aFg1cSDK, String.format("Starting AppsFlyer: (v%s.%s)", "6.17.3", str2));
        AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, new StringBuilder("Build Number: ").append(str2).toString());
        AppsFlyerProperties.getInstance().loadProperties(((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).component2());
        if (!TextUtils.isEmpty(str)) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMonetizationNetwork(str);
        } else if (!(!TextUtils.isEmpty(((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMediationNetwork()))) {
            int i9 = AFKeystoreWrapper + 63;
            d = i9 % 128;
            if (i9 % 2 == 0) {
                copydefault();
                int i10 = 69 / 0;
                if (appsFlyerRequestListener == null) {
                    return;
                }
            } else {
                copydefault();
                if (appsFlyerRequestListener == null) {
                    return;
                }
            }
            int i11 = d + 29;
            AFKeystoreWrapper = i11 % 128;
            int i12 = i11 % 2;
            appsFlyerRequestListener.onError(41, "No dev key");
            return;
        }
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).component1().getRevenue(AFAdRevenueData());
        component4();
        c_(this.component3.getBaseContext(), this.hashCode.getCurrencyIso4217Code().n_());
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).unregisterClient().getMediationNetwork();
        this.hashCode.afDebugLog().getCurrencyIso4217Code(context, new AFb1aSDK.AFa1ySDK() { // from class: com.appsflyer.internal.AFa1uSDK.3
            @Override // com.appsflyer.internal.AFb1aSDK.AFa1ySDK
            public final void getMonetizationNetwork(AFh1rSDK aFh1rSDK) {
                component3.getMonetizationNetwork();
                AFa1uSDK aFa1uSDK = AFa1uSDK.this;
                AFc1bSDK aFc1bSDK = (AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK));
                aFc1bSDK.component1().getRevenue(AFa1uSDK.this.AFAdRevenueData());
                AFa1uSDK.this.component4();
                int mediationNetwork = aFc1bSDK.getCurrencyIso4217Code().getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 0);
                AFLogger.afInfoLog("onBecameForeground");
                if (mediationNetwork < 2) {
                    AFa1uSDK aFa1uSDK2 = AFa1uSDK.this;
                    ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK2}, 389316487, -389316474, System.identityHashCode(aFa1uSDK2))).copy().getMonetizationNetwork();
                }
                AFh1eSDK aFh1eSDK = new AFh1eSDK();
                AFa1uSDK aFa1uSDK3 = AFa1uSDK.this;
                ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK3}, 389316487, -389316474, System.identityHashCode(aFa1uSDK3))).i().f_(AFa1gSDK.AFAdRevenueData(aFh1eSDK), aFh1rSDK.getMediationNetwork, aFc1bSDK.registerClient().getRevenue);
                AFh1qSDK afLogForce = aFc1bSDK.afLogForce();
                if (afLogForce != null && aFh1rSDK.getMediationNetwork != null) {
                    Intent intent = aFh1rSDK.getMediationNetwork;
                    AFa1uSDK aFa1uSDK4 = AFa1uSDK.this;
                    afLogForce.u_(intent, ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK4}, 389316487, -389316474, System.identityHashCode(aFa1uSDK4))).i());
                }
                AFa1uSDK aFa1uSDK5 = AFa1uSDK.this;
                aFh1eSDK.getMonetizationNetwork = appsFlyerRequestListener;
                aFa1uSDK5.getMediationNetwork(aFh1eSDK, aFh1rSDK);
                AFa1uSDK aFa1uSDK6 = AFa1uSDK.this;
                ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK6}, 389316487, -389316474, System.identityHashCode(aFa1uSDK6))).AFAdRevenueData().AFAdRevenueData();
                AFa1uSDK aFa1uSDK7 = AFa1uSDK.this;
                ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK7}, 389316487, -389316474, System.identityHashCode(aFa1uSDK7))).AFAdRevenueData().getRevenue.getCurrencyIso4217Code("didSendRevenueTriggerOnLastBackground", false);
            }

            @Override // com.appsflyer.internal.AFb1aSDK.AFa1ySDK
            public final void getMediationNetwork() {
                AFa1uSDK aFa1uSDK = AFa1uSDK.this;
                Context context2 = ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).registerClient().getRevenue;
                AFLogger.afInfoLog("onBecameBackground");
                AFh1tSDK aFh1tSDK = component3;
                long currentTimeMillis = System.currentTimeMillis();
                if (aFh1tSDK.component3 != 0) {
                    long j = currentTimeMillis - aFh1tSDK.component3;
                    if (j > 0 && j < 1000) {
                        j = 1000;
                    }
                    aFh1tSDK.hashCode = TimeUnit.MILLISECONDS.toSeconds(j);
                    aFh1tSDK.getCurrencyIso4217Code.getRevenue("prev_session_dur", aFh1tSDK.hashCode);
                } else {
                    AFLogger.afInfoLog("Metrics: fg ts is missing");
                }
                AFLogger.afInfoLog("callStatsBackground background call");
                AFa1uSDK aFa1uSDK2 = AFa1uSDK.this;
                ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK2}, 389316487, -389316474, System.identityHashCode(aFa1uSDK2))).afWarnLog().getCurrencyIso4217Code();
                AFa1uSDK aFa1uSDK3 = AFa1uSDK.this;
                AFd1mSDK equals = ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK3}, 389316487, -389316474, System.identityHashCode(aFa1uSDK3))).equals();
                if (equals.areAllFieldsValid()) {
                    equals.AFAdRevenueData();
                    if (context2 != null && !AppsFlyerLib.getInstance().isStopped()) {
                        equals.q_(context2.getPackageName(), context2.getPackageManager());
                    }
                    equals.getRevenue();
                } else {
                    AFLogger.afDebugLog("RD status is OFF");
                }
                AFa1uSDK aFa1uSDK4 = AFa1uSDK.this;
                ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK4}, 389316487, -389316474, System.identityHashCode(aFa1uSDK4))).copy().getMediationNetwork();
                AFa1uSDK aFa1uSDK5 = AFa1uSDK.this;
                ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK5}, 389316487, -389316474, System.identityHashCode(aFa1uSDK5))).afErrorLogForExcManagerOnly().getMediationNetwork();
                AFa1uSDK aFa1uSDK6 = AFa1uSDK.this;
                ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK6}, 389316487, -389316474, System.identityHashCode(aFa1uSDK6))).AFAdRevenueData().AFAdRevenueData();
                AFa1uSDK aFa1uSDK7 = AFa1uSDK.this;
                AFh1qSDK afLogForce = ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK7}, 389316487, -389316474, System.identityHashCode(aFa1uSDK7))).afLogForce();
                if (afLogForce != null) {
                    afLogForce.getCurrencyIso4217Code();
                }
            }
        });
    }

    private static void c_(Context context, PackageInfo packageInfo) {
        int i = 2 % 2;
        try {
            if (packageInfo.applicationInfo != null) {
                int i2 = AFKeystoreWrapper + 7;
                d = i2 % 128;
                if (i2 % 2 == 0) {
                    int i3 = packageInfo.applicationInfo.flags;
                    throw null;
                }
                if ((packageInfo.applicationInfo.flags & 32768) != 0) {
                    if (Build.VERSION.SDK_INT < 31) {
                        if (context.getResources().getIdentifier("appsflyer_backup_rules", "xml", context.getPackageName()) != 0) {
                            AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data", true);
                            return;
                        } else {
                            AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "'allowBackup' is set to true; appsflyer_backup_rules.xml is NOT detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <full-backup-content> rules.\nIf Appsflyer's Purchase Connector is in use then you also must add the following to your rules: <exclude domain=\"sharedpref\" path=\"appsflyer-purchase-data\"/> AND <exclude domain=\"database\" path=\"afpurchases.db\"/>", true);
                            return;
                        }
                    }
                    if (context.getResources().getIdentifier("appsflyer_data_extraction_rules", "xml", context.getPackageName()) == 0) {
                        AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "'allowBackup' is set to true; appsflyer_data_extraction_rules.xml is NOT detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <data-extraction-rules> both in <device-transfer> and <cloud-backup>.\nIf Appsflyer's Purchase Connector is in use then you also must add to <device-transfer> and <cloud-backup> the following excludes: <exclude domain=\"sharedpref\" path=\"appsflyer-purchase-data\"/> AND <exclude domain=\"database\" path=\"afpurchases.db\"/>", true);
                        return;
                    }
                    AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "appsflyer_data_extraction_rules.xml detected, using AppsFlyer data extraction rules for AppsFlyer SDK data", true);
                    int i4 = d + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
                    AFKeystoreWrapper = i4 % 128;
                    int i5 = i4 % 2;
                }
            }
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Exception while checking BackupRules: ", th);
        }
    }

    public static String getMediationNetwork() {
        int i = 2 % 2;
        int i2 = d + 63;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        String currencyIso4217Code = getCurrencyIso4217Code(AppsFlyerProperties.APP_USER_ID);
        int i4 = AFKeystoreWrapper + 85;
        d = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 76 / 0;
        }
        return currencyIso4217Code;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCustomerUserId(String str) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 25;
        d = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setCustomerUserId", str);
        AFLogger.afInfoLog("setCustomerUserId = ".concat(String.valueOf(str)));
        getCurrencyIso4217Code(AppsFlyerProperties.APP_USER_ID, str);
        getRevenue(new Object[]{AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false}, -222394073, 222394090, (int) System.currentTimeMillis());
        int i4 = AFKeystoreWrapper + 5;
        d = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPhoneNumber(String str) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 23;
        d = i2 % 128;
        if (i2 % 2 != 0) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afInfoLog().getMonetizationNetwork = AFj1bSDK.getCurrencyIso4217Code(str);
            int i3 = AFKeystoreWrapper + 5;
            d = i3 % 128;
            int i4 = i3 % 2;
            return;
        }
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afInfoLog().getMonetizationNetwork = AFj1bSDK.getCurrencyIso4217Code(str);
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAppId(String str) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 111;
        d = i2 % 128;
        if (i2 % 2 == 0) {
            AFd1mSDK equals = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals();
            String[] strArr = new String[0];
            strArr[0] = str;
            equals.getCurrencyIso4217Code("setAppId", strArr);
        } else {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setAppId", str);
        }
        getCurrencyIso4217Code(AppsFlyerProperties.APP_ID, str);
        int i3 = d + 89;
        AFKeystoreWrapper = i3 % 128;
        int i4 = i3 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setExtension(String str) {
        int i = 2 % 2;
        int i2 = d + 9;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setExtension", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EXTENSION, str);
        int i4 = AFKeystoreWrapper + 23;
        d = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 59 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setIsUpdate(boolean z) {
        int i = 2 % 2;
        int i2 = d + 55;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setIsUpdate", String.valueOf(z));
        } else {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setIsUpdate", String.valueOf(z));
        }
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.IS_UPDATE, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCurrencyCode(String str) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 117;
        d = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("setCurrencyCode", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.CURRENCY_CODE, str);
        int i4 = d + 15;
        AFKeystoreWrapper = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logLocation(Context context, double d2, double d3) {
        int i = 2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("logLocation", String.valueOf(d2), String.valueOf(d3));
        HashMap hashMap = new HashMap();
        hashMap.put(AFInAppEventParameterName.LONGITUDE, Double.toString(d3));
        hashMap.put(AFInAppEventParameterName.LATITUDE, Double.toString(d2));
        AFAdRevenueData(context, AFInAppEventType.LOCATION_COORDINATES, hashMap);
        int i2 = d + 59;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 60 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logSession(Context context) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 25;
        d = i2 % 128;
        int i3 = i2 % 2;
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("logSession", new String[0]);
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getMonetizationNetwork();
        getMediationNetwork(context, AFh1xSDK.logSession);
        AFAdRevenueData(context, (String) null, (Map<String, Object>) null);
        int i4 = AFKeystoreWrapper + 107;
        d = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 63 / 0;
        }
    }

    private void getMediationNetwork(Context context, AFh1xSDK aFh1xSDK) {
        int i = 2 % 2;
        int i2 = d + 29;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        getMediationNetwork(context);
        AFh1tSDK component3 = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).component3();
        AFh1uSDK revenue = AFh1uSDK.getRevenue(context);
        if (component3.getCurrencyIso4217Code()) {
            int i4 = d + 125;
            AFKeystoreWrapper = i4 % 128;
            if (i4 % 2 != 0) {
                component3.getMonetizationNetwork.put("api_name", aFh1xSDK.toString());
                component3.getRevenue(revenue);
                int i5 = 2 / 0;
            } else {
                component3.getMonetizationNetwork.put("api_name", aFh1xSDK.toString());
                component3.getRevenue(revenue);
            }
        }
        component3.getMonetizationNetwork();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logAdRevenue(AFAdRevenueData aFAdRevenueData, Map<String, Object> map) {
        int i = 2 % 2;
        if (!this.toString) {
            getMediationNetwork("logAdRevenue");
            int i2 = AFKeystoreWrapper + 119;
            d = i2 % 128;
            int i3 = i2 % 2;
            return;
        }
        if (aFAdRevenueData.areAllFieldsValid()) {
            if (((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMonetizationNetwork()) {
                int i4 = AFKeystoreWrapper + 87;
                d = i4 % 128;
                if (i4 % 2 != 0) {
                    AFLogger.INSTANCE.w(AFg1cSDK.AD_REVENUE, "SDK is stopped");
                    return;
                }
                AFLogger.INSTANCE.w(AFg1cSDK.AD_REVENUE, "SDK is stopped");
                Object obj = null;
                obj.hashCode();
                throw null;
            }
            if (AFk1xSDK.getRevenue(((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMediationNetwork())) {
                copydefault();
                return;
            } else {
                getMonetizationNetwork(new AFh1nSDK(aFAdRevenueData, map));
                return;
            }
        }
        int i5 = AFKeystoreWrapper + 9;
        d = i5 % 128;
        if (i5 % 2 == 0) {
            AFLogger.INSTANCE.w(AFg1cSDK.AD_REVENUE, "Invalid ad revenue parameters provided");
            int i6 = 32 / 0;
        } else {
            AFLogger.INSTANCE.w(AFg1cSDK.AD_REVENUE, "Invalid ad revenue parameters provided");
        }
    }

    private AFh1rSDK AFAdRevenueData(Context context) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 87;
        d = i2 % 128;
        int i3 = i2 % 2;
        Object obj = null;
        if (!(context instanceof Activity)) {
            return null;
        }
        AFh1rSDK aFh1rSDK = new AFh1rSDK((Activity) context, getCurrencyIso4217Code().d());
        int i4 = AFKeystoreWrapper + 67;
        d = i4 % 128;
        if (i4 % 2 != 0) {
            return aFh1rSDK;
        }
        obj.hashCode();
        throw null;
    }

    private void AFAdRevenueData(Context context, String str, Map<String, Object> map) {
        int i = 2 % 2;
        AFh1hSDK aFh1hSDK = new AFh1hSDK();
        aFh1hSDK.component4 = str;
        aFh1hSDK.AFAdRevenueData = map;
        getMediationNetwork(aFh1hSDK, AFAdRevenueData(context));
        int i2 = d + 7;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 38 / 0;
        }
    }

    final void getMediationNetwork(AFh1jSDK aFh1jSDK, AFh1rSDK aFh1rSDK) {
        AppsFlyerRequestListener appsFlyerRequestListener;
        int i = 2 % 2;
        AFAdRevenueData(aFh1jSDK, aFh1rSDK);
        if (((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMediationNetwork() != null) {
            String referrer = AppsFlyerProperties.getInstance().getReferrer(((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).component2());
            if (referrer == null) {
                int i2 = d + 117;
                AFKeystoreWrapper = i2 % 128;
                if (i2 % 2 != 0) {
                    throw null;
                }
                referrer = "";
            }
            aFh1jSDK.areAllFieldsValid = referrer;
            getMonetizationNetwork(aFh1jSDK);
            return;
        }
        int i3 = AFKeystoreWrapper + 117;
        d = i3 % 128;
        if (i3 % 2 == 0) {
            AFLogger.afWarnLog("[LogEvent/Launch] AppsFlyer's SDK cannot send any event without providing DevKey.");
            appsFlyerRequestListener = aFh1jSDK.getMonetizationNetwork;
            int i4 = 1 / 0;
            if (appsFlyerRequestListener == null) {
                return;
            }
        } else {
            AFLogger.afWarnLog("[LogEvent/Launch] AppsFlyer's SDK cannot send any event without providing DevKey.");
            appsFlyerRequestListener = aFh1jSDK.getMonetizationNetwork;
            if (appsFlyerRequestListener == null) {
                return;
            }
        }
        appsFlyerRequestListener.onError(41, "No dev key");
    }

    private static void AFAdRevenueData(AFh1jSDK aFh1jSDK, AFh1rSDK aFh1rSDK) {
        int i = 2 % 2;
        int i2 = d + 89;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            Object obj = null;
            obj.hashCode();
            throw null;
        }
        if (aFh1rSDK != null) {
            aFh1jSDK.getMediationNetwork = aFh1rSDK.AFAdRevenueData;
            aFh1jSDK.component2 = aFh1rSDK.getMonetizationNetwork;
            int i3 = AFKeystoreWrapper + 95;
            d = i3 % 128;
            int i4 = i3 % 2;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void anonymizeUser(boolean z) {
        int i = 2 % 2;
        int i2 = d + 67;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            AFd1mSDK equals = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals();
            String[] strArr = new String[1];
            strArr[1] = String.valueOf(z);
            equals.getCurrencyIso4217Code("anonymizeUser", strArr);
        } else {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("anonymizeUser", String.valueOf(z));
        }
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, z);
        int i3 = AFKeystoreWrapper + 87;
        d = i3 % 128;
        if (i3 % 2 == 0) {
            int i4 = 42 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void registerConversionListener(Context context, AppsFlyerConversionListener appsFlyerConversionListener) {
        int i = 2 % 2;
        int i2 = d + 111;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("registerConversionListener", new String[1]);
        } else {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("registerConversionListener", new String[0]);
        }
        getRevenue(appsFlyerConversionListener);
    }

    private void getRevenue(AppsFlyerConversionListener appsFlyerConversionListener) {
        int i = 2 % 2;
        if (appsFlyerConversionListener == null) {
            int i2 = d + 13;
            AFKeystoreWrapper = i2 % 128;
            int i3 = i2 % 2;
        } else {
            this.getMediationNetwork = appsFlyerConversionListener;
            int i4 = d + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
            AFKeystoreWrapper = i4 % 128;
            if (i4 % 2 != 0) {
                int i5 = 20 / 0;
            }
        }
    }

    private static /* synthetic */ Object component4(Object[] objArr) {
        AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 21;
        d = i2 % 128;
        if (i2 % 2 == 0) {
            ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).equals().getCurrencyIso4217Code("unregisterConversionListener", new String[0]);
        } else {
            ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).equals().getCurrencyIso4217Code("unregisterConversionListener", new String[0]);
        }
        aFa1uSDK.getMediationNetwork = null;
        int i3 = d + 57;
        AFKeystoreWrapper = i3 % 128;
        if (i3 % 2 != 0) {
            int i4 = 95 / 0;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0052, code lost:
    
        if (r9 == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0035, code lost:
    
        if (r9 == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0064, code lost:
    
        com.appsflyer.internal.AFa1uSDK.getCurrencyIso4217Code = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0066, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0054, code lost:
    
        r9 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper + 9;
        com.appsflyer.internal.AFa1uSDK.d = r9 % 128;
        r9 = r9 % 2;
        com.appsflyer.AFLogger.afDebugLog("registerValidatorListener null listener");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0063, code lost:
    
        return;
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void registerValidatorListener(android.content.Context r8, com.appsflyer.AppsFlyerInAppPurchaseValidatorListener r9) {
        /*
            r7 = this;
            r8 = 2
            int r0 = r8 % r8
            int r0 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r0 = r0 + 97
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1uSDK.d = r1
            int r0 = r0 % r8
            java.lang.String r1 = "registerValidatorListener called"
            r2 = 0
            java.lang.String r3 = "registerValidatorListener"
            r4 = -389316474(0xffffffffe8cb8086, float:-7.68809E24)
            r5 = 389316487(0x17347f87, float:5.83221E-25)
            if (r0 != 0) goto L38
            java.lang.Object[] r0 = new java.lang.Object[]{r7}
            int r6 = java.lang.System.identityHashCode(r7)
            java.lang.Object r0 = getRevenue(r0, r5, r4, r6)
            com.appsflyer.internal.AFc1bSDK r0 = (com.appsflyer.internal.AFc1bSDK) r0
            com.appsflyer.internal.AFd1mSDK r0 = r0.equals()
            java.lang.String[] r2 = new java.lang.String[r2]
            r0.getCurrencyIso4217Code(r3, r2)
            com.appsflyer.AFLogger.afDebugLog(r1)
            if (r9 != 0) goto L64
            goto L54
        L38:
            java.lang.Object[] r0 = new java.lang.Object[]{r7}
            int r6 = java.lang.System.identityHashCode(r7)
            java.lang.Object r0 = getRevenue(r0, r5, r4, r6)
            com.appsflyer.internal.AFc1bSDK r0 = (com.appsflyer.internal.AFc1bSDK) r0
            com.appsflyer.internal.AFd1mSDK r0 = r0.equals()
            java.lang.String[] r2 = new java.lang.String[r2]
            r0.getCurrencyIso4217Code(r3, r2)
            com.appsflyer.AFLogger.afDebugLog(r1)
            if (r9 != 0) goto L64
        L54:
            int r9 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r9 = r9 + 9
            int r0 = r9 % 128
            com.appsflyer.internal.AFa1uSDK.d = r0
            int r9 = r9 % r8
            java.lang.String r8 = "registerValidatorListener null listener"
            com.appsflyer.AFLogger.afDebugLog(r8)
            return
        L64:
            com.appsflyer.internal.AFa1uSDK.getCurrencyIso4217Code = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.registerValidatorListener(android.content.Context, com.appsflyer.AppsFlyerInAppPurchaseValidatorListener):void");
    }

    public static String getMediationNetwork(SimpleDateFormat simpleDateFormat, long j) {
        int i = 2 % 2;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String format = simpleDateFormat.format(new Date(j));
        int i2 = AFKeystoreWrapper + 35;
        d = i2 % 128;
        int i3 = i2 % 2;
        return format;
    }

    private void getRevenue(Context context, String str) {
        int i = 2 % 2;
        AFh1eSDK aFh1eSDK = new AFh1eSDK();
        getMediationNetwork(context);
        aFh1eSDK.component4 = null;
        aFh1eSDK.AFAdRevenueData = null;
        aFh1eSDK.areAllFieldsValid = str;
        aFh1eSDK.getMediationNetwork = null;
        getMonetizationNetwork(aFh1eSDK);
        int i2 = AFKeystoreWrapper + 5;
        d = i2 % 128;
        int i3 = i2 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        if (areAllFieldsValid() == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
    
        r6 = r6.getMonetizationNetwork;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        if (r6 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
    
        r1 = com.appsflyer.internal.AFa1uSDK.d + 7;
        com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r1 % 128;
        r1 = r1 % 2;
        r6.onError(10, "Event timeout. Check 'minTimeBetweenSessions' param");
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006d, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0057, code lost:
    
        if (areAllFieldsValid() != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void getMonetizationNetwork(com.appsflyer.internal.AFh1jSDK r6) {
        /*
            r5 = this;
            r0 = 2
            int r1 = r0 % r0
            java.lang.String r1 = r6.component4
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L14
            int r1 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r1 = r1 + 25
            int r4 = r1 % 128
            com.appsflyer.internal.AFa1uSDK.d = r4
            int r1 = r1 % r0
            r1 = r3
            goto L15
        L14:
            r1 = r2
        L15:
            boolean r4 = r5.getRevenue()
            if (r4 == 0) goto L30
            int r6 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r6 = r6 + 107
            int r1 = r6 % 128
            com.appsflyer.internal.AFa1uSDK.d = r1
            int r6 = r6 % r0
            java.lang.String r0 = "CustomerUserId not set, reporting is disabled"
            if (r6 != 0) goto L2c
            com.appsflyer.AFLogger.afInfoLog(r0, r2)
            return
        L2c:
            com.appsflyer.AFLogger.afInfoLog(r0, r3)
            return
        L30:
            if (r1 == 0) goto L79
            com.appsflyer.AppsFlyerProperties r1 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r4 = "launchProtectEnabled"
            boolean r1 = r1.getBoolean(r4, r3)
            if (r1 == 0) goto L6e
            int r1 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r1 = r1 + 105
            int r3 = r1 % 128
            com.appsflyer.internal.AFa1uSDK.d = r3
            int r1 = r1 % r0
            if (r1 != 0) goto L53
            boolean r1 = r5.areAllFieldsValid()
            r3 = 53
            int r3 = r3 / r2
            if (r1 != 0) goto L59
            goto L73
        L53:
            boolean r1 = r5.areAllFieldsValid()
            if (r1 == 0) goto L73
        L59:
            com.appsflyer.attribution.AppsFlyerRequestListener r6 = r6.getMonetizationNetwork
            if (r6 == 0) goto L6d
            int r1 = com.appsflyer.internal.AFa1uSDK.d
            int r1 = r1 + 7
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r2
            int r1 = r1 % r0
            r0 = 10
            java.lang.String r1 = "Event timeout. Check 'minTimeBetweenSessions' param"
            r6.onError(r0, r1)
        L6d:
            return
        L6e:
            java.lang.String r0 = "Allowing multiple launches within a 5 second time window."
            com.appsflyer.AFLogger.afInfoLog(r0)
        L73:
            long r0 = java.lang.System.currentTimeMillis()
            r5.component4 = r0
        L79:
            r5.getCurrencyIso4217Code(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.getMonetizationNetwork(com.appsflyer.internal.AFh1jSDK):void");
    }

    private boolean areAllFieldsValid() {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 19;
        d = i2 % 128;
        int i3 = i2 % 2;
        if (this.component4 > 0) {
            long currentTimeMillis = System.currentTimeMillis() - this.component4;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS Z", Locale.US);
            String mediationNetwork = getMediationNetwork(simpleDateFormat, this.component4);
            String mediationNetwork2 = getMediationNetwork(simpleDateFormat, this.getMonetizationNetwork);
            if (currentTimeMillis >= this.component2 || isStopped()) {
                if (!isStopped()) {
                    int i4 = d + 97;
                    AFKeystoreWrapper = i4 % 128;
                    int i5 = i4 % 2;
                    AFLogger.afInfoLog(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)", mediationNetwork, mediationNetwork2, Long.valueOf(currentTimeMillis)));
                }
            } else {
                int i6 = AFKeystoreWrapper + 121;
                d = i6 % 128;
                if (i6 % 2 != 0) {
                    AFLogger.afInfoLog(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", mediationNetwork, mediationNetwork2, Long.valueOf(currentTimeMillis), Long.valueOf(this.component2)));
                    return true;
                }
                Locale locale = Locale.US;
                Object[] objArr = new Object[4];
                objArr[1] = mediationNetwork;
                objArr[1] = mediationNetwork2;
                objArr[4] = Long.valueOf(currentTimeMillis);
                objArr[2] = Long.valueOf(this.component2);
                AFLogger.afInfoLog(String.format(locale, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", objArr));
                return false;
            }
        } else if (!isStopped()) {
            int i7 = AFKeystoreWrapper + 77;
            d = i7 % 128;
            if (i7 % 2 != 0) {
                AFLogger.afInfoLog("Sending first launch for this session!");
            } else {
                AFLogger.afInfoLog("Sending first launch for this session!");
                Object obj = null;
                obj.hashCode();
                throw null;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void getMediationNetwork(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = d + 11;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        getCurrencyIso4217Code(aFh1jSDK);
        if (i3 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private void getRevenue(String str) {
        int i = 2 % 2;
        final AFh1jSDK monetizationNetwork = new AFh1lSDK().getMonetizationNetwork(((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).getCurrencyIso4217Code().getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 0));
        monetizationNetwork.areAllFieldsValid = str;
        if (str != null) {
            int i2 = d + 39;
            AFKeystoreWrapper = i2 % 128;
            if (i2 % 2 == 0 ? str.length() > 5 : str.length() > 2) {
                int i3 = d + 35;
                AFKeystoreWrapper = i3 % 128;
                if (i3 % 2 == 0) {
                    if (((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFLogger().AFAdRevenueData(monetizationNetwork)) {
                        AFj1aSDK.AFAdRevenueData(((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).getMonetizationNetwork(), new Runnable() { // from class: com.appsflyer.internal.AFa1uSDK$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                AFa1uSDK.this.getMediationNetwork(monetizationNetwork);
                            }
                        }, 5L, TimeUnit.MILLISECONDS);
                    }
                } else {
                    ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFLogger().AFAdRevenueData(monetizationNetwork);
                    throw null;
                }
            }
        }
        int i4 = AFKeystoreWrapper + 111;
        d = i4 % 128;
        int i5 = i4 % 2;
    }

    final void getCurrencyIso4217Code(AFh1jSDK aFh1jSDK) {
        long j;
        int i = 2 % 2;
        Context context = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).registerClient().getRevenue;
        boolean z = true;
        if (context != null) {
            String mediationNetwork = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMediationNetwork();
            AppsFlyerRequestListener appsFlyerRequestListener = aFh1jSDK.getMonetizationNetwork;
            if (mediationNetwork == null || mediationNetwork.length() == 0) {
                AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. ", true);
                AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "AppsFlyer will not track this event.", true);
                if (appsFlyerRequestListener != null) {
                    appsFlyerRequestListener.onError(41, "No dev key");
                    return;
                }
                return;
            }
            AFc1oSDK aFc1oSDK = (AFc1oSDK) getRevenue(new Object[]{this, context}, -1595266545, 1595266567, System.identityHashCode(this));
            AppsFlyerProperties.getInstance().saveProperties(aFc1oSDK);
            if (!((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMonetizationNetwork()) {
                AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, new StringBuilder("sendWithEvent from activity: ").append(context.getClass().getName()).toString(), true);
            }
            boolean mediationNetwork2 = aFh1jSDK.getMediationNetwork();
            Map<String, ?> revenue = getRevenue(aFh1jSDK);
            if (((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMonetizationNetwork()) {
                AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "AppsFlyerLib.sendWithEvent");
                int i2 = d + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
                AFKeystoreWrapper = i2 % 128;
                int i3 = i2 % 2;
            }
            int monetizationNetwork = getMonetizationNetwork(aFc1oSDK, false);
            getRevenue(new Object[]{this, revenue}, 1290570600, -1290570599, System.identityHashCode(this));
            AFa1tSDK aFa1tSDK = new AFa1tSDK(getCurrencyIso4217Code(), aFh1jSDK.getMonetizationNetwork(revenue).getMonetizationNetwork(monetizationNetwork), getCurrencyIso4217Code().unregisterClient().getCurrencyIso4217Code());
            if (!(!mediationNetwork2)) {
                boolean z2 = false;
                for (AFj1qSDK aFj1qSDK : (AFj1qSDK[]) getRevenue(new Object[]{this}, -187960988, 187961006, System.identityHashCode(this))) {
                    if (aFj1qSDK.areAllFieldsValid == AFj1qSDK.AFa1vSDK.STARTED) {
                        AFLogger.INSTANCE.d(AFg1cSDK.REFERRER, new StringBuilder("Failed to get ").append(aFj1qSDK.getCurrencyIso4217Code).append(" referrer, wait ...").toString());
                        z2 = true;
                    }
                }
                if (((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).unregisterClient().getRevenue()) {
                    AFLogger.INSTANCE.d(AFg1cSDK.REFERRER, "fetching Facebook deferred AppLink data, wait ...");
                    z2 = true;
                }
                if (((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().AFAdRevenueData()) {
                    int i4 = d + 15;
                    AFKeystoreWrapper = i4 % 128;
                    int i5 = i4 % 2;
                } else {
                    z = z2;
                }
            } else {
                z = false;
            }
            ScheduledExecutorService monetizationNetwork2 = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).getMonetizationNetwork();
            if (z) {
                int i6 = AFKeystoreWrapper + 99;
                d = i6 % 128;
                if (i6 % 2 == 0) {
                    int i7 = 29 / 0;
                }
                j = 500;
            } else {
                j = 0;
            }
            AFj1aSDK.AFAdRevenueData(monetizationNetwork2, aFa1tSDK, j, TimeUnit.MILLISECONDS);
            return;
        }
        int i8 = d + 71;
        AFKeystoreWrapper = i8 % 128;
        if (i8 % 2 != 0) {
            AFLogger.INSTANCE.d(AFg1cSDK.ATTRIBUTION, "sendWithEvent - got null context. skipping event/launch.", true);
        } else {
            AFLogger.INSTANCE.d(AFg1cSDK.ATTRIBUTION, "sendWithEvent - got null context. skipping event/launch.", true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0071, code lost:
    
        if (com.appsflyer.internal.AFk1xSDK.getRevenue(((com.appsflyer.internal.AFc1bSDK) getRevenue(new java.lang.Object[]{r1}, 389316487, -389316474, java.lang.System.identityHashCode(r1))).afInfoLog().AFAdRevenueData) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0096, code lost:
    
        if (r8.remove("android_id") == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0098, code lost:
    
        com.appsflyer.AFLogger.afInfoLog("validateGaidAndIMEI :: removing: android_id");
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b8, code lost:
    
        if (com.appsflyer.internal.AFk1xSDK.getRevenue(((com.appsflyer.internal.AFc1bSDK) getRevenue(new java.lang.Object[]{r1}, 389316487, -389316474, java.lang.System.identityHashCode(r1))).AFKeystoreWrapper().getCurrencyIso4217Code()) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c0, code lost:
    
        if (r8.remove("imei") == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c2, code lost:
    
        com.appsflyer.AFLogger.afInfoLog("validateGaidAndIMEI :: removing: imei");
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c8, code lost:
    
        r8 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper + 55;
        com.appsflyer.internal.AFa1uSDK.d = r8 % 128;
        r8 = r8 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d1, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008e, code lost:
    
        if (com.appsflyer.internal.AFk1xSDK.getRevenue(((com.appsflyer.internal.AFc1bSDK) getRevenue(new java.lang.Object[]{r1}, 389316487, -389316474, java.lang.System.identityHashCode(r1))).afInfoLog().AFAdRevenueData) != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object getCurrencyIso4217Code(java.lang.Object[] r8) {
        /*
            r0 = 0
            r1 = r8[r0]
            com.appsflyer.internal.AFa1uSDK r1 = (com.appsflyer.internal.AFa1uSDK) r1
            r2 = 1
            r8 = r8[r2]
            java.util.Map r8 = (java.util.Map) r8
            r3 = 2
            int r4 = r3 % r3
            int r4 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r4 = r4 + 85
            int r5 = r4 % 128
            com.appsflyer.internal.AFa1uSDK.d = r5
            int r4 = r4 % r3
            r5 = 0
            java.lang.String r6 = "collectAndroidIdForceByUser"
            if (r4 != 0) goto L26
            com.appsflyer.AppsFlyerProperties r4 = com.appsflyer.AppsFlyerProperties.getInstance()
            boolean r2 = r4.getBoolean(r6, r2)
            if (r2 != 0) goto Ld8
            goto L30
        L26:
            com.appsflyer.AppsFlyerProperties r4 = com.appsflyer.AppsFlyerProperties.getInstance()
            boolean r4 = r4.getBoolean(r6, r0)
            if (r4 == r2) goto Ld8
        L30:
            com.appsflyer.AppsFlyerProperties r2 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r4 = "collectIMEIForceByUser"
            boolean r2 = r2.getBoolean(r4, r0)
            if (r2 == 0) goto L3e
            goto Ld8
        L3e:
            java.lang.String r2 = "advertiserId"
            java.lang.Object r2 = r8.get(r2)
            if (r2 == 0) goto Ld8
            int r2 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r2 = r2 + 39
            int r4 = r2 % 128
            com.appsflyer.internal.AFa1uSDK.d = r4
            int r2 = r2 % r3
            r4 = -389316474(0xffffffffe8cb8086, float:-7.68809E24)
            r6 = 389316487(0x17347f87, float:5.83221E-25)
            if (r2 != 0) goto L76
            java.lang.Object[] r2 = new java.lang.Object[]{r1}     // Catch: java.lang.Exception -> Ld2
            int r7 = java.lang.System.identityHashCode(r1)     // Catch: java.lang.Exception -> Ld2
            java.lang.Object r2 = getRevenue(r2, r6, r4, r7)     // Catch: java.lang.Exception -> Ld2
            com.appsflyer.internal.AFc1bSDK r2 = (com.appsflyer.internal.AFc1bSDK) r2     // Catch: java.lang.Exception -> Ld2
            com.appsflyer.internal.AFc1eSDK r2 = r2.afInfoLog()     // Catch: java.lang.Exception -> Ld2
            java.lang.String r2 = r2.AFAdRevenueData     // Catch: java.lang.Exception -> Ld2
            boolean r2 = com.appsflyer.internal.AFk1xSDK.getRevenue(r2)     // Catch: java.lang.Exception -> Ld2
            r7 = 3
            int r7 = r7 / r0
            if (r2 != 0) goto L90
            goto L9e
        L74:
            r8 = move-exception
            throw r8
        L76:
            java.lang.Object[] r0 = new java.lang.Object[]{r1}     // Catch: java.lang.Exception -> Ld2
            int r2 = java.lang.System.identityHashCode(r1)     // Catch: java.lang.Exception -> Ld2
            java.lang.Object r0 = getRevenue(r0, r6, r4, r2)     // Catch: java.lang.Exception -> Ld2
            com.appsflyer.internal.AFc1bSDK r0 = (com.appsflyer.internal.AFc1bSDK) r0     // Catch: java.lang.Exception -> Ld2
            com.appsflyer.internal.AFc1eSDK r0 = r0.afInfoLog()     // Catch: java.lang.Exception -> Ld2
            java.lang.String r0 = r0.AFAdRevenueData     // Catch: java.lang.Exception -> Ld2
            boolean r0 = com.appsflyer.internal.AFk1xSDK.getRevenue(r0)     // Catch: java.lang.Exception -> Ld2
            if (r0 == 0) goto L9e
        L90:
            java.lang.String r0 = "android_id"
            java.lang.Object r0 = r8.remove(r0)     // Catch: java.lang.Exception -> Ld2
            if (r0 == 0) goto L9e
            java.lang.String r0 = "validateGaidAndIMEI :: removing: android_id"
            com.appsflyer.AFLogger.afInfoLog(r0)     // Catch: java.lang.Exception -> Ld2
        L9e:
            java.lang.Object[] r0 = new java.lang.Object[]{r1}     // Catch: java.lang.Exception -> Ld2
            int r1 = java.lang.System.identityHashCode(r1)     // Catch: java.lang.Exception -> Ld2
            java.lang.Object r0 = getRevenue(r0, r6, r4, r1)     // Catch: java.lang.Exception -> Ld2
            com.appsflyer.internal.AFc1bSDK r0 = (com.appsflyer.internal.AFc1bSDK) r0     // Catch: java.lang.Exception -> Ld2
            com.appsflyer.internal.AFf1cSDK r0 = r0.AFKeystoreWrapper()     // Catch: java.lang.Exception -> Ld2
            java.lang.String r0 = r0.getCurrencyIso4217Code()     // Catch: java.lang.Exception -> Ld2
            boolean r0 = com.appsflyer.internal.AFk1xSDK.getRevenue(r0)     // Catch: java.lang.Exception -> Ld2
            if (r0 == 0) goto Ld1
            java.lang.String r0 = "imei"
            java.lang.Object r8 = r8.remove(r0)     // Catch: java.lang.Exception -> Ld2
            if (r8 == 0) goto Ld1
            java.lang.String r8 = "validateGaidAndIMEI :: removing: imei"
            com.appsflyer.AFLogger.afInfoLog(r8)     // Catch: java.lang.Exception -> Ld2
            int r8 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r8 = r8 + 55
            int r0 = r8 % 128
            com.appsflyer.internal.AFa1uSDK.d = r0
            int r8 = r8 % r3
        Ld1:
            return r5
        Ld2:
            r8 = move-exception
            java.lang.String r0 = "failed to remove IMEI or AndroidID key from params; "
            com.appsflyer.AFLogger.afErrorLog(r0, r8)
        Ld8:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.getCurrencyIso4217Code(java.lang.Object[]):java.lang.Object");
    }

    final Map<String, Object> getRevenue(AFh1jSDK aFh1jSDK) {
        int i;
        int i2 = 2 % 2;
        Context context = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).registerClient().getRevenue;
        AFc1oSDK aFc1oSDK = (AFc1oSDK) getRevenue(new Object[]{this, context}, -1595266545, 1595266567, System.identityHashCode(this));
        AFg1rSDK component4 = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).component4();
        boolean monetizationNetwork = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMonetizationNetwork();
        boolean mediationNetwork = aFh1jSDK.getMediationNetwork();
        Map<String, Object> map = aFh1jSDK.getCurrencyIso4217Code;
        long time = new Date().getTime();
        Object[] objArr = new Object[1];
        a(null, "\u0089\u0086\u0081\u0084\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081", null, TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 128, objArr);
        map.put(((String) objArr[0]).intern(), Long.toString(time));
        try {
            if (monetizationNetwork) {
                int i3 = AFKeystoreWrapper + 29;
                d = i3 % 128;
                int i4 = i3 % 2;
                AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "AppsFlyer SDK Reporting has been stopped", true);
                i = AFKeystoreWrapper + 123;
            } else {
                AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, new StringBuilder("******* sendTrackingWithEvent: ").append(mediationNetwork ? "Launch" : aFh1jSDK.component4).toString(), true);
                i = AFKeystoreWrapper + 57;
            }
            d = i % 128;
            int i5 = i % 2;
            component2(context);
            int monetizationNetwork2 = getMonetizationNetwork(aFc1oSDK, mediationNetwork);
            int mediationNetwork2 = getMediationNetwork(aFc1oSDK, aFh1jSDK.component4 != null);
            if (mediationNetwork && monetizationNetwork2 == 1) {
                AppsFlyerProperties.getInstance().getRevenue = true;
            }
            component4.getCurrencyIso4217Code(map, monetizationNetwork2, mediationNetwork2);
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Error while preparing to send event", th, true, true, true);
        }
        int i6 = AFKeystoreWrapper + 115;
        d = i6 % 128;
        int i7 = i6 % 2;
        return map;
    }

    private static void component2(Context context) {
        int i = 2 % 2;
        try {
            List asList = Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions);
            if (!asList.contains("android.permission.INTERNET")) {
                int i2 = AFKeystoreWrapper + 73;
                d = i2 % 128;
                int i3 = i2 % 2;
                AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml");
            }
            if (!asList.contains("android.permission.ACCESS_NETWORK_STATE")) {
                int i4 = d + 95;
                AFKeystoreWrapper = i4 % 128;
                int i5 = i4 % 2;
                AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml");
            }
            if (Build.VERSION.SDK_INT > 32 && (!asList.contains("com.google.android.gms.permission.AD_ID"))) {
                AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Permission com.google.android.gms.permission.AD_ID is missing in the AndroidManifest.xml");
                int i6 = AFKeystoreWrapper + 33;
                d = i6 % 128;
                int i7 = i6 % 2;
            }
        } catch (Exception e) {
            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Exception while validation permissions. ", e);
        }
    }

    @Deprecated
    public static Map<String, Object> getMonetizationNetwork(Map<String, Object> map) {
        Map<String, Object> map2;
        int i = 2 % 2;
        int i2 = d + 27;
        AFKeystoreWrapper = i2 % 128;
        int i3 = i2 % 2;
        if (!map.containsKey(Mechanism.JsonKeys.META)) {
            HashMap hashMap = new HashMap();
            map.put(Mechanism.JsonKeys.META, hashMap);
            map2 = hashMap;
        } else {
            int i4 = AFKeystoreWrapper + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
            d = i4 % 128;
            int i5 = i4 % 2;
            map2 = (Map) map.get(Mechanism.JsonKeys.META);
        }
        int i6 = AFKeystoreWrapper + 7;
        d = i6 % 128;
        if (i6 % 2 == 0) {
            int i7 = 71 / 0;
        }
        return map2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0037, code lost:
    
        if (r1 != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getCurrencyIso4217Code(android.app.Activity r9) {
        /*
            r0 = 2
            int r1 = r0 % r0
            r1 = 0
            if (r9 == 0) goto L77
            android.content.Intent r2 = r9.getIntent()
            if (r2 == 0) goto L77
            int r3 = com.appsflyer.internal.AFa1uSDK.d
            int r3 = r3 + 123
            int r4 = r3 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r4
            int r3 = r3 % r0
            android.os.Bundle r3 = r2.getExtras()     // Catch: java.lang.Throwable -> L6b
            if (r3 == 0) goto L77
            int r4 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r4 = r4 + 125
            int r5 = r4 % 128
            com.appsflyer.internal.AFa1uSDK.d = r5
            int r4 = r4 % r0
            java.lang.String r5 = "af"
            if (r4 != 0) goto L33
            java.lang.String r1 = r3.getString(r5)     // Catch: java.lang.Throwable -> L6b
            r4 = 53
            int r4 = r4 / 0
            if (r1 == 0) goto L77
            goto L39
        L33:
            java.lang.String r1 = r3.getString(r5)     // Catch: java.lang.Throwable -> L6b
            if (r1 == 0) goto L77
        L39:
            int r4 = com.appsflyer.internal.AFa1uSDK.d
            int r4 = r4 + 11
            int r6 = r4 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r6
            int r4 = r4 % r0
            com.appsflyer.AFLogger r4 = com.appsflyer.AFLogger.INSTANCE     // Catch: java.lang.Throwable -> L6b
            com.appsflyer.internal.AFg1cSDK r6 = com.appsflyer.internal.AFg1cSDK.ENGAGEMENT     // Catch: java.lang.Throwable -> L6b
            java.lang.String r7 = "Push Notification received af payload = "
            java.lang.String r8 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L6b
            java.lang.String r7 = r7.concat(r8)     // Catch: java.lang.Throwable -> L6b
            r4.w(r6, r7)     // Catch: java.lang.Throwable -> L6b
            r3.remove(r5)     // Catch: java.lang.Throwable -> L6b
            android.content.Intent r2 = r2.putExtras(r3)     // Catch: java.lang.Throwable -> L6b
            r9.setIntent(r2)     // Catch: java.lang.Throwable -> L6b
            int r9 = com.appsflyer.internal.AFa1uSDK.d
            int r9 = r9 + 69
            int r2 = r9 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r2
            int r9 = r9 % r0
            if (r9 == 0) goto L77
            r9 = 3
            int r9 = r9 % r0
            goto L77
        L6b:
            r9 = move-exception
            com.appsflyer.AFLogger r0 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r2 = com.appsflyer.internal.AFg1cSDK.ENGAGEMENT
            java.lang.String r3 = r9.getMessage()
            r0.e(r2, r3, r9)
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.getCurrencyIso4217Code(android.app.Activity):java.lang.String");
    }

    public static boolean getRevenue(Context context) {
        int i = 2 % 2;
        try {
            if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context) == 0) {
                int i2 = AFKeystoreWrapper + 71;
                d = i2 % 128;
                if (i2 % 2 != 0) {
                    return true;
                }
                throw null;
            }
        } catch (Throwable th) {
            AFLogger.afErrorLog("WARNING:  Google play services is unavailable. ", th);
        }
        try {
            context.getPackageManager().getPackageInfo("com.google.android.gms", 0);
            int i3 = d + 107;
            AFKeystoreWrapper = i3 % 128;
            if (i3 % 2 != 0) {
                int i4 = 15 / 0;
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "WARNING:  Google Play Services is unavailable. ", e);
            return false;
        }
    }

    private String getCurrencyIso4217Code(Context context, String str) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 117;
        d = i2 % 128;
        int i3 = i2 % 2;
        if (context == null) {
            return null;
        }
        getMediationNetwork(context);
        String monetizationNetwork = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).getCurrencyIso4217Code().getMonetizationNetwork(str);
        int i4 = AFKeystoreWrapper + 33;
        d = i4 % 128;
        int i5 = i4 % 2;
        return monetizationNetwork;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPreinstallAttribution(String str, String str2, String str3) {
        int i = 2 % 2;
        AFLogger.afDebugLog("setPreinstallAttribution API called");
        JSONObject jSONObject = new JSONObject();
        try {
            if (str != null) {
                int i2 = d + 73;
                AFKeystoreWrapper = i2 % 128;
                if (i2 % 2 != 0) {
                    jSONObject.put("pid", str);
                    int i3 = 48 / 0;
                } else {
                    jSONObject.put("pid", str);
                }
            }
            if (str2 != null) {
                jSONObject.put("c", str2);
                int i4 = d + 69;
                AFKeystoreWrapper = i4 % 128;
                int i5 = i4 % 2;
            }
            if (str3 != null) {
                jSONObject.put("af_siteid", str3);
            }
        } catch (JSONException e) {
            AFLogger.afErrorLog(e.getMessage(), e);
        }
        if (!jSONObject.has("pid")) {
            AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
            return;
        }
        int i6 = d + 77;
        AFKeystoreWrapper = i6 % 128;
        int i7 = i6 % 2;
        getCurrencyIso4217Code("preInstallName", jSONObject.toString());
    }

    private static /* synthetic */ Object getMonetizationNetwork(Object[] objArr) {
        String str = (String) objArr[0];
        int i = 2 % 2;
        try {
            if (!new JSONObject(str).has("pid")) {
                AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
                int i2 = AFKeystoreWrapper + 113;
                d = i2 % 128;
                int i3 = i2 % 2;
                return null;
            }
            int i4 = AFKeystoreWrapper + 45;
            d = i4 % 128;
            if (i4 % 2 == 0) {
                getCurrencyIso4217Code("preInstallName", str);
                throw null;
            }
            getCurrencyIso4217Code("preInstallName", str);
            int i5 = d + 43;
            AFKeystoreWrapper = i5 % 128;
            int i6 = i5 % 2;
            return null;
        } catch (JSONException e) {
            AFLogger.afErrorLog("Error parsing JSON for preinstall", e);
            return null;
        }
    }

    final void component4() {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 9;
        d = i2 % 128;
        int i3 = i2 % 2;
        if (!AFe1dSDK.component2()) {
            AFc1bSDK aFc1bSDK = (AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this));
            AFe1nSDK copydefault = aFc1bSDK.copydefault();
            copydefault.AFAdRevenueData.execute(copydefault.new AnonymousClass3(new AFe1dSDK(aFc1bSDK)));
            return;
        }
        int i4 = AFKeystoreWrapper + 45;
        d = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 68 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final boolean isPreInstalledApp(Context context) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 35;
        d = i2 % 128;
        int i3 = i2 % 2;
        getMediationNetwork(context);
        boolean mediationNetwork = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).getCurrencyIso4217Code().getMediationNetwork(context);
        int i4 = AFKeystoreWrapper + 15;
        d = i4 % 128;
        int i5 = i4 % 2;
        return mediationNetwork;
    }

    public static String getCurrencyIso4217Code(AFc1oSDK aFc1oSDK, String str) {
        int i = 2 % 2;
        Object obj = null;
        String monetizationNetwork = aFc1oSDK.getMonetizationNetwork("CACHED_CHANNEL", null);
        if (monetizationNetwork == null) {
            aFc1oSDK.AFAdRevenueData("CACHED_CHANNEL", str);
            int i2 = d + 77;
            AFKeystoreWrapper = i2 % 128;
            if (i2 % 2 == 0) {
                return str;
            }
            throw null;
        }
        int i3 = d;
        int i4 = i3 + 99;
        AFKeystoreWrapper = i4 % 128;
        if (i4 % 2 != 0) {
            int i5 = 83 / 0;
        }
        int i6 = i3 + 111;
        AFKeystoreWrapper = i6 % 128;
        if (i6 % 2 == 0) {
            return monetizationNetwork;
        }
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getAttributionId(Context context) {
        int i = 2 % 2;
        int i2 = d + 21;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 == 0) {
            getMediationNetwork(context);
            return ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).getCurrencyIso4217Code().getRevenue(context);
        }
        getMediationNetwork(context);
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).getCurrencyIso4217Code().getRevenue(context);
        throw null;
    }

    public static SharedPreferences d_(Context context) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 43;
        d = i2 % 128;
        Object obj = null;
        if (i2 % 2 == 0) {
            SharedPreferences sharedPreferences = getMonetizationNetwork().copy;
            throw null;
        }
        if (getMonetizationNetwork().copy == null) {
            StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
            try {
                getMonetizationNetwork().copy = context.getApplicationContext().getSharedPreferences("appsflyer-data", 0);
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        }
        SharedPreferences sharedPreferences2 = getMonetizationNetwork().copy;
        int i3 = AFKeystoreWrapper + 21;
        d = i3 % 128;
        if (i3 % 2 != 0) {
            return sharedPreferences2;
        }
        obj.hashCode();
        throw null;
    }

    private static /* synthetic */ Object copydefault(Object[] objArr) {
        AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
        Context context = (Context) objArr[1];
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 51;
        d = i2 % 128;
        if (i2 % 2 != 0) {
            aFa1uSDK.getMediationNetwork(context);
            AFc1oSDK component2 = ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).component2();
            int i3 = AFKeystoreWrapper + 47;
            d = i3 % 128;
            if (i3 % 2 == 0) {
                int i4 = 57 / 0;
            }
            return component2;
        }
        aFa1uSDK.getMediationNetwork(context);
        ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).component2();
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    public static int getMonetizationNetwork(AFc1oSDK aFc1oSDK, boolean z) {
        int i = 2 % 2;
        int i2 = d + 95;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 != 0) {
            AFAdRevenueData(aFc1oSDK, "appsFlyerCount", z);
            throw null;
        }
        int AFAdRevenueData2 = AFAdRevenueData(aFc1oSDK, "appsFlyerCount", z);
        int i3 = d + 97;
        AFKeystoreWrapper = i3 % 128;
        int i4 = i3 % 2;
        return AFAdRevenueData2;
    }

    private static int getMediationNetwork(AFc1oSDK aFc1oSDK, boolean z) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 15;
        d = i2 % 128;
        if (i2 % 2 != 0) {
            return AFAdRevenueData(aFc1oSDK, "appsFlyerInAppEventCount", z);
        }
        AFAdRevenueData(aFc1oSDK, "appsFlyerInAppEventCount", z);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
    
        r1 = r1 + 1;
        r4.getRevenue(r5, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001b, code lost:
    
        if (r6 != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0014, code lost:
    
        if (r6 != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int AFAdRevenueData(com.appsflyer.internal.AFc1oSDK r4, java.lang.String r5, boolean r6) {
        /*
            r0 = 2
            int r1 = r0 % r0
            int r1 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r1 = r1 + 33
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1uSDK.d = r2
            int r1 = r1 % r0
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L17
            int r1 = r4.getMediationNetwork(r5, r2)
            if (r6 == 0) goto L21
            goto L1d
        L17:
            int r1 = r4.getMediationNetwork(r5, r3)
            if (r6 == 0) goto L21
        L1d:
            int r1 = r1 + r2
            r4.getRevenue(r5, r1)
        L21:
            int r4 = com.appsflyer.internal.AFa1uSDK.d
            int r4 = r4 + 99
            int r5 = r4 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r5
            int r4 = r4 % r0
            if (r4 == 0) goto L2f
            r4 = 63
            int r4 = r4 / r3
        L2f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.AFAdRevenueData(com.appsflyer.internal.AFc1oSDK, java.lang.String, boolean):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
    
        if (r8 == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x002e, code lost:
    
        if (r8 == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0055, code lost:
    
        getMediationNetwork(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0070, code lost:
    
        return com.appsflyer.internal.AFb1jSDK.getRevenue(((com.appsflyer.internal.AFc1bSDK) getRevenue(new java.lang.Object[]{r7}, 389316487, -389316474, java.lang.System.identityHashCode(r7))).getCurrencyIso4217Code().getMonetizationNetwork);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x004a, code lost:
    
        r8 = com.appsflyer.internal.AFa1uSDK.d + 115;
        com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r8 % 128;
        r8 = r8 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0054, code lost:
    
        return null;
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getAppsFlyerUID(android.content.Context r8) {
        /*
            r7 = this;
            r0 = 2
            int r1 = r0 % r0
            int r1 = com.appsflyer.internal.AFa1uSDK.d
            int r1 = r1 + 55
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r2
            int r1 = r1 % r0
            r2 = 0
            java.lang.String r3 = "getAppsFlyerUID"
            r4 = -389316474(0xffffffffe8cb8086, float:-7.68809E24)
            r5 = 389316487(0x17347f87, float:5.83221E-25)
            if (r1 == 0) goto L31
            java.lang.Object[] r1 = new java.lang.Object[]{r7}
            int r6 = java.lang.System.identityHashCode(r7)
            java.lang.Object r1 = getRevenue(r1, r5, r4, r6)
            com.appsflyer.internal.AFc1bSDK r1 = (com.appsflyer.internal.AFc1bSDK) r1
            com.appsflyer.internal.AFd1mSDK r1 = r1.equals()
            java.lang.String[] r2 = new java.lang.String[r2]
            r1.getCurrencyIso4217Code(r3, r2)
            if (r8 != 0) goto L55
            goto L4a
        L31:
            java.lang.Object[] r1 = new java.lang.Object[]{r7}
            int r6 = java.lang.System.identityHashCode(r7)
            java.lang.Object r1 = getRevenue(r1, r5, r4, r6)
            com.appsflyer.internal.AFc1bSDK r1 = (com.appsflyer.internal.AFc1bSDK) r1
            com.appsflyer.internal.AFd1mSDK r1 = r1.equals()
            java.lang.String[] r2 = new java.lang.String[r2]
            r1.getCurrencyIso4217Code(r3, r2)
            if (r8 != 0) goto L55
        L4a:
            int r8 = com.appsflyer.internal.AFa1uSDK.d
            int r8 = r8 + 115
            int r1 = r8 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r1
            int r8 = r8 % r0
            r8 = 0
            return r8
        L55:
            r7.getMediationNetwork(r8)
            java.lang.Object[] r8 = new java.lang.Object[]{r7}
            int r0 = java.lang.System.identityHashCode(r7)
            java.lang.Object r8 = getRevenue(r8, r5, r4, r0)
            com.appsflyer.internal.AFc1bSDK r8 = (com.appsflyer.internal.AFc1bSDK) r8
            com.appsflyer.internal.AFc1pSDK r8 = r8.getCurrencyIso4217Code()
            com.appsflyer.internal.AFc1oSDK r8 = r8.getMonetizationNetwork
            java.lang.String r8 = com.appsflyer.internal.AFb1jSDK.getRevenue(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.getAppsFlyerUID(android.content.Context):java.lang.String");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void validateAndLogInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        int i = 2 % 2;
        AFd1mSDK equals = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals();
        String[] strArr = new String[6];
        strArr[0] = str;
        strArr[1] = str2;
        strArr[2] = str3;
        strArr[3] = str4;
        strArr[4] = str5;
        strArr[5] = map == null ? "" : map.toString();
        equals.getCurrencyIso4217Code("validateAndTrackInAppPurchase", strArr);
        if (!((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFKeystoreWrapper().getMonetizationNetwork()) {
            AFLogger.INSTANCE.i(AFg1cSDK.PURCHASE_VALIDATION, new StringBuilder("Validate in app called with parameters: ").append(str3).append(" ").append(str4).append(" ").append(str5).toString());
        }
        if (str != null && str4 != null) {
            int i2 = AFKeystoreWrapper;
            int i3 = i2 + 55;
            d = i3 % 128;
            int i4 = i3 % 2;
            if (str2 != null) {
                int i5 = i2 + 105;
                int i6 = i5 % 128;
                d = i6;
                if (i5 % 2 == 0) {
                    throw null;
                }
                if (str5 != null) {
                    int i7 = i6 + 35;
                    AFKeystoreWrapper = i7 % 128;
                    int i8 = i7 % 2;
                    if (str3 != null) {
                        new Thread(new AFa1vSDK(context.getApplicationContext(), getCurrencyIso4217Code().AFKeystoreWrapper().getMediationNetwork(), str, str2, str3, str4, str5, map)).start();
                        return;
                    }
                }
            }
        }
        AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = getCurrencyIso4217Code;
        if (appsFlyerInAppPurchaseValidatorListener != null) {
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure("Please provide purchase parameters");
        }
    }

    private static /* synthetic */ Object toString(Object[] objArr) {
        boolean monetizationNetwork;
        AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 99;
        d = i2 % 128;
        if (i2 % 2 == 0) {
            monetizationNetwork = ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).AFKeystoreWrapper().getMonetizationNetwork();
            int i3 = 64 / 0;
        } else {
            monetizationNetwork = ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).AFKeystoreWrapper().getMonetizationNetwork();
        }
        int i4 = AFKeystoreWrapper + 107;
        d = i4 % 128;
        if (i4 % 2 != 0) {
            return Boolean.valueOf(monetizationNetwork);
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setLogLevel(AFLogger.LogLevel logLevel) {
        boolean z;
        int i = 2 % 2;
        if (logLevel.getLevel() > AFLogger.LogLevel.NONE.getLevel()) {
            int i2 = d + 125;
            AFKeystoreWrapper = i2 % 128;
            int i3 = i2 % 2;
            z = true;
        } else {
            int i4 = d + 43;
            AFKeystoreWrapper = i4 % 128;
            int i5 = i4 % 2;
            z = false;
        }
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals().getCurrencyIso4217Code("log", String.valueOf(z));
        AppsFlyerProperties.getInstance().set("logLevel", logLevel.getLevel());
        if (!z) {
            ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afErrorLog().getRevenue();
            int i6 = AFKeystoreWrapper + 11;
            d = i6 % 128;
            if (i6 % 2 != 0) {
                return;
            }
            Object obj = null;
            obj.hashCode();
            throw null;
        }
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afErrorLog().areAllFieldsValid();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setHost(String str, String str2) {
        String str3;
        int i = 2 % 2;
        if (AFk1xSDK.getMonetizationNetwork(str2)) {
            AFLogger.afWarnLog("hostname was empty or null - call for setHost is skipped");
            return;
        }
        int i2 = d;
        int i3 = i2 + 5;
        AFKeystoreWrapper = i3 % 128;
        int i4 = i3 % 2;
        if (str != null) {
            int i5 = i2 + 67;
            AFKeystoreWrapper = i5 % 128;
            int i6 = i5 % 2;
            str3 = str.trim();
        } else {
            str3 = "";
        }
        AFe1ySDK.getMediationNetwork(new AFe1wSDK(str3, str2.trim()));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getHostName() {
        int i = 2 % 2;
        int i2 = d + 59;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 == 0) {
            return ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFInAppEventParameterName().getCurrencyIso4217Code();
        }
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).AFInAppEventParameterName().getCurrencyIso4217Code();
        throw null;
    }

    private static /* synthetic */ Object AFAdRevenueData(Object[] objArr) {
        AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
        int i = 2 % 2;
        int i2 = d + 11;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 == 0) {
            return ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).AFInAppEventParameterName().getMonetizationNetwork();
        }
        int i3 = 26 / 0;
        return ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).AFInAppEventParameterName().getMonetizationNetwork();
    }

    private static /* synthetic */ Object getRevenue(Object[] objArr) {
        AFa1uSDK aFa1uSDK = (AFa1uSDK) objArr[0];
        PluginInfo pluginInfo = (PluginInfo) objArr[1];
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 79;
        d = i2 % 128;
        Object obj = null;
        if (i2 % 2 != 0) {
            Objects.requireNonNull(pluginInfo);
            ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).e().getMediationNetwork(pluginInfo);
            return null;
        }
        Objects.requireNonNull(pluginInfo);
        ((AFc1bSDK) getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).e().getMediationNetwork(pluginInfo);
        obj.hashCode();
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setConsentData(AppsFlyerConsent appsFlyerConsent) {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 117;
        d = i2 % 128;
        int i3 = i2 % 2;
        Objects.requireNonNull(appsFlyerConsent);
        ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).afInfoLog().areAllFieldsValid = appsFlyerConsent;
        int i4 = AFKeystoreWrapper + 63;
        d = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void validateAndLogInAppPurchase(AFPurchaseDetails aFPurchaseDetails, Map<String, String> map, AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback) {
        int i = 2 % 2;
        AFe1nSDK copydefault = this.hashCode.copydefault();
        copydefault.AFAdRevenueData.execute(copydefault.new AnonymousClass3(new AFf1zSDK(this.hashCode, AppsFlyerProperties.getInstance(), aFPurchaseDetails, map, appsFlyerInAppPurchaseValidationCallback)));
        int i2 = d + 119;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private static void getMediationNetwork(String str) {
        int i = 2 % 2;
        AFLogger.INSTANCE.w(AFg1cSDK.SDK_LIFECYCLE, new StringBuilder("ERROR: AppsFlyer SDK is not initialized! The API call '").append(str).append("()' must be called after the 'init(String, AppsFlyerConversionListener)' API method, which should be called on the Application's onCreate.").toString());
        int i2 = AFKeystoreWrapper + 3;
        d = i2 % 128;
        if (i2 % 2 != 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private static void copydefault() {
        int i = 2 % 2;
        int i2 = d + 121;
        AFKeystoreWrapper = i2 % 128;
        if (i2 % 2 == 0) {
            AFLogger.INSTANCE.w(AFg1cSDK.SDK_LIFECYCLE, "ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the start() API (should be called on Activity's onCreate).");
        } else {
            AFLogger.INSTANCE.w(AFg1cSDK.SDK_LIFECYCLE, "ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the start() API (should be called on Activity's onCreate).");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x008b, code lost:
    
        if (r8 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x008d, code lost:
    
        r8 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper + 83;
        com.appsflyer.internal.AFa1uSDK.d = r8 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0098, code lost:
    
        if ((r8 % 2) == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x009a, code lost:
    
        com.appsflyer.AFLogger.INSTANCE.d(com.appsflyer.internal.AFg1cSDK.GENERAL, "AppsFlyer installId can't be null");
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a1, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00a2, code lost:
    
        com.appsflyer.AFLogger.INSTANCE.d(com.appsflyer.internal.AFg1cSDK.GENERAL, "AppsFlyer installId can't be null");
        r8 = null;
        r8.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ad, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00ae, code lost:
    
        com.appsflyer.internal.AFb1jSDK.getCurrencyIso4217Code(r8, ((com.appsflyer.internal.AFc1bSDK) getRevenue(new java.lang.Object[]{r7}, 389316487, -389316474, java.lang.System.identityHashCode(r7))).component2());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00c3, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        com.appsflyer.AFLogger.INSTANCE.d(com.appsflyer.internal.AFg1cSDK.GENERAL, "AppsFlyerLib.init() method should be called first");
        r8 = com.appsflyer.internal.AFa1uSDK.d + 57;
        com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r8 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
    
        if ((r8 % 2) == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
    
        r8 = 52 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0066, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
    
        if (r7.toString == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0031, code lost:
    
        if (r7.toString == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x007f, code lost:
    
        if (((com.appsflyer.internal.AFc1bSDK) getRevenue(new java.lang.Object[]{r7}, 389316487, -389316474, java.lang.System.identityHashCode(r7))).getCurrencyIso4217Code().getRevenue("APPSFLYER_ALLOW_CUSTOM_INSTALL_ID") != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0081, code lost:
    
        com.appsflyer.AFLogger.INSTANCE.d(com.appsflyer.internal.AFg1cSDK.GENERAL, "APPSFLYER_ALLOW_CUSTOM_INSTALL_ID Manifest flag should be set to true first");
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x008a, code lost:
    
        return;
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setInstallId(java.lang.String r8) {
        /*
            r7 = this;
            r0 = 2
            int r1 = r0 % r0
            int r1 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r1 = r1 + 95
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1uSDK.d = r2
            int r1 = r1 % r0
            java.lang.String r2 = "setInstallId"
            r3 = 0
            r4 = -389316474(0xffffffffe8cb8086, float:-7.68809E24)
            r5 = 389316487(0x17347f87, float:5.83221E-25)
            if (r1 != 0) goto L34
            java.lang.Object[] r1 = new java.lang.Object[]{r7}
            int r6 = java.lang.System.identityHashCode(r7)
            java.lang.Object r1 = getRevenue(r1, r5, r4, r6)
            com.appsflyer.internal.AFc1bSDK r1 = (com.appsflyer.internal.AFc1bSDK) r1
            com.appsflyer.internal.AFd1mSDK r1 = r1.equals()
            java.lang.String[] r6 = new java.lang.String[r3]
            r1.getCurrencyIso4217Code(r2, r6)
            boolean r1 = r7.toString
            if (r1 != 0) goto L67
            goto L4f
        L34:
            java.lang.Object[] r1 = new java.lang.Object[]{r7}
            int r6 = java.lang.System.identityHashCode(r7)
            java.lang.Object r1 = getRevenue(r1, r5, r4, r6)
            com.appsflyer.internal.AFc1bSDK r1 = (com.appsflyer.internal.AFc1bSDK) r1
            com.appsflyer.internal.AFd1mSDK r1 = r1.equals()
            java.lang.String[] r6 = new java.lang.String[r3]
            r1.getCurrencyIso4217Code(r2, r6)
            boolean r1 = r7.toString
            if (r1 != 0) goto L67
        L4f:
            com.appsflyer.AFLogger r8 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r1 = com.appsflyer.internal.AFg1cSDK.GENERAL
            java.lang.String r2 = "AppsFlyerLib.init() method should be called first"
            r8.d(r1, r2)
            int r8 = com.appsflyer.internal.AFa1uSDK.d
            int r8 = r8 + 57
            int r1 = r8 % 128
            com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper = r1
            int r8 = r8 % r0
            if (r8 == 0) goto L66
            r8 = 52
            int r8 = r8 / r3
        L66:
            return
        L67:
            java.lang.Object[] r1 = new java.lang.Object[]{r7}
            int r2 = java.lang.System.identityHashCode(r7)
            java.lang.Object r1 = getRevenue(r1, r5, r4, r2)
            com.appsflyer.internal.AFc1bSDK r1 = (com.appsflyer.internal.AFc1bSDK) r1
            com.appsflyer.internal.AFc1pSDK r1 = r1.getCurrencyIso4217Code()
            java.lang.String r2 = "APPSFLYER_ALLOW_CUSTOM_INSTALL_ID"
            boolean r1 = r1.getRevenue(r2)
            if (r1 != 0) goto L8b
            com.appsflyer.AFLogger r8 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r0 = com.appsflyer.internal.AFg1cSDK.GENERAL
            java.lang.String r1 = "APPSFLYER_ALLOW_CUSTOM_INSTALL_ID Manifest flag should be set to true first"
            r8.d(r0, r1)
            return
        L8b:
            if (r8 != 0) goto Lae
            int r8 = com.appsflyer.internal.AFa1uSDK.AFKeystoreWrapper
            int r8 = r8 + 83
            int r1 = r8 % 128
            com.appsflyer.internal.AFa1uSDK.d = r1
            int r8 = r8 % r0
            java.lang.String r0 = "AppsFlyer installId can't be null"
            if (r8 == 0) goto La2
            com.appsflyer.AFLogger r8 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r1 = com.appsflyer.internal.AFg1cSDK.GENERAL
            r8.d(r1, r0)
            return
        La2:
            com.appsflyer.AFLogger r8 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r1 = com.appsflyer.internal.AFg1cSDK.GENERAL
            r8.d(r1, r0)
            r8 = 0
            r8.hashCode()
            throw r8
        Lae:
            java.lang.Object[] r0 = new java.lang.Object[]{r7}
            int r1 = java.lang.System.identityHashCode(r7)
            java.lang.Object r0 = getRevenue(r0, r5, r4, r1)
            com.appsflyer.internal.AFc1bSDK r0 = (com.appsflyer.internal.AFc1bSDK) r0
            com.appsflyer.internal.AFc1oSDK r0 = r0.component2()
            com.appsflyer.internal.AFb1jSDK.getCurrencyIso4217Code(r8, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.setInstallId(java.lang.String):void");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void disableAppSetId() {
        int i = 2 % 2;
        int i2 = AFKeystoreWrapper + 11;
        d = i2 % 128;
        ((AFc1bSDK) (i2 % 2 == 0 ? getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this)) : getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this)))).afInfoLog().component1 = true;
        int i3 = AFKeystoreWrapper + 33;
        d = i3 % 128;
        if (i3 % 2 != 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    /* renamed from: com.appsflyer.internal.AFa1uSDK$AFa1uSDK, reason: collision with other inner class name */
    class C0007AFa1uSDK implements AFe1sSDK {
        @Override // com.appsflyer.internal.AFe1sSDK
        public final void getMediationNetwork(AFe1lSDK<?> aFe1lSDK) {
        }

        C0007AFa1uSDK() {
        }

        @Override // com.appsflyer.internal.AFe1sSDK
        public final void getMonetizationNetwork(AFe1lSDK<?> aFe1lSDK, AFe1uSDK aFe1uSDK) {
            JSONObject AFAdRevenueData;
            AFf1aSDK revenue;
            if (aFe1lSDK instanceof AFf1uSDK) {
                AFf1uSDK aFf1uSDK = (AFf1uSDK) aFe1lSDK;
                boolean z = aFe1lSDK instanceof AFf1rSDK;
                if (z && getMediationNetwork()) {
                    AFf1rSDK aFf1rSDK = (AFf1rSDK) aFe1lSDK;
                    if (aFf1rSDK.AFAdRevenueData == AFe1uSDK.SUCCESS || aFf1rSDK.getMonetizationNetwork == 1) {
                        AFg1iSDK aFg1iSDK = new AFg1iSDK(aFf1rSDK, AFa1uSDK.this.getCurrencyIso4217Code().component2());
                        AFa1uSDK aFa1uSDK = AFa1uSDK.this;
                        AFe1nSDK copydefault = ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK}, 389316487, -389316474, System.identityHashCode(aFa1uSDK))).copydefault();
                        copydefault.AFAdRevenueData.execute(copydefault.new AnonymousClass3(aFg1iSDK));
                    }
                }
                AFa1uSDK aFa1uSDK2 = AFa1uSDK.this;
                AFh1qSDK afLogForce = ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK2}, 389316487, -389316474, System.identityHashCode(aFa1uSDK2))).afLogForce();
                if (afLogForce != null && z) {
                    afLogForce.getMonetizationNetwork((AFf1rSDK) aFe1lSDK, new Function0() { // from class: com.appsflyer.internal.AFa1uSDK$AFa1uSDK$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit monetizationNetwork;
                            monetizationNetwork = AFa1uSDK.C0007AFa1uSDK.this.getMonetizationNetwork();
                            return monetizationNetwork;
                        }
                    });
                }
                if (aFe1uSDK == AFe1uSDK.SUCCESS) {
                    AFa1uSDK aFa1uSDK3 = AFa1uSDK.this;
                    ((AFc1oSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK3, aFa1uSDK3.component3}, -1595266545, 1595266567, System.identityHashCode(aFa1uSDK3))).AFAdRevenueData("sentSuccessfully", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                    if (!(aFe1lSDK instanceof AFf1pSDK) && (revenue = new AFg1tSDK(AFa1uSDK.this.component3).getRevenue()) != null && revenue.getMediationNetwork) {
                        String str = revenue.getMonetizationNetwork;
                        AFLogger.INSTANCE.d(AFg1cSDK.UNINSTALL, "Resending Uninstall token to AF servers: ".concat(String.valueOf(str)));
                        AFa1uSDK monetizationNetwork = AFa1uSDK.getMonetizationNetwork();
                        AFc1bSDK aFc1bSDK = (AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{monetizationNetwork}, 389316487, -389316474, System.identityHashCode(monetizationNetwork));
                        AFf1pSDK aFf1pSDK = new AFf1pSDK(str, aFc1bSDK);
                        AFe1nSDK copydefault2 = aFc1bSDK.copydefault();
                        copydefault2.AFAdRevenueData.execute(copydefault2.new AnonymousClass3(aFf1pSDK));
                    }
                    ResponseNetwork responseNetwork = ((AFe1eSDK) aFf1uSDK).component3;
                    if (responseNetwork != null && (AFAdRevenueData = AFa1oSDK.AFAdRevenueData((String) responseNetwork.getBody())) != null) {
                        AFa1uSDK.this.component1 = AFAdRevenueData.optBoolean("send_background", false);
                    }
                    if (z) {
                        AFa1uSDK.this.getMonetizationNetwork = System.currentTimeMillis();
                        return;
                    }
                    return;
                }
                return;
            }
            if (!(aFe1lSDK instanceof AFg1iSDK) || aFe1uSDK == AFe1uSDK.SUCCESS) {
                return;
            }
            AFg1nSDK aFg1nSDK = new AFg1nSDK(AFa1uSDK.this.getCurrencyIso4217Code());
            AFa1uSDK aFa1uSDK4 = AFa1uSDK.this;
            AFe1nSDK copydefault3 = ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{aFa1uSDK4}, 389316487, -389316474, System.identityHashCode(aFa1uSDK4))).copydefault();
            copydefault3.AFAdRevenueData.execute(copydefault3.new AnonymousClass3(aFg1nSDK));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit getMonetizationNetwork() {
            AFa1uSDK.this.getCurrencyIso4217Code(new AFh1kSDK());
            return Unit.INSTANCE;
        }

        private boolean getMediationNetwork() {
            return AFa1uSDK.this.getMediationNetwork != null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logEvent(Context context, String str, Map<String, Object> map, AppsFlyerRequestListener appsFlyerRequestListener) {
        HashMap hashMap = map == null ? null : new HashMap(map);
        getMediationNetwork(context);
        AFh1hSDK aFh1hSDK = new AFh1hSDK();
        aFh1hSDK.component4 = str;
        aFh1hSDK.getMonetizationNetwork = appsFlyerRequestListener;
        if (hashMap != null && hashMap.containsKey(AFInAppEventParameterName.TOUCH_OBJ)) {
            HashMap hashMap2 = new HashMap();
            Object obj = hashMap.get(AFInAppEventParameterName.TOUCH_OBJ);
            if (obj instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) obj;
                HashMap hashMap3 = new HashMap();
                hashMap3.put("x", Float.valueOf(motionEvent.getX()));
                hashMap3.put("y", Float.valueOf(motionEvent.getY()));
                hashMap2.put("loc", hashMap3);
                hashMap2.put("pf", Float.valueOf(motionEvent.getPressure()));
                hashMap2.put("rad", Float.valueOf(motionEvent.getTouchMajor() / 2.0f));
            } else {
                hashMap2.put("error", "Parsing failed due to invalid input in 'af_touch_obj'.");
                AFLogger.INSTANCE.w(AFg1cSDK.PREDICT, "Parsing failed due to invalid input in 'af_touch_obj'.", true);
            }
            Map<String, ?> singletonMap = Collections.singletonMap("tch_data", hashMap2);
            hashMap.remove(AFInAppEventParameterName.TOUCH_OBJ);
            aFh1hSDK.getMonetizationNetwork(singletonMap);
        }
        aFh1hSDK.AFAdRevenueData = hashMap;
        AFd1mSDK equals = ((AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this))).equals();
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = new JSONObject(aFh1hSDK.AFAdRevenueData == null ? new HashMap() : aFh1hSDK.AFAdRevenueData).toString();
        equals.getCurrencyIso4217Code("logEvent", strArr);
        if (str == null) {
            getMediationNetwork(context, AFh1xSDK.logEvent);
        }
        getMediationNetwork(aFh1hSDK, AFAdRevenueData(context));
    }

    static void component3() {
        AFInAppEventParameterName = new char[]{35848, 35853, 35850, 35871, 35840, 35844, 35852, 35870, 35867};
        AFInAppEventType = 1912311211;
        registerClient = true;
        AFLogger = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e_(Context context, Intent intent) {
        getRevenue(new Object[]{this, context, intent}, 253751881, -253751860, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPluginInfo(PluginInfo pluginInfo) {
        getRevenue(new Object[]{this, pluginInfo}, 1343916491, -1343916486, System.identityHashCode(this));
    }

    private AFj1qSDK[] component1() {
        return (AFj1qSDK[]) getRevenue(new Object[]{this}, -187960988, 187961006, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setMinTimeBetweenSessions(int i) {
        getRevenue(new Object[]{this, Integer.valueOf(i)}, 1308989660, -1308989654, i);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getHostPrefix() {
        return (String) getRevenue(new Object[]{this}, 103305784, -103305776, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final boolean isStopped() {
        return ((Boolean) getRevenue(new Object[]{this}, 224962975, -224962956, System.identityHashCode(this))).booleanValue();
    }

    public final AFc1oSDK getCurrencyIso4217Code(Context context) {
        return (AFc1oSDK) getRevenue(new Object[]{this, context}, -1595266545, 1595266567, System.identityHashCode(this));
    }

    private static void getMonetizationNetwork(String str) {
        getRevenue(new Object[]{str}, 698517988, -698517984, (int) System.currentTimeMillis());
    }

    private void getRevenue(Map<String, Object> map) {
        getRevenue(new Object[]{this, map}, 1290570600, -1290570599, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void unregisterConversionListener() {
        getRevenue(new Object[]{this}, 1122585742, -1122585731, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logEvent(Context context, String str, Map<String, Object> map) {
        getRevenue(new Object[]{this, context, str, map}, -1613836572, 1613836582, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener, Context context) {
        return (AppsFlyerLib) getRevenue(new Object[]{this, str, appsFlyerConversionListener, context}, 519263238, -519263223, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCollectAndroidID(boolean z) {
        getRevenue(new Object[]{this, Boolean.valueOf(z)}, 454542992, -454542992, System.identityHashCode(this));
    }

    private static void getRevenue(String str, boolean z) {
        getRevenue(new Object[]{str, Boolean.valueOf(z)}, -222394073, 222394090, (int) System.currentTimeMillis());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void updateServerUninstallToken(Context context, String str) {
        getRevenue(new Object[]{this, context, str}, 912251885, -912251862, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void enableTCFDataCollection(boolean z) {
        getRevenue(new Object[]{this, Boolean.valueOf(z)}, 163982159, -163982156, System.identityHashCode(this));
    }

    final void b_(Context context, Intent intent) {
        getRevenue(new Object[]{this, context, intent}, -1666869813, 1666869820, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDisableNetworkData(boolean z) {
        getRevenue(new Object[]{this, Boolean.valueOf(z)}, 775079759, -775079747, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void addPushNotificationDeepLinkPath(String... strArr) {
        getRevenue(new Object[]{this, strArr}, -503631880, 503631889, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void subscribeForDeepLink(DeepLinkListener deepLinkListener) {
        getRevenue(new Object[]{this, deepLinkListener}, 1831672072, -1831672058, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendInAppPurchaseData(Context context, Map<String, Object> map, PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        getRevenue(new Object[]{this, context, map, purchaseValidationCallback}, 788315212, -788315188, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setSharingFilterForPartners(String... strArr) {
        getRevenue(new Object[]{this, strArr}, -251208297, 251208317, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setSharingFilter(String... strArr) {
        getRevenue(new Object[]{this, strArr}, -134062068, 134062070, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void performOnAppAttribution(Context context, URI uri) {
        getRevenue(new Object[]{this, context, uri}, 1798513644, -1798513628, System.identityHashCode(this));
    }

    public final AFc1bSDK getCurrencyIso4217Code() {
        return (AFc1bSDK) getRevenue(new Object[]{this}, 389316487, -389316474, System.identityHashCode(this));
    }
}
