package com.appsflyer.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.ResponseNetwork;

/* loaded from: classes2.dex */
public final class AFf1pSDK extends AFf1uSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int AFInAppEventParameterName = 1760829264;
    private static int AFInAppEventType = 2059786070;
    private static byte[] AFKeystoreWrapper = {-102, 97, -125, 124, 108};
    private static short[] AFLogger = null;
    private static int d = 0;
    private static int registerClient = -1524191679;
    private static int unregisterClient = 1;
    private final AFc1pSDK copydefault;
    private final AFg1rSDK equals;
    private final String hashCode;
    private final AFc1gSDK toString;

    public static /* synthetic */ Object getMediationNetwork(Object[] objArr, int i, int i2, int i3) {
        int i4 = ~i2;
        int i5 = (i * 319) + (i2 * (-317)) + (((~((~i) | i3)) | i4) * (-318));
        int i6 = ~(i4 | i3);
        int i7 = ~i3;
        return (i5 + ((i6 | (~((i7 | i) | i2))) * 318)) + (((~((i | i2) | i3)) | (~((i4 | i7) | i))) * 318) != 1 ? getMonetizationNetwork(objArr) : getMediationNetwork(objArr);
    }

    public AFf1pSDK(String str, AFc1bSDK aFc1bSDK) {
        super(new AFg1uSDK(), aFc1bSDK, str);
        this.copydefault = aFc1bSDK.getCurrencyIso4217Code();
        this.toString = aFc1bSDK.registerClient();
        this.hashCode = str;
        this.equals = aFc1bSDK.component4();
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final void getRevenue() {
        int i = 2 % 2;
        int i2 = unregisterClient + 55;
        d = i2 % 128;
        int i3 = i2 % 2;
        super.getRevenue();
        ResponseNetwork responseNetwork = ((AFe1eSDK) this).component3;
        if (responseNetwork != null && responseNetwork.isSuccessful()) {
            equals();
        }
        int i4 = d + 49;
        unregisterClient = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0189, code lost:
    
        com.appsflyer.AFLogger.afInfoLog("CustomerUserId not set, Tracking is disabled", true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0195, code lost:
    
        throw new java.lang.IllegalStateException("CustomerUserId not set, register is not sent");
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        r13.getMonetizationNetwork("app_version_code", java.lang.Integer.toString(r12.copydefault.n_().versionCode));
        r13.getMonetizationNetwork("app_version_name", r12.copydefault.n_().versionName);
        r13.getMonetizationNetwork("app_name", (java.lang.String) getMediationNetwork(new java.lang.Object[]{r12, r1.getPackageManager()}, -182789500, 182789500, java.lang.System.identityHashCode(r12)));
        r13.getMonetizationNetwork("installDate", com.appsflyer.internal.AFa1uSDK.getMediationNetwork(new java.text.SimpleDateFormat("yyyy-MM-dd_HHmmssZ", java.util.Locale.US), r12.copydefault.n_().firstInstallTime));
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008b, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008c, code lost:
    
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting application version info.", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x002b, code lost:
    
        if (r1 != null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x001d, code lost:
    
        if (r1 != null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x019d, code lost:
    
        throw new java.lang.IllegalStateException("Context is not provided, can't send register request");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
    
        if (r3.getRevenue() != false) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    @Override // com.appsflyer.internal.AFf1uSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void getMediationNetwork(com.appsflyer.internal.AFh1jSDK r13) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1pSDK.getMediationNetwork(com.appsflyer.internal.AFh1jSDK):void");
    }

    private static /* synthetic */ Object getMonetizationNetwork(Object[] objArr) {
        AFf1pSDK aFf1pSDK = (AFf1pSDK) objArr[0];
        PackageManager packageManager = (PackageManager) objArr[1];
        int i = 2 % 2;
        ApplicationInfo applicationInfo = aFf1pSDK.copydefault.n_().applicationInfo;
        Object obj = null;
        if (applicationInfo != null) {
            String obj2 = packageManager.getApplicationLabel(applicationInfo).toString();
            int i2 = d + 73;
            unregisterClient = i2 % 128;
            if (i2 % 2 != 0) {
                return obj2;
            }
            obj.hashCode();
            throw null;
        }
        int i3 = unregisterClient + 103;
        d = i3 % 128;
        if (i3 % 2 == 0) {
            return "";
        }
        throw null;
    }

    @Override // com.appsflyer.internal.AFf1uSDK
    protected final void areAllFieldsValid(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = unregisterClient + 23;
        d = i2 % 128;
        if (i2 % 2 == 0) {
            String component4 = this.copydefault.component4();
            if (component4 != null) {
                aFh1jSDK.getMonetizationNetwork("advertiserId", component4);
                int i3 = d + 35;
                unregisterClient = i3 % 128;
                int i4 = i3 % 2;
                return;
            }
            return;
        }
        this.copydefault.component4();
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        int i = 2 % 2;
        int i2 = d + 35;
        int i3 = i2 % 128;
        unregisterClient = i3;
        int i4 = i2 % 2;
        int i5 = i3 + 69;
        d = i5 % 128;
        if (i5 % 2 != 0) {
            int i6 = 75 / 0;
        }
        return false;
    }

    private void equals() {
        int i = 2 % 2;
        int i2 = d + 41;
        unregisterClient = i2 % 128;
        int i3 = i2 % 2;
        ((AFf1uSDK) this).areAllFieldsValid.getCurrencyIso4217Code("sentRegisterRequestToAF", true);
        AFLogger.afDebugLog("[register] Successfully registered for Uninstall Tracking");
        int i4 = d + 9;
        unregisterClient = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.internal.AFf1uSDK
    protected final void getRevenue(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = unregisterClient + 7;
        d = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
    }

    @Override // com.appsflyer.internal.AFf1uSDK
    protected final void getCurrencyIso4217Code(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = unregisterClient + 53;
        d = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // com.appsflyer.internal.AFf1uSDK
    protected final void getMonetizationNetwork(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = d + 103;
        unregisterClient = i2 % 128;
        int i3 = i2 % 2;
    }

    @Override // com.appsflyer.internal.AFf1uSDK
    protected final void AFAdRevenueData(AFh1jSDK aFh1jSDK) {
        int i = 2 % 2;
        int i2 = unregisterClient + 29;
        d = i2 % 128;
        if (i2 % 2 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(int r14, byte r15, short r16, int r17, int r18, java.lang.Object[] r19) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1pSDK.a(int, byte, short, int, int, java.lang.Object[]):void");
    }

    @Override // com.appsflyer.internal.AFf1uSDK, com.appsflyer.internal.AFe1eSDK
    protected final boolean copydefault() {
        return ((Boolean) getMediationNetwork(new Object[]{this}, 222839034, -222839033, System.identityHashCode(this))).booleanValue();
    }

    private String s_(PackageManager packageManager) {
        return (String) getMediationNetwork(new Object[]{this, packageManager}, -182789500, 182789500, System.identityHashCode(this));
    }
}
