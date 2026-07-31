package com.appsflyer.internal;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.common.ConnectionResult;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.Mechanism;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;

/* loaded from: classes2.dex */
public final class AFd1lSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static String AFAdRevenueData = null;
    private static boolean areAllFieldsValid = false;
    private static char[] component1 = null;
    private static int component3 = 0;
    private static int copy = 1;
    public static String getRevenue;
    private static int hashCode;
    private static boolean toString;
    private final AFj1eSDK component2;
    private final AFe1ySDK component4;
    private final AppsFlyerProperties getCurrencyIso4217Code;
    private final AFc1pSDK getMediationNetwork;
    private final AFd1kSDK getMonetizationNetwork;

    public static /* synthetic */ Object getRevenue(Object[] objArr, int i, int i2, int i3) {
        int i4 = ~i;
        int i5 = ~i2;
        int i6 = (~(i4 | i5)) | (~(i5 | i3));
        int i7 = ~i3;
        int i8 = i7 | i;
        int i9 = (i * 1773) + (i2 * (-885)) + ((i6 | (~(i8 | i2))) * 886) + ((i | (~(i2 | i7))) * (-1772)) + ((~i8) * 886);
        if (i9 == 1) {
            return getRevenue(objArr);
        }
        if (i9 == 2) {
            return getCurrencyIso4217Code(objArr);
        }
        AFd1lSDK aFd1lSDK = (AFd1lSDK) objArr[0];
        String str = (String) objArr[1];
        String str2 = (String) objArr[2];
        UUID uuid = (UUID) objArr[3];
        String str3 = (String) objArr[4];
        int i10 = 2 % 2;
        String obj = uuid.toString();
        String obj2 = new StringBuilder().append(String.format(AFAdRevenueData, AppsFlyerLib.getInstance().getHostPrefix(), AFa1uSDK.getMonetizationNetwork().getHostName())).append("/").append(str).append("?id=").append(str2).toString();
        Map<String, Object> AFAdRevenueData2 = aFd1lSDK.AFAdRevenueData();
        String valueOf = String.valueOf(AFAdRevenueData2.get("build_number"));
        HashMap hashMap = new HashMap();
        hashMap.put("Af-UUID", uuid.toString());
        hashMap.put("Af-Meta-Sdk-Ver", valueOf);
        hashMap.put("Af-Meta-Counter", String.valueOf(AFAdRevenueData2.get("counter")));
        hashMap.put("Af-Meta-Model", String.valueOf(AFAdRevenueData2.get("model")));
        hashMap.put("Af-Meta-Platform", String.valueOf(AFAdRevenueData2.get("platformextension")));
        hashMap.put("Af-Meta-System-Version", String.valueOf(AFAdRevenueData2.get("sdk")));
        Object[] objArr2 = new Object[1];
        a(null, "\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081", null, 126 - MotionEvent.axisFromString(""), objArr2);
        hashMap.put(((String) objArr2[0]).intern(), getMediationNetwork(str3, obj, "GET", obj, str, str2, valueOf));
        AFd1jSDK aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{aFd1lSDK, new AFd1dSDK(obj2, null, "GET", hashMap, false), new AFd1bSDK()}, 865808376, -865808374, System.identityHashCode(aFd1lSDK));
        int i11 = copy + 57;
        hashCode = i11 % 128;
        int i12 = i11 % 2;
        return aFd1jSDK;
    }

    static {
        getMediationNetwork();
        getRevenue = "https://%sgcdsdk.%s/install_data/v5.0/";
        AFAdRevenueData = "https://%sonelink.%s/shortlink-sdk/v2";
        int i = hashCode + 95;
        copy = i % 128;
        int i2 = i % 2;
    }

    public AFd1lSDK(AFd1kSDK aFd1kSDK, AFc1pSDK aFc1pSDK, AppsFlyerProperties appsFlyerProperties, AFe1ySDK aFe1ySDK, AFj1eSDK aFj1eSDK) {
        this.getMonetizationNetwork = aFd1kSDK;
        this.getMediationNetwork = aFc1pSDK;
        this.getCurrencyIso4217Code = appsFlyerProperties;
        this.component4 = aFe1ySDK;
        this.component2 = aFj1eSDK;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0070, code lost:
    
        if (r1 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007e, code lost:
    
        if (r1.length() != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0081, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
    
        if (r1 != null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFd1jSDK<java.lang.String> AFAdRevenueData(java.util.Map<java.lang.String, java.lang.Object> r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1lSDK.AFAdRevenueData(java.util.Map, java.lang.String, java.lang.String):com.appsflyer.internal.AFd1jSDK");
    }

    public final AFd1jSDK<String> getRevenue(Map<String, Object> map, String str, String str2) {
        String currencyIso4217Code;
        String monetizationNetwork;
        int i = 2 % 2;
        try {
            Object[] objArr = {map, str};
            Object obj = AFa1jSDK.unregisterClient.get(203186425);
            if (obj == null) {
                obj = ((Class) AFa1jSDK.AFAdRevenueData((Process.myPid() >> 22) + 196, (char) (KeyEvent.getDeadChar(0, 0) + 29636), 37 - Color.red(0))).getMethod("getRevenue", Map.class, String.class);
                AFa1jSDK.unregisterClient.put(203186425, obj);
            }
            byte[] bArr = (byte[]) ((Method) obj).invoke(null, objArr);
            int i2 = hashCode + 75;
            copy = i2 % 128;
            int i3 = i2 % 2;
            AFj1eSDK aFj1eSDK = this.component2;
            String str3 = str2;
            if (!(str3 == null || str3.length() == 0 || new Regex("4.?(\\d+)?.?(\\d+)").matches(str3) || new Regex("3.?(\\d+)?.?(\\d+)").matches(str3))) {
                currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%sviap.%s/api/v1/android/validate_purchase_v2?app_id=");
                int i4 = copy + 37;
                hashCode = i4 % 128;
                int i5 = i4 % 2;
            } else {
                int i6 = copy + 49;
                hashCode = i6 % 128;
                int i7 = i6 % 2;
                currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%sviap.%s/api/v1/android/validate_purchase?app_id=");
            }
            monetizationNetwork = aFj1eSDK.getMonetizationNetwork(aFj1eSDK.getRevenue(currencyIso4217Code), false);
            return (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(monetizationNetwork, bArr, "POST", Collections.emptyMap(), true), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
        } catch (Throwable th) {
            try {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            } catch (Throwable th2) {
                AFLogger.INSTANCE.e(AFg1cSDK.ENGAGEMENT, "AFFinalizer: reflection init failed.", th2, false, false);
                return null;
            }
        }
    }

    public final AFd1jSDK<String> getRevenue(Map<String, Object> map, String str) {
        int i = 2 % 2;
        try {
            Object[] objArr = {map, str};
            Object obj = AFa1jSDK.unregisterClient.get(203186425);
            if (obj == null) {
                obj = ((Class) AFa1jSDK.AFAdRevenueData((Process.myTid() >> 22) + 196, (char) (TextUtils.lastIndexOf("", '0', 0) + 29637), View.resolveSizeAndState(0, 0, 0) + 37)).getMethod("getRevenue", Map.class, String.class);
                AFa1jSDK.unregisterClient.put(203186425, obj);
            }
            byte[] bArr = (byte[]) ((Method) obj).invoke(null, objArr);
            int i2 = copy + 35;
            hashCode = i2 % 128;
            int i3 = i2 % 2;
            AFj1eSDK aFj1eSDK = this.component2;
            AFd1jSDK<String> aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(aFj1eSDK.getRevenue(aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%svalidate-and-log.%s/api/v4.0/android/one_time_purchase/validateAndLog?app_id=")), bArr, "POST", Collections.emptyMap(), true), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
            int i4 = hashCode + 69;
            copy = i4 % 128;
            int i5 = i4 % 2;
            return aFd1jSDK;
        } catch (Throwable th) {
            try {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            } catch (Throwable th2) {
                AFLogger.INSTANCE.e(AFg1cSDK.PURCHASE_VALIDATION, "AFFinalizer: reflection init failed.", th2, false, false);
                return null;
            }
        }
    }

    public final AFd1jSDK<String> getCurrencyIso4217Code(Map<String, Object> map, String str) {
        int i = 2 % 2;
        int i2 = copy + 47;
        hashCode = i2 % 128;
        try {
            if (i2 % 2 != 0) {
                try {
                    Object[] objArr = {map, str};
                    Object obj = AFa1jSDK.unregisterClient.get(203186425);
                    if (obj == null) {
                        obj = ((Class) AFa1jSDK.AFAdRevenueData(196 - ((Process.getThreadPriority(0) + 20) >> 6), (char) (TextUtils.indexOf("", "", 0) + 29636), (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 36)).getMethod("getRevenue", Map.class, String.class);
                        AFa1jSDK.unregisterClient.put(203186425, obj);
                    }
                    throw null;
                } catch (Throwable th) {
                    Throwable cause = th.getCause();
                    if (cause != null) {
                        throw cause;
                    }
                    throw th;
                }
            }
            try {
                Object[] objArr2 = {map, str};
                Object obj2 = AFa1jSDK.unregisterClient.get(203186425);
                if (obj2 == null) {
                    obj2 = ((Class) AFa1jSDK.AFAdRevenueData(Color.rgb(0, 0, 0) + 16777412, (char) (29636 - TextUtils.getOffsetAfter("", 0)), 38 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)))).getMethod("getRevenue", Map.class, String.class);
                    AFa1jSDK.unregisterClient.put(203186425, obj2);
                }
                byte[] bArr = (byte[]) ((Method) obj2).invoke(null, objArr2);
                AFj1eSDK aFj1eSDK = this.component2;
                AFd1jSDK<String> aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(aFj1eSDK.getRevenue(aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%svalidate-and-log.%s/api/v4.0/android/subscription/validateAndLog?app_id=")), bArr, "POST", Collections.emptyMap(), true), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
                int i3 = hashCode + 25;
                copy = i3 % 128;
                if (i3 % 2 == 0) {
                    int i4 = 17 / 0;
                }
                return aFd1jSDK;
            } catch (Throwable th2) {
                Throwable cause2 = th2.getCause();
                if (cause2 != null) {
                    throw cause2;
                }
                throw th2;
            }
        } catch (Throwable th3) {
            AFLogger.INSTANCE.e(AFg1cSDK.PURCHASE_VALIDATION, "AFFinalizer: reflection init failed.", th3, false, false);
            return null;
        }
        AFLogger.INSTANCE.e(AFg1cSDK.PURCHASE_VALIDATION, "AFFinalizer: reflection init failed.", th3, false, false);
        return null;
    }

    private static void a(String str, String str2, int[] iArr, int i, Object[] objArr) {
        int i2;
        int i3 = 2 % 2;
        byte[] bArr = str2;
        if (str2 != null) {
            int i4 = $11 + 93;
            $10 = i4 % 128;
            int i5 = i4 % 2;
            bArr = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr2 = bArr;
        char[] cArr = str;
        if (str != null) {
            int i6 = $10 + 3;
            $11 = i6 % 128;
            int i7 = i6 % 2;
            cArr = str.toCharArray();
        }
        char[] cArr2 = cArr;
        AFk1iSDK aFk1iSDK = new AFk1iSDK();
        char[] cArr3 = component1;
        if (cArr3 != null) {
            int length = cArr3.length;
            char[] cArr4 = new char[length];
            for (int i8 = 0; i8 < length; i8++) {
                cArr4[i8] = (char) (cArr3[i8] ^ 1825820251896122634L);
            }
            cArr3 = cArr4;
        }
        int i9 = (int) (1825820251896122634L ^ component3);
        if (toString) {
            aFk1iSDK.getCurrencyIso4217Code = bArr2.length;
            char[] cArr5 = new char[aFk1iSDK.getCurrencyIso4217Code];
            aFk1iSDK.getMediationNetwork = 0;
            while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
                cArr5[aFk1iSDK.getMediationNetwork] = (char) (cArr3[bArr2[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] + i] - i9);
                aFk1iSDK.getMediationNetwork++;
            }
            String str3 = new String(cArr5);
            int i10 = $10 + 13;
            $11 = i10 % 128;
            int i11 = i10 % 2;
            objArr[0] = str3;
            return;
        }
        if (areAllFieldsValid) {
            int i12 = $10 + 37;
            $11 = i12 % 128;
            int i13 = i12 % 2;
            aFk1iSDK.getCurrencyIso4217Code = cArr2.length;
            char[] cArr6 = new char[aFk1iSDK.getCurrencyIso4217Code];
            aFk1iSDK.getMediationNetwork = 0;
            while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
                cArr6[aFk1iSDK.getMediationNetwork] = (char) (cArr3[cArr2[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] - i] - i9);
                aFk1iSDK.getMediationNetwork++;
            }
            objArr[0] = new String(cArr6);
            return;
        }
        aFk1iSDK.getCurrencyIso4217Code = iArr.length;
        char[] cArr7 = new char[aFk1iSDK.getCurrencyIso4217Code];
        aFk1iSDK.getMediationNetwork = 0;
        while (aFk1iSDK.getMediationNetwork < aFk1iSDK.getCurrencyIso4217Code) {
            int i14 = $11 + 67;
            $10 = i14 % 128;
            if (i14 % 2 != 0) {
                cArr7[aFk1iSDK.getMediationNetwork] = (char) (cArr3[iArr[aFk1iSDK.getCurrencyIso4217Code * aFk1iSDK.getMediationNetwork] + i] >>> i9);
                i2 = aFk1iSDK.getMediationNetwork;
            } else {
                cArr7[aFk1iSDK.getMediationNetwork] = (char) (cArr3[iArr[(aFk1iSDK.getCurrencyIso4217Code - 1) - aFk1iSDK.getMediationNetwork] - i] - i9);
                i2 = aFk1iSDK.getMediationNetwork + 1;
            }
            aFk1iSDK.getMediationNetwork = i2;
        }
        objArr[0] = new String(cArr7);
    }

    public final AFd1jSDK<AFi1wSDK> getMonetizationNetwork(boolean z, boolean z2, String str, int i) {
        String str2;
        String str3;
        int i2 = 2 % 2;
        int i3 = hashCode + 107;
        copy = i3 % 128;
        if (i3 % 2 != 0) {
            AFe1ySDK aFe1ySDK = this.component4;
            Intrinsics.checkNotNullParameter(str, "");
            String str4 = z ? AFe1ySDK.getMonetizationNetwork : AFe1ySDK.getRevenue;
            if (z2) {
                int i4 = hashCode + 93;
                copy = i4 % 128;
                int i5 = i4 % 2;
                str2 = "stg";
            } else {
                str2 = "";
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            if (AFe1ySDK.getRevenue()) {
                int i6 = hashCode + 53;
                copy = i6 % 128;
                int i7 = i6 % 2;
                str3 = (String) aFe1ySDK.getCurrencyIso4217Code.getValue();
            } else {
                str3 = "";
            }
            String format = String.format(str4, Arrays.copyOf(new Object[]{str3, str2, aFe1ySDK.getCurrencyIso4217Code(), str}, 4));
            Intrinsics.checkNotNullExpressionValue(format, "");
            AFd1dSDK aFd1dSDK = new AFd1dSDK(format, "GET");
            aFd1dSDK.component3 = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
            return (AFd1jSDK) getRevenue(new Object[]{this, aFd1dSDK, new AFd1eSDK()}, 865808376, -865808374, System.identityHashCode(this));
        }
        Intrinsics.checkNotNullParameter(str, "");
        throw null;
    }

    public final AFd1jSDK<String> AFAdRevenueData(AFh1jSDK aFh1jSDK, String str, AFc1gSDK aFc1gSDK) {
        String str2;
        String currencyIso4217Code;
        int i = 2 % 2;
        Object obj = null;
        try {
            Object[] objArr = {aFh1jSDK, str, aFc1gSDK};
            Object obj2 = AFa1jSDK.unregisterClient.get(-371358408);
            if (obj2 == null) {
                obj2 = ((Class) AFa1jSDK.AFAdRevenueData(View.resolveSizeAndState(0, 0, 0) + 196, (char) (TextUtils.lastIndexOf("", '0', 0, 0) + 29637), 37 - (ViewConfiguration.getLongPressTimeout() >> 16))).getMethod("getMediationNetwork", AFh1jSDK.class, String.class, AFc1gSDK.class);
                AFa1jSDK.unregisterClient.put(-371358408, obj2);
            }
            byte[] bArr = (byte[]) ((Method) obj2).invoke(null, objArr);
            AFj1eSDK aFj1eSDK = this.component2;
            Intrinsics.checkNotNullParameter(aFh1jSDK, "");
            boolean mediationNetwork = aFh1jSDK.getMediationNetwork();
            boolean z = aFh1jSDK instanceof AFh1nSDK;
            boolean z2 = aFh1jSDK instanceof AFh1lSDK;
            boolean z3 = aFh1jSDK instanceof AFh1kSDK;
            boolean z4 = aFh1jSDK instanceof AFh1bSDK;
            boolean z5 = aFh1jSDK instanceof AFh1dSDK;
            boolean z6 = aFh1jSDK instanceof AFg1uSDK;
            if (aFh1jSDK instanceof AFh1iSDK) {
                str2 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%spia.%s/api/v1.0/pia-android-event?app_id=");
            } else {
                if (!z3) {
                    int i2 = hashCode;
                    int i3 = i2 + 89;
                    int i4 = i3 % 128;
                    copy = i4;
                    int i5 = i3 % 2;
                    if (!z2) {
                        if (z) {
                            str2 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.getCurrencyIso4217Code);
                        } else if (z4) {
                            int i6 = i4 + 77;
                            hashCode = i6 % 128;
                            if (i6 % 2 == 0) {
                                str2 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.component4);
                            } else {
                                aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.component4);
                                throw null;
                            }
                        } else {
                            if (z5) {
                                int i7 = i2 + 111;
                                copy = i7 % 128;
                                if (i7 % 2 == 0) {
                                    aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%ssdk-services.%s/validate-android-signature");
                                    obj.hashCode();
                                    throw null;
                                }
                                currencyIso4217Code = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code("https://%ssdk-services.%s/validate-android-signature");
                                return (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(currencyIso4217Code, bArr, "POST", Collections.emptyMap(), aFh1jSDK.getRevenue()), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
                            }
                            if (!(!z6)) {
                                str2 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.component1);
                            } else if (mediationNetwork) {
                                int i8 = i2 + 35;
                                copy = i8 % 128;
                                if (i8 % 2 != 0 ? aFh1jSDK.component1 < 2 : aFh1jSDK.component1 < 5) {
                                    str2 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.getMediationNetwork);
                                } else {
                                    str2 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.component2);
                                }
                            } else {
                                str2 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.areAllFieldsValid);
                            }
                        }
                    }
                }
                String currencyIso4217Code2 = aFj1eSDK.getMonetizationNetwork.getCurrencyIso4217Code(AFj1eSDK.AFAdRevenueData);
                int i9 = hashCode + 89;
                copy = i9 % 128;
                int i10 = i9 % 2;
                str2 = currencyIso4217Code2;
            }
            currencyIso4217Code = aFj1eSDK.getMonetizationNetwork(AFj1eSDK.getMediationNetwork(aFj1eSDK.getRevenue(str2), z), z6);
            return (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(currencyIso4217Code, bArr, "POST", Collections.emptyMap(), aFh1jSDK.getRevenue()), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
        } catch (Throwable th) {
            try {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            } catch (Throwable th2) {
                AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "AFFinalizer: reflection init failed.", th2, false, false);
                return null;
            }
        }
    }

    public final AFd1jSDK<AFa1mSDK> getMonetizationNetwork(AFa1pSDK aFa1pSDK) {
        int i = 2 % 2;
        AFd1jSDK<AFa1mSDK> aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(aFa1pSDK.component3, AFg1hSDK.getCurrencyIso4217Code(aFa1pSDK.getCurrencyIso4217Code).toString().getBytes(Charset.defaultCharset()), "POST", Collections.emptyMap(), aFa1pSDK.getRevenue()), new AFa1qSDK()}, 865808376, -865808374, System.identityHashCode(this));
        int i2 = copy + 61;
        hashCode = i2 % 128;
        int i3 = i2 % 2;
        return aFd1jSDK;
    }

    private static /* synthetic */ Object getRevenue(Object[] objArr) {
        AFd1lSDK aFd1lSDK = (AFd1lSDK) objArr[0];
        int i = 2 % 2;
        AFd1jSDK aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{aFd1lSDK, AFd1hSDK.AFAdRevenueData(aFd1lSDK.getMediationNetwork.getRevenue.getRevenue.getPackageName(), AFb1jSDK.getRevenue(aFd1lSDK.getMediationNetwork.getMonetizationNetwork), (String) objArr[1], (String) objArr[2]), new AFd1iSDK()}, 865808376, -865808374, System.identityHashCode(aFd1lSDK));
        int i2 = hashCode + 85;
        copy = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 21 / 0;
        }
        return aFd1jSDK;
    }

    public final AFd1jSDK<String> getRevenue(AFh1gSDK aFh1gSDK) {
        int i = 2 % 2;
        AFd1jSDK<String> aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{this, new AFd1dSDK(aFh1gSDK.component3, aFh1gSDK.AFAdRevenueData(), "POST", Collections.emptyMap(), true), new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
        int i2 = copy + 117;
        hashCode = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 59 / 0;
        }
        return aFd1jSDK;
    }

    public final AFd1jSDK<String> getMediationNetwork(String str, Map<String, String> map, String str2, UUID uuid, String str3) {
        int i = 2 % 2;
        String obj = uuid.toString();
        HashMap hashMap = new HashMap();
        hashMap.put("ttl", "-1");
        hashMap.put(DebugImage.JsonKeys.UUID, obj);
        hashMap.put("data", map);
        hashMap.put(Mechanism.JsonKeys.META, AFAdRevenueData());
        Object obj2 = null;
        if (str2 != null) {
            int i2 = copy + 29;
            hashCode = i2 % 128;
            if (i2 % 2 == 0) {
                hashMap.put("brand_domain", str2);
            } else {
                hashMap.put("brand_domain", str2);
                obj2.hashCode();
                throw null;
            }
        }
        String jSONObject = AFg1hSDK.getCurrencyIso4217Code(hashMap).toString();
        HashMap hashMap2 = new HashMap();
        Object[] objArr = new Object[1];
        a(null, "\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081", null, 128 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), objArr);
        hashMap2.put(((String) objArr[0]).intern(), getMediationNetwork(str3, obj, "POST", jSONObject));
        AFd1jSDK<String> mediationNetwork = getMediationNetwork(new AFd1dSDK(new StringBuilder().append(String.format(AFAdRevenueData, AppsFlyerLib.getInstance().getHostPrefix(), AFa1uSDK.getMonetizationNetwork().getHostName())).append("/").append(str).toString(), jSONObject.getBytes(Charset.defaultCharset()), "POST", hashMap2, false), (AFe1vSDK) new AFd1cSDK(), true);
        int i3 = copy + 95;
        hashCode = i3 % 128;
        int i4 = i3 % 2;
        return mediationNetwork;
    }

    public final AFd1jSDK<String> AFAdRevenueData(String str) {
        int i = 2 % 2;
        AFd1dSDK aFd1dSDK = new AFd1dSDK(str, null, "GET", Collections.emptyMap(), false);
        aFd1dSDK.component3 = 10000;
        aFd1dSDK.getCurrencyIso4217Code = false;
        AFd1jSDK<String> aFd1jSDK = (AFd1jSDK) getRevenue(new Object[]{this, aFd1dSDK, new AFd1cSDK()}, 865808376, -865808374, System.identityHashCode(this));
        int i2 = hashCode + 125;
        copy = i2 % 128;
        int i3 = i2 % 2;
        return aFd1jSDK;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ca, code lost:
    
        if (r14 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFd1oSDK getMediationNetwork(java.util.Map<java.lang.String, java.lang.Object> r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1lSDK.getMediationNetwork(java.util.Map, java.lang.String):com.appsflyer.internal.AFd1oSDK");
    }

    private static /* synthetic */ Object getCurrencyIso4217Code(Object[] objArr) {
        AFd1lSDK aFd1lSDK = (AFd1lSDK) objArr[0];
        AFd1dSDK aFd1dSDK = (AFd1dSDK) objArr[1];
        AFe1vSDK aFe1vSDK = (AFe1vSDK) objArr[2];
        int i = 2 % 2;
        int i2 = hashCode + 83;
        copy = i2 % 128;
        int i3 = i2 % 2;
        AFd1jSDK mediationNetwork = aFd1lSDK.getMediationNetwork(aFd1dSDK, aFe1vSDK, aFd1lSDK.getMonetizationNetwork());
        int i4 = hashCode + 123;
        copy = i4 % 128;
        if (i4 % 2 != 0) {
            return mediationNetwork;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private <T> AFd1jSDK<T> getMediationNetwork(AFd1dSDK aFd1dSDK, AFe1vSDK<T> aFe1vSDK, boolean z) {
        int i = 2 % 2;
        aFd1dSDK.getMediationNetwork = z;
        AFd1kSDK aFd1kSDK = this.getMonetizationNetwork;
        AFd1jSDK<T> aFd1jSDK = new AFd1jSDK<>(aFd1dSDK, aFd1kSDK.getMediationNetwork, aFd1kSDK.getRevenue, aFe1vSDK);
        int i2 = hashCode + 57;
        copy = i2 % 128;
        if (i2 % 2 != 0) {
            return aFd1jSDK;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private Map<String, Object> AFAdRevenueData() {
        int i = 2 % 2;
        HashMap hashMap = new HashMap();
        hashMap.put("build_number", "6.17.3");
        hashMap.put("counter", Integer.valueOf(this.getMediationNetwork.getMonetizationNetwork.getMediationNetwork("appsFlyerCount", 0)));
        hashMap.put("model", Build.MODEL);
        Object[] objArr = new Object[1];
        a(null, "\u008e\u0087\u0088\u008b\u008d", null, 126 - ((byte) KeyEvent.getModifierMetaStateMask()), objArr);
        hashMap.put(((String) objArr[0]).intern(), Build.BRAND);
        hashMap.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
        hashMap.put("app_version_name", this.getMediationNetwork.n_().versionName);
        hashMap.put("app_id", this.getMediationNetwork.getRevenue.getRevenue.getPackageName());
        hashMap.put("platformextension", new AFa1ySDK().getMediationNetwork());
        int i2 = hashCode + 13;
        copy = i2 % 128;
        int i3 = i2 % 2;
        return hashMap;
    }

    private static String getMediationNetwork(String str, String str2, String... strArr) {
        int i = 2 % 2;
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        arrayList.add(1, "v2");
        String revenue = AFj1bSDK.getRevenue(TextUtils.join("\u2063", (String[]) arrayList.toArray(new String[0])), new StringBuilder().append(str).append(str2).append("v2").toString());
        int i2 = copy + 89;
        hashCode = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 72 / 0;
        }
        return revenue;
    }

    private boolean getMonetizationNetwork() {
        int i = 2 % 2;
        int i2 = copy + 99;
        hashCode = i2 % 128;
        int i3 = i2 % 2;
        if (this.getCurrencyIso4217Code.getBoolean(AppsFlyerProperties.HTTP_CACHE, true)) {
            return false;
        }
        int i4 = copy + 29;
        hashCode = i4 % 128;
        int i5 = i4 % 2;
        return true;
    }

    static void getMediationNetwork() {
        component1 = new char[]{36301, 36326, 36281, 36307, 36325, 36327, 36350, 36333, 36336, 36337, 36338, 36321, 36322, 36320};
        component3 = 1912311180;
        areAllFieldsValid = true;
        toString = true;
    }

    private <T> AFd1jSDK<T> getCurrencyIso4217Code(AFd1dSDK aFd1dSDK, AFe1vSDK<T> aFe1vSDK) {
        return (AFd1jSDK) getRevenue(new Object[]{this, aFd1dSDK, aFe1vSDK}, 865808376, -865808374, System.identityHashCode(this));
    }

    public final AFd1jSDK<Map<String, String>> getMediationNetwork(String str, String str2, UUID uuid, String str3) {
        return (AFd1jSDK) getRevenue(new Object[]{this, str, str2, uuid, str3}, 1826287225, -1826287225, System.identityHashCode(this));
    }

    public final AFd1jSDK<Map<String, Object>> getMediationNetwork(String str, String str2) {
        return (AFd1jSDK) getRevenue(new Object[]{this, str, str2}, 2067226218, -2067226217, System.identityHashCode(this));
    }
}
