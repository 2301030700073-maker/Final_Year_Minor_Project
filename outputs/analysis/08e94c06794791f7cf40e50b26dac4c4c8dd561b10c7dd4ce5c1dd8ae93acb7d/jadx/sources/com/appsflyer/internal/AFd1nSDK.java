package com.appsflyer.internal;

import android.content.pm.PackageManager;
import android.media.AudioTrack;
import android.os.Build;
import android.view.ViewConfiguration;
import androidx.appcompat.app.AppCompatDelegate;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import io.sentry.SentryEvent;
import io.sentry.protocol.App;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class AFd1nSDK implements AFd1mSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static char[] component2 = null;
    private static int copy = 1;
    private static char equals;
    private static final int getRevenue;
    private static int hashCode;
    private final AFc1bSDK component1;
    private List<String> getCurrencyIso4217Code = new ArrayList();
    private boolean AFAdRevenueData = true;
    private final Map<String, Object> getMediationNetwork = new HashMap();
    private SecureRandom component3 = new SecureRandom();
    private boolean areAllFieldsValid = true ^ AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
    private int getMonetizationNetwork = 0;
    private boolean component4 = false;

    public static /* synthetic */ Object AFAdRevenueData(Object[] objArr, int i, int i2, int i3) {
        int i4 = (i * (-755)) + (i2 * (-755));
        int i5 = ~((~i) | (~i2));
        int i6 = i | i2;
        int i7 = i4 + (i5 * 1512) + (((~(i6 | i3)) | i5) * (-756)) + ((i6 | (~i3)) * 756);
        if (i7 == 1) {
            return getMediationNetwork(objArr);
        }
        if (i7 == 2) {
            return getRevenue(objArr);
        }
        if (i7 != 3) {
            AFd1nSDK aFd1nSDK = (AFd1nSDK) objArr[0];
            int i8 = 2 % 2;
            int i9 = hashCode + 43;
            copy = i9 % 128;
            int i10 = i9 % 2;
            boolean mediationNetwork = aFd1nSDK.component1.component2().getMediationNetwork("participantInProxy", false);
            int i11 = hashCode + 45;
            copy = i11 % 128;
            int i12 = i11 % 2;
            return Boolean.valueOf(mediationNetwork);
        }
        AFd1nSDK aFd1nSDK2 = (AFd1nSDK) objArr[0];
        String str = (String) objArr[1];
        String str2 = (String) objArr[2];
        int i13 = 2 % 2;
        int i14 = copy + 45;
        hashCode = i14 % 128;
        if (i14 % 2 != 0) {
            String[] strArr = new String[0];
            strArr[0] = str2;
            aFd1nSDK2.getCurrencyIso4217Code("server_request", str, strArr);
        } else {
            aFd1nSDK2.getCurrencyIso4217Code("server_request", str, str2);
        }
        return null;
    }

    static {
        component2();
        getRevenue = 98166;
        int i = copy + 61;
        hashCode = i % 128;
        int i2 = i % 2;
    }

    public AFd1nSDK(AFc1bSDK aFc1bSDK) {
        this.component1 = aFc1bSDK;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005a, code lost:
    
        component3();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
    
        if ((!r1) != true) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0032, code lost:
    
        if (r1 != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x005e, code lost:
    
        getMediationNetwork();
        AFAdRevenueData();
        r2 = com.appsflyer.internal.AFd1nSDK.hashCode + 81;
        com.appsflyer.internal.AFd1nSDK.copy = r2 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x006d, code lost:
    
        if ((r2 % 2) != 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x006f, code lost:
    
        r0 = 2 % 3;
     */
    @Override // com.appsflyer.internal.AFd1mSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean getCurrencyIso4217Code() {
        /*
            r4 = this;
            r0 = 2
            int r1 = r0 % r0
            int r1 = com.appsflyer.internal.AFd1nSDK.hashCode
            int r1 = r1 + 45
            int r2 = r1 % 128
            com.appsflyer.internal.AFd1nSDK.copy = r2
            int r1 = r1 % r0
            if (r1 != 0) goto L35
            com.appsflyer.internal.AFc1bSDK r1 = r4.component1
            com.appsflyer.internal.AFf1lSDK r1 = r1.component1()
            com.appsflyer.internal.AFf1iSDK r1 = r1.AFAdRevenueData
            com.appsflyer.internal.AFi1wSDK r1 = r1.AFAdRevenueData
            com.appsflyer.internal.AFi1ySDK r1 = getMonetizationNetwork(r1)
            com.appsflyer.internal.AFc1bSDK r2 = r4.component1
            com.appsflyer.internal.AFf1lSDK r2 = r2.component1()
            com.appsflyer.internal.AFf1iSDK r2 = r2.AFAdRevenueData
            com.appsflyer.internal.AFi1wSDK r2 = r2.getMediationNetwork
            com.appsflyer.internal.AFi1ySDK r2 = getMonetizationNetwork(r2)
            boolean r1 = r4.getCurrencyIso4217Code(r1, r2)
            r2 = 94
            int r2 = r2 / 0
            if (r1 == 0) goto L5e
            goto L5a
        L35:
            com.appsflyer.internal.AFc1bSDK r1 = r4.component1
            com.appsflyer.internal.AFf1lSDK r1 = r1.component1()
            com.appsflyer.internal.AFf1iSDK r1 = r1.AFAdRevenueData
            com.appsflyer.internal.AFi1wSDK r1 = r1.AFAdRevenueData
            com.appsflyer.internal.AFi1ySDK r1 = getMonetizationNetwork(r1)
            com.appsflyer.internal.AFc1bSDK r2 = r4.component1
            com.appsflyer.internal.AFf1lSDK r2 = r2.component1()
            com.appsflyer.internal.AFf1iSDK r2 = r2.AFAdRevenueData
            com.appsflyer.internal.AFi1wSDK r2 = r2.getMediationNetwork
            com.appsflyer.internal.AFi1ySDK r2 = getMonetizationNetwork(r2)
            boolean r1 = r4.getCurrencyIso4217Code(r1, r2)
            r2 = r1 ^ 1
            r3 = 1
            if (r2 == r3) goto L5e
        L5a:
            r4.component3()
            goto L71
        L5e:
            r4.getMediationNetwork()
            r4.AFAdRevenueData()
            int r2 = com.appsflyer.internal.AFd1nSDK.hashCode
            int r2 = r2 + 81
            int r3 = r2 % 128
            com.appsflyer.internal.AFd1nSDK.copy = r3
            int r2 = r2 % r0
            if (r2 != 0) goto L71
            int r0 = r0 % 3
        L71:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1nSDK.getCurrencyIso4217Code():boolean");
    }

    private synchronized void component3() {
        int i = 2 % 2;
        int i2 = hashCode;
        int i3 = i2 + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
        copy = i3 % 128;
        int i4 = i3 % 2;
        if (!this.component4) {
            this.component4 = true;
            try {
                getCurrencyIso4217Code("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
                return;
            } catch (Throwable th) {
                AFLogger.INSTANCE.e(AFg1cSDK.PROXY, "Error while starting remote debugger", th, true, true, true);
                return;
            }
        }
        int i5 = i2 + 103;
        copy = i5 % 128;
        int i6 = i5 % 2;
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final synchronized void AFAdRevenueData() {
        int i = 2 % 2;
        if (!this.component4 && !this.AFAdRevenueData) {
            int i2 = copy + 93;
            hashCode = i2 % 128;
            if (i2 % 2 == 0) {
                return;
            } else {
                throw null;
            }
        }
        this.component4 = false;
        this.AFAdRevenueData = false;
        try {
            getCurrencyIso4217Code("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
            int i3 = hashCode + 41;
            copy = i3 % 128;
            int i4 = i3 % 2;
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(AFg1cSDK.PROXY, "Error while stopping remote debugger", th, true, true, true);
        }
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final synchronized void getRevenue() {
        int i = 2 % 2;
        int i2 = copy + 53;
        hashCode = i2 % 128;
        int i3 = i2 % 2;
        this.getMediationNetwork.clear();
        this.getCurrencyIso4217Code.clear();
        this.getMonetizationNetwork = 0;
        int i4 = copy + 125;
        hashCode = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
    
        if (r6 == null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object getMediationNetwork(java.lang.Object[] r6) {
        /*
            r0 = 0
            r1 = r6[r0]
            com.appsflyer.internal.AFd1nSDK r1 = (com.appsflyer.internal.AFd1nSDK) r1
            r2 = 1
            r2 = r6[r2]
            java.lang.String r2 = (java.lang.String) r2
            r3 = 2
            r6 = r6[r3]
            android.content.pm.PackageManager r6 = (android.content.pm.PackageManager) r6
            int r6 = r3 % r3
            int r6 = com.appsflyer.internal.AFd1nSDK.copy
            int r6 = r6 + 61
            int r4 = r6 % 128
            com.appsflyer.internal.AFd1nSDK.hashCode = r4
            int r6 = r6 % r3
            r4 = 0
            if (r6 == 0) goto L3d
            java.util.Map r6 = r1.getMonetizationNetwork(r2)     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFc1bSDK r2 = r1.component1     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFf1cSDK r2 = r2.AFKeystoreWrapper()     // Catch: java.lang.Throwable -> L3b
            java.lang.String r2 = r2.getMediationNetwork()     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFc1bSDK r5 = r1.component1     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFd1lSDK r5 = r5.getRevenue()     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFd1oSDK r6 = r5.getMediationNetwork(r6, r2)     // Catch: java.lang.Throwable -> L3b
            r2 = 37
            int r2 = r2 / r0
            if (r6 != 0) goto L65
            goto L57
        L3b:
            r6 = move-exception
            goto L83
        L3d:
            java.util.Map r6 = r1.getMonetizationNetwork(r2)     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFc1bSDK r0 = r1.component1     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFf1cSDK r0 = r0.AFKeystoreWrapper()     // Catch: java.lang.Throwable -> L3b
            java.lang.String r0 = r0.getMediationNetwork()     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFc1bSDK r2 = r1.component1     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFd1lSDK r2 = r2.getRevenue()     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFd1oSDK r6 = r2.getMediationNetwork(r6, r0)     // Catch: java.lang.Throwable -> L3b
            if (r6 != 0) goto L65
        L57:
            java.lang.String r6 = "could not send null proxy data"
            java.lang.NullPointerException r0 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> L3b
            java.lang.String r1 = "request was null"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.AFLogger.afErrorLogForExcManagerOnly(r6, r0)     // Catch: java.lang.Throwable -> L3b
            return r4
        L65:
            com.appsflyer.internal.AFc1bSDK r0 = r1.component1     // Catch: java.lang.Throwable -> L3b
            java.util.concurrent.ExecutorService r0 = r0.getMediationNetwork()     // Catch: java.lang.Throwable -> L3b
            java.util.Objects.requireNonNull(r6)     // Catch: java.lang.Throwable -> L3b
            com.appsflyer.internal.AFd1nSDK$$ExternalSyntheticLambda0 r1 = new com.appsflyer.internal.AFd1nSDK$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> L3b
            r1.<init>()     // Catch: java.lang.Throwable -> L3b
            r0.execute(r1)     // Catch: java.lang.Throwable -> L3b
            int r6 = com.appsflyer.internal.AFd1nSDK.hashCode
            int r6 = r6 + 75
            int r0 = r6 % 128
            com.appsflyer.internal.AFd1nSDK.copy = r0
            int r6 = r6 % r3
            if (r6 == 0) goto L82
            return r4
        L82:
            throw r4
        L83:
            java.lang.String r0 = "could not send proxy data"
            com.appsflyer.AFLogger.afErrorLogForExcManagerOnly(r0, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1nSDK.getMediationNetwork(java.lang.Object[]):java.lang.Object");
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final void getCurrencyIso4217Code(String str, String... strArr) {
        int i = 2 % 2;
        int i2 = hashCode + 105;
        copy = i2 % 128;
        if (i2 % 2 == 0) {
            getCurrencyIso4217Code("public_api_call", str, strArr);
            int i3 = 57 / 0;
        } else {
            getCurrencyIso4217Code("public_api_call", str, strArr);
        }
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final void getMonetizationNetwork(Throwable th) {
        String str;
        int i = 2 % 2;
        int i2 = copy + 21;
        hashCode = i2 % 128;
        int i3 = i2 % 2;
        Throwable cause = th.getCause();
        String simpleName = th.getClass().getSimpleName();
        if (cause == null) {
            str = th.getMessage();
        } else {
            String message = cause.getMessage();
            int i4 = hashCode + 61;
            copy = i4 % 128;
            if (i4 % 2 == 0) {
                int i5 = 4 % 5;
            }
            str = message;
        }
        getCurrencyIso4217Code(SentryEvent.JsonKeys.EXCEPTION, simpleName, getMediationNetwork(str, cause == null ? th.getStackTrace() : cause.getStackTrace()));
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final void getMonetizationNetwork(String str, int i, String str2) {
        int i2 = 2 % 2;
        int i3 = copy + 111;
        hashCode = i3 % 128;
        int i4 = i3 % 2;
        getCurrencyIso4217Code("server_response", str, String.valueOf(i), str2);
        int i5 = hashCode + 5;
        copy = i5 % 128;
        if (i5 % 2 == 0) {
            throw null;
        }
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final void getRevenue(String str, String str2) {
        int i = 2 % 2;
        int i2 = copy + 3;
        hashCode = i2 % 128;
        if (i2 % 2 != 0) {
            String[] strArr = new String[0];
            strArr[0] = str2;
            getCurrencyIso4217Code(null, str, strArr);
        } else {
            getCurrencyIso4217Code(null, str, str2);
        }
        int i3 = hashCode + 61;
        copy = i3 % 128;
        if (i3 % 2 == 0) {
            int i4 = 81 / 0;
        }
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final synchronized void getMediationNetwork() {
        int i = 2 % 2;
        int i2 = copy + 13;
        hashCode = i2 % 128;
        if (i2 % 2 != 0) {
            this.AFAdRevenueData = false;
            getRevenue();
        } else {
            this.AFAdRevenueData = false;
            getRevenue();
        }
        copydefault();
        int i3 = copy + 81;
        hashCode = i3 % 128;
        if (i3 % 2 != 0) {
            int i4 = 88 / 0;
        }
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final void getMonetizationNetwork() {
        int i = 2 % 2;
        int i2 = copy + 83;
        int i3 = i2 % 128;
        hashCode = i3;
        int i4 = i2 % 2;
        this.areAllFieldsValid = false;
        int i5 = i3 + 99;
        copy = i5 % 128;
        int i6 = i5 % 2;
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final boolean areAllFieldsValid() {
        int i = 2 % 2;
        int i2 = copy + 17;
        int i3 = i2 % 128;
        hashCode = i3;
        int i4 = i2 % 2;
        boolean z = this.component4;
        int i5 = i3 + 47;
        copy = i5 % 128;
        int i6 = i5 % 2;
        return z;
    }

    private float component1() {
        int i = 2 % 2;
        int i2 = copy + 29;
        hashCode = i2 % 128;
        Object obj = null;
        if (i2 % 2 != 0) {
            this.component3.nextFloat();
            obj.hashCode();
            throw null;
        }
        float nextFloat = this.component3.nextFloat();
        int i3 = copy + 123;
        hashCode = i3 % 128;
        if (i3 % 2 == 0) {
            return nextFloat;
        }
        obj.hashCode();
        throw null;
    }

    private Map<String, Object> getMonetizationNetwork(String str) {
        int i = 2 % 2;
        int i2 = copy + 39;
        hashCode = i2 % 128;
        int i3 = i2 % 2;
        getMonetizationNetwork(str, this.component1.AFKeystoreWrapper(), this.component1.afInfoLog());
        Map<String, Object> equals2 = equals();
        int i4 = hashCode + 45;
        copy = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 30 / 0;
        }
        return equals2;
    }

    private static String component4() {
        int i = 2 % 2;
        int i2 = copy + 23;
        int i3 = i2 % 128;
        hashCode = i3;
        int i4 = i2 % 2;
        int i5 = i3 + 103;
        copy = i5 % 128;
        if (i5 % 2 == 0) {
            int i6 = 65 / 0;
        }
        return "6.17.3";
    }

    private boolean copy() {
        int i = 2 % 2;
        if (!this.areAllFieldsValid) {
            return false;
        }
        int i2 = copy;
        int i3 = i2 + 91;
        hashCode = i3 % 128;
        int i4 = i3 % 2;
        if (!this.AFAdRevenueData) {
            int i5 = i2 + 111;
            hashCode = i5 % 128;
            if (i5 % 2 != 0) {
                throw null;
            }
            if (!this.component4) {
                return false;
            }
        }
        return true;
    }

    private synchronized void getRevenue(String str, String str2, String str3) {
        int i = 2 % 2;
        try {
            Map<String, Object> map = this.getMediationNetwork;
            Object[] objArr = new Object[1];
            a((byte) (114 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)), "\u0002\b\u0007\u0003㙰", 6 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), objArr);
            map.put(((String) objArr[0]).intern(), Build.BRAND);
            this.getMediationNetwork.put("model", Build.MODEL);
            this.getMediationNetwork.put("platform", "Android");
            this.getMediationNetwork.put("platform_version", Build.VERSION.RELEASE);
            if (str != null) {
                int i2 = copy + 43;
                hashCode = i2 % 128;
                int i3 = i2 % 2;
                if (str.length() > 0) {
                    int i4 = copy + 45;
                    hashCode = i4 % 128;
                    int i5 = i4 % 2;
                    this.getMediationNetwork.put("advertiserId", str);
                }
            }
            if (str2 != null && str2.length() > 0) {
                this.getMediationNetwork.put("imei", str2);
                int i6 = 2 % 2;
            }
            if (str3 != null) {
                int i7 = hashCode + 49;
                copy = i7 % 128;
                int i8 = i7 % 2;
                if (str3.length() > 0) {
                    this.getMediationNetwork.put("android_id", str3);
                    int i9 = hashCode + 63;
                    copy = i9 % 128;
                    int i10 = i9 % 2;
                    int i11 = 2 % 2;
                }
            }
        } catch (Throwable unused) {
        }
    }

    private synchronized void getRevenue(String str, String str2, String str3, String str4) {
        int i = 2 % 2;
        int i2 = copy + 11;
        hashCode = i2 % 128;
        int i3 = i2 % 2;
        try {
            this.getMediationNetwork.put("sdk_version", str);
            if (str2 != null) {
                int i4 = hashCode + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
                copy = i4 % 128;
                int i5 = i4 % 2;
                if (str2.length() > 0) {
                    int i6 = copy + 101;
                    hashCode = i6 % 128;
                    if (i6 % 2 != 0) {
                        this.getMediationNetwork.put("devkey", str2);
                        throw null;
                    }
                    this.getMediationNetwork.put("devkey", str2);
                    int i7 = 2 % 2;
                }
            }
            if (str3 != null && str3.length() > 0) {
                this.getMediationNetwork.put("originalAppsFlyerId", str3);
            }
            if (str4 != null && str4.length() > 0) {
                this.getMediationNetwork.put("uid", str4);
                int i8 = 2 % 2;
            }
        } catch (Throwable unused) {
        }
    }

    private static void a(byte b, String str, int i, Object[] objArr) {
        int i2;
        int length;
        char[] cArr;
        int i3;
        int i4 = 2 % 2;
        char[] cArr2 = str;
        if (str != null) {
            cArr2 = str.toCharArray();
        }
        char[] cArr3 = cArr2;
        AFk1jSDK aFk1jSDK = new AFk1jSDK();
        char[] cArr4 = component2;
        if (cArr4 != null) {
            int i5 = $10 + 53;
            $11 = i5 % 128;
            if (i5 % 2 == 0) {
                length = cArr4.length;
                cArr = new char[length];
                i3 = 1;
            } else {
                length = cArr4.length;
                cArr = new char[length];
                i3 = 0;
            }
            while (i3 < length) {
                int i6 = $11 + 31;
                $10 = i6 % 128;
                int i7 = i6 % 2;
                cArr[i3] = (char) (cArr4[i3] ^ (-8266694153104071789L));
                i3++;
            }
            cArr4 = cArr;
        }
        char c = (char) ((-8266694153104071789L) ^ equals);
        char[] cArr5 = new char[i];
        if (i % 2 != 0) {
            i2 = i - 1;
            cArr5[i2] = (char) (cArr3[i2] - b);
        } else {
            i2 = i;
        }
        if (i2 > 1) {
            aFk1jSDK.getMonetizationNetwork = 0;
            while (aFk1jSDK.getMonetizationNetwork < i2) {
                aFk1jSDK.getCurrencyIso4217Code = cArr3[aFk1jSDK.getMonetizationNetwork];
                aFk1jSDK.getMediationNetwork = cArr3[aFk1jSDK.getMonetizationNetwork + 1];
                if (aFk1jSDK.getCurrencyIso4217Code == aFk1jSDK.getMediationNetwork) {
                    int i8 = $10 + 115;
                    $11 = i8 % 128;
                    int i9 = i8 % 2;
                    cArr5[aFk1jSDK.getMonetizationNetwork] = (char) (aFk1jSDK.getCurrencyIso4217Code - b);
                    cArr5[aFk1jSDK.getMonetizationNetwork + 1] = (char) (aFk1jSDK.getMediationNetwork - b);
                } else {
                    aFk1jSDK.getRevenue = aFk1jSDK.getCurrencyIso4217Code / c;
                    aFk1jSDK.areAllFieldsValid = aFk1jSDK.getCurrencyIso4217Code % c;
                    aFk1jSDK.AFAdRevenueData = aFk1jSDK.getMediationNetwork / c;
                    aFk1jSDK.component2 = aFk1jSDK.getMediationNetwork % c;
                    if (aFk1jSDK.areAllFieldsValid == aFk1jSDK.component2) {
                        aFk1jSDK.getRevenue = ((aFk1jSDK.getRevenue + c) - 1) % c;
                        aFk1jSDK.AFAdRevenueData = ((aFk1jSDK.AFAdRevenueData + c) - 1) % c;
                        int i10 = (aFk1jSDK.getRevenue * c) + aFk1jSDK.areAllFieldsValid;
                        int i11 = (aFk1jSDK.AFAdRevenueData * c) + aFk1jSDK.component2;
                        cArr5[aFk1jSDK.getMonetizationNetwork] = cArr4[i10];
                        cArr5[aFk1jSDK.getMonetizationNetwork + 1] = cArr4[i11];
                    } else if (aFk1jSDK.getRevenue == aFk1jSDK.AFAdRevenueData) {
                        aFk1jSDK.areAllFieldsValid = ((aFk1jSDK.areAllFieldsValid + c) - 1) % c;
                        aFk1jSDK.component2 = ((aFk1jSDK.component2 + c) - 1) % c;
                        int i12 = (aFk1jSDK.getRevenue * c) + aFk1jSDK.areAllFieldsValid;
                        int i13 = (aFk1jSDK.AFAdRevenueData * c) + aFk1jSDK.component2;
                        cArr5[aFk1jSDK.getMonetizationNetwork] = cArr4[i12];
                        cArr5[aFk1jSDK.getMonetizationNetwork + 1] = cArr4[i13];
                    } else {
                        int i14 = (aFk1jSDK.getRevenue * c) + aFk1jSDK.component2;
                        int i15 = (aFk1jSDK.AFAdRevenueData * c) + aFk1jSDK.areAllFieldsValid;
                        cArr5[aFk1jSDK.getMonetizationNetwork] = cArr4[i14];
                        cArr5[aFk1jSDK.getMonetizationNetwork + 1] = cArr4[i15];
                    }
                }
                aFk1jSDK.getMonetizationNetwork += 2;
            }
        }
        int i16 = $10 + 35;
        $11 = i16 % 128;
        int i17 = i16 % 2;
        for (int i18 = 0; i18 < i; i18++) {
            cArr5[i18] = (char) (cArr5[i18] ^ 13722);
        }
        objArr[0] = new String(cArr5);
    }

    private synchronized void getCurrencyIso4217Code(String str, String str2, String str3, String str4) {
        int i = 2 % 2;
        int i2 = hashCode + 35;
        copy = i2 % 128;
        int i3 = i2 % 2;
        if (str != null) {
            try {
                if (str.length() > 0) {
                    int i4 = hashCode + 7;
                    copy = i4 % 128;
                    int i5 = i4 % 2;
                    this.getMediationNetwork.put("app_id", str);
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (str2 != null && str2.length() > 0) {
            this.getMediationNetwork.put(App.JsonKeys.APP_VERSION, str2);
            int i6 = hashCode + 77;
            copy = i6 % 128;
            if (i6 % 2 != 0) {
                int i7 = 2 % 2;
            }
        }
        if (str3 != null) {
            int i8 = copy + 63;
            hashCode = i8 % 128;
            int i9 = i8 % 2;
            if (str3.length() > 0) {
                int i10 = hashCode + 35;
                copy = i10 % 128;
                int i11 = i10 % 2;
                this.getMediationNetwork.put(AppsFlyerProperties.CHANNEL, str3);
            }
        }
        if (str4 != null && str4.length() > 0) {
            this.getMediationNetwork.put("preInstall", str4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        if (r6.getMonetizationNetwork >= 98304) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
    
        r1 = java.lang.System.currentTimeMillis();
        r9 = android.text.TextUtils.join(", ", r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
    
        if (r7 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0036, code lost:
    
        r7 = new java.lang.StringBuilder().append(r1).append(" ").append(java.lang.Thread.currentThread().getId()).append(" _/AppsFlyer_6.17.3 [").append(r7).append("] ").append(r8).append(" ").append(r9).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a7, code lost:
    
        r8 = r6.getMonetizationNetwork + (r7.length() << 1);
        r9 = com.appsflyer.internal.AFd1nSDK.getRevenue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b2, code lost:
    
        if (r8 <= r9) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00b4, code lost:
    
        r7 = r7.substring(0, (r9 - r6.getMonetizationNetwork) / 2);
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00bd, code lost:
    
        r6.getCurrencyIso4217Code.add(r7);
        r6.getMonetizationNetwork += r7.length() << 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ce, code lost:
    
        if ((!r3) == true) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00d0, code lost:
    
        r7 = com.appsflyer.internal.AFd1nSDK.hashCode + 101;
        com.appsflyer.internal.AFd1nSDK.copy = r7 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d9, code lost:
    
        if ((r7 % 2) != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00db, code lost:
    
        r6.getCurrencyIso4217Code.add("+~+~ The limit has been exceeded, and no more data is available. +~+~");
        r6.getMonetizationNetwork *= 10496;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00f6, code lost:
    
        r7 = com.appsflyer.internal.AFd1nSDK.hashCode + 11;
        com.appsflyer.internal.AFd1nSDK.copy = r7 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ff, code lost:
    
        if ((r7 % 2) != 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0102, code lost:
    
        r0 = 2 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e9, code lost:
    
        r6.getCurrencyIso4217Code.add("+~+~ The limit has been exceeded, and no more data is available. +~+~");
        r6.getMonetizationNetwork += androidx.media3.extractor.ts.TsExtractor.TS_STREAM_TYPE_DTS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0104, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0074, code lost:
    
        r7 = new java.lang.StringBuilder().append(r1).append(" ").append(java.lang.Thread.currentThread().getId()).append(" ").append(r8).append("/AppsFlyer_6.17.3 ").append(r9).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0106, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0026, code lost:
    
        if (r6.getMonetizationNetwork >= 98304) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void getCurrencyIso4217Code(java.lang.String r7, java.lang.String r8, java.lang.String... r9) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1nSDK.getCurrencyIso4217Code(java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    private synchronized Map<String, Object> equals() {
        int i = 2 % 2;
        int i2 = copy + 47;
        hashCode = i2 % 128;
        if (i2 % 2 == 0) {
            this.getMediationNetwork.put("data", this.getCurrencyIso4217Code);
            copydefault();
        } else {
            this.getMediationNetwork.put("data", this.getCurrencyIso4217Code);
            copydefault();
            Object obj = null;
            obj.hashCode();
            throw null;
        }
        return this.getMediationNetwork;
    }

    private synchronized void getMonetizationNetwork(String str, AFf1cSDK aFf1cSDK, AFc1eSDK aFc1eSDK) {
        int i = 2 % 2;
        AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
        String string = appsFlyerProperties.getString("remote_debug_static_data");
        this.getMediationNetwork.clear();
        if (string != null) {
            try {
                this.getMediationNetwork.putAll(AFg1hSDK.getMonetizationNetwork(new JSONObject(string)));
                int i2 = hashCode + 49;
                copy = i2 % 128;
                if (i2 % 2 != 0) {
                    int i3 = 2 % 2;
                }
            } catch (Throwable unused) {
            }
        } else {
            getRevenue(this.component1.getCurrencyIso4217Code().component4(), aFf1cSDK.getCurrencyIso4217Code(), aFc1eSDK.AFAdRevenueData);
            getRevenue(new StringBuilder("6.17.3.").append(AFa1uSDK.getRevenue).toString(), this.component1.AFKeystoreWrapper().getMediationNetwork(), appsFlyerProperties.getString("KSAppsFlyerId"), AFb1jSDK.getRevenue(this.component1.getCurrencyIso4217Code().getMonetizationNetwork));
            try {
                int i4 = this.component1.getCurrencyIso4217Code().n_().versionCode;
                getCurrencyIso4217Code(str, String.valueOf(i4), appsFlyerProperties.getString(AppsFlyerProperties.CHANNEL), appsFlyerProperties.getString("preInstallName"));
                int i5 = 2 % 2;
            } catch (Throwable unused2) {
            }
            appsFlyerProperties.set("remote_debug_static_data", new JSONObject(this.getMediationNetwork).toString());
        }
        this.getMediationNetwork.put("launch_counter", String.valueOf(this.component1.getCurrencyIso4217Code().getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 0)));
        int i6 = hashCode + 17;
        copy = i6 % 128;
        int i7 = i6 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0031, code lost:
    
        r4 = com.appsflyer.internal.AFd1nSDK.copy + 17;
        com.appsflyer.internal.AFd1nSDK.hashCode = r4 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
    
        if ((r4 % 2) == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003c, code lost:
    
        r4 = 26 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001c, code lost:
    
        return new java.lang.String[]{r4};
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0016, code lost:
    
        if (r5 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
    
        if (r5 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001d, code lost:
    
        r1 = new java.lang.String[r5.length + 1];
        r1[0] = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0024, code lost:
    
        if (r2 >= r5.length) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
    
        r1[r2] = r5[r2].toString();
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String[] getMediationNetwork(java.lang.String r4, java.lang.StackTraceElement[] r5) {
        /*
            r0 = 2
            int r1 = r0 % r0
            int r1 = com.appsflyer.internal.AFd1nSDK.copy
            int r1 = r1 + 49
            int r2 = r1 % 128
            com.appsflyer.internal.AFd1nSDK.hashCode = r2
            int r1 = r1 % r0
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L16
            r1 = 54
            int r1 = r1 / r3
            if (r5 != 0) goto L1d
            goto L18
        L16:
            if (r5 != 0) goto L1d
        L18:
            java.lang.String[] r5 = new java.lang.String[r2]
            r5[r3] = r4
            return r5
        L1d:
            int r1 = r5.length
            int r1 = r1 + r2
            java.lang.String[] r1 = new java.lang.String[r1]
            r1[r3] = r4
        L23:
            int r4 = r5.length
            if (r2 >= r4) goto L31
            r4 = r5[r2]
            java.lang.String r4 = r4.toString()
            r1[r2] = r4
            int r2 = r2 + 1
            goto L23
        L31:
            int r4 = com.appsflyer.internal.AFd1nSDK.copy
            int r4 = r4 + 17
            int r5 = r4 % 128
            com.appsflyer.internal.AFd1nSDK.hashCode = r5
            int r4 = r4 % r0
            if (r4 == 0) goto L3f
            r4 = 26
            int r4 = r4 / r3
        L3f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1nSDK.getMediationNetwork(java.lang.String, java.lang.StackTraceElement[]):java.lang.String[]");
    }

    private synchronized void copydefault() {
        int i = 2 % 2;
        this.getCurrencyIso4217Code = new ArrayList();
        this.getMonetizationNetwork = 0;
        int i2 = copy + 43;
        hashCode = i2 % 128;
        int i3 = i2 % 2;
    }

    private synchronized boolean getCurrencyIso4217Code(AFi1ySDK aFi1ySDK, AFi1ySDK aFi1ySDK2) {
        int i = 2 % 2;
        boolean z = true;
        if (aFi1ySDK == null) {
            int i2 = hashCode + 9;
            copy = i2 % 128;
            if (i2 % 2 == 0) {
                AFAdRevenueData(new Object[]{this}, -788691882, 788691884, System.identityHashCode(this));
            } else {
                AFAdRevenueData(new Object[]{this}, -788691882, 788691884, System.identityHashCode(this));
                z = false;
            }
            int i3 = hashCode + 45;
            copy = i3 % 128;
            int i4 = i3 % 2;
            return z;
        }
        if (!aFi1ySDK.getMonetizationNetwork()) {
            int i5 = hashCode + 99;
            copy = i5 % 128;
            return i5 % 2 == 0 ? false : false;
        }
        if (this.component1.getCurrencyIso4217Code().getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 0) > aFi1ySDK.getMonetizationNetwork) {
            int i6 = hashCode + 47;
            copy = i6 % 128;
            int i7 = i6 % 2;
            return false;
        }
        int i8 = hashCode + 25;
        copy = i8 % 128;
        int i9 = i8 % 2;
        int i10 = 2 % 2;
        if (!getRevenue(aFi1ySDK, aFi1ySDK2)) {
            return false;
        }
        if (getMediationNetwork(aFi1ySDK.getMediationNetwork)) {
            return getCurrencyIso4217Code(aFi1ySDK.getRevenue);
        }
        return false;
    }

    private boolean getRevenue(AFi1ySDK aFi1ySDK, AFi1ySDK aFi1ySDK2) {
        boolean currencyIso4217Code;
        int i = 2 % 2;
        if (!aFi1ySDK.equals(aFi1ySDK2)) {
            currencyIso4217Code = getCurrencyIso4217Code(aFi1ySDK.AFAdRevenueData);
            getMonetizationNetwork(currencyIso4217Code);
        } else {
            int i2 = hashCode + 51;
            copy = i2 % 128;
            if (i2 % 2 == 0) {
                AFInAppEventParameterName();
                throw null;
            }
            currencyIso4217Code = AFInAppEventParameterName();
        }
        int i3 = copy + 61;
        hashCode = i3 % 128;
        if (i3 % 2 != 0) {
            int i4 = 53 / 0;
        }
        return currencyIso4217Code;
    }

    private static boolean getCurrencyIso4217Code(String str) {
        int i = 2 % 2;
        int i2 = copy + 45;
        hashCode = i2 % 128;
        int i3 = i2 % 2;
        if (!AFk1xSDK.getMonetizationNetwork(str)) {
            new AFd1sSDK();
            return AFd1sSDK.getCurrencyIso4217Code(component4(), str);
        }
        int i4 = hashCode + 43;
        copy = i4 % 128;
        int i5 = i4 % 2;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001d, code lost:
    
        if (com.appsflyer.internal.AFk1xSDK.getMonetizationNetwork(r5) != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0016, code lost:
    
        if (com.appsflyer.internal.AFk1xSDK.getMonetizationNetwork(r5) != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x002d, code lost:
    
        r5 = r5.equals(r4.component1.getCurrencyIso4217Code().n_().versionName);
        r1 = com.appsflyer.internal.AFd1nSDK.hashCode + 123;
        com.appsflyer.internal.AFd1nSDK.copy = r1 % 128;
        r1 = r1 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0046, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
    
        r5 = com.appsflyer.internal.AFd1nSDK.copy + 29;
        com.appsflyer.internal.AFd1nSDK.hashCode = r5 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
    
        if ((r5 % 2) == 0) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean getMediationNetwork(java.lang.String r5) {
        /*
            r4 = this;
            r0 = 2
            int r1 = r0 % r0
            int r1 = com.appsflyer.internal.AFd1nSDK.hashCode
            int r1 = r1 + 97
            int r2 = r1 % 128
            com.appsflyer.internal.AFd1nSDK.copy = r2
            int r1 = r1 % r0
            r2 = 0
            if (r1 != 0) goto L19
            boolean r1 = com.appsflyer.internal.AFk1xSDK.getMonetizationNetwork(r5)
            r3 = 55
            int r3 = r3 / r2
            if (r1 == 0) goto L2d
            goto L1f
        L19:
            boolean r1 = com.appsflyer.internal.AFk1xSDK.getMonetizationNetwork(r5)
            if (r1 == 0) goto L2d
        L1f:
            int r5 = com.appsflyer.internal.AFd1nSDK.copy
            int r5 = r5 + 29
            int r1 = r5 % 128
            com.appsflyer.internal.AFd1nSDK.hashCode = r1
            int r5 = r5 % r0
            if (r5 == 0) goto L2b
            return r2
        L2b:
            r5 = 1
            return r5
        L2d:
            com.appsflyer.internal.AFc1bSDK r1 = r4.component1
            com.appsflyer.internal.AFc1pSDK r1 = r1.getCurrencyIso4217Code()
            android.content.pm.PackageInfo r1 = r1.n_()
            java.lang.String r1 = r1.versionName
            boolean r5 = r5.equals(r1)
            int r1 = com.appsflyer.internal.AFd1nSDK.hashCode
            int r1 = r1 + 123
            int r2 = r1 % 128
            com.appsflyer.internal.AFd1nSDK.copy = r2
            int r1 = r1 % r0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1nSDK.getMediationNetwork(java.lang.String):boolean");
    }

    private boolean getCurrencyIso4217Code(float f) {
        int i = 2 % 2;
        int i2 = hashCode;
        int i3 = i2 + 39;
        copy = i3 % 128;
        int i4 = i3 % 2;
        double d = f;
        if (d >= 1.0d) {
            return true;
        }
        if (d <= 0.0d) {
            int i5 = i2 + 121;
            copy = i5 % 128;
            return i5 % 2 == 0;
        }
        if (component1() > f) {
            return false;
        }
        int i6 = hashCode + 123;
        copy = i6 % 128;
        return i6 % 2 != 0;
    }

    private static AFi1ySDK getMonetizationNetwork(AFi1wSDK aFi1wSDK) {
        AFi1zSDK aFi1zSDK;
        int i = 2 % 2;
        int i2 = hashCode + 65;
        copy = i2 % 128;
        Object obj = null;
        if (i2 % 2 == 0) {
            obj.hashCode();
            throw null;
        }
        if (aFi1wSDK == null || (aFi1zSDK = aFi1wSDK.getMonetizationNetwork) == null) {
            int i3 = copy + 85;
            hashCode = i3 % 128;
            int i4 = i3 % 2;
            return null;
        }
        return aFi1zSDK.getMediationNetwork;
    }

    private static /* synthetic */ Object getRevenue(Object[] objArr) {
        AFd1nSDK aFd1nSDK = (AFd1nSDK) objArr[0];
        int i = 2 % 2;
        int i2 = hashCode + 33;
        copy = i2 % 128;
        if (i2 % 2 == 0) {
            aFd1nSDK.component1.component2().getCurrencyIso4217Code("participantInProxy");
            int i3 = 63 / 0;
            return null;
        }
        aFd1nSDK.component1.component2().getCurrencyIso4217Code("participantInProxy");
        return null;
    }

    private void getMonetizationNetwork(boolean z) {
        int i = 2 % 2;
        int i2 = hashCode + 47;
        copy = i2 % 128;
        int i3 = i2 % 2;
        this.component1.component2().getCurrencyIso4217Code("participantInProxy", z);
        int i4 = copy + 39;
        hashCode = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
    }

    static void component2() {
        component2 = new char[]{58256, 58263, 54893, 58257, 54887, 54907, 54888, 58258, 54891};
        equals = (char) 58256;
    }

    private boolean AFInAppEventParameterName() {
        return ((Boolean) AFAdRevenueData(new Object[]{this}, 59516456, -59516456, System.identityHashCode(this))).booleanValue();
    }

    private void AFKeystoreWrapper() {
        AFAdRevenueData(new Object[]{this}, -788691882, 788691884, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final void getMonetizationNetwork(String str, String str2) {
        AFAdRevenueData(new Object[]{this, str, str2}, 115232387, -115232384, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFd1mSDK
    public final void q_(String str, PackageManager packageManager) {
        AFAdRevenueData(new Object[]{this, str, packageManager}, 389372347, -389372346, System.identityHashCode(this));
    }
}
