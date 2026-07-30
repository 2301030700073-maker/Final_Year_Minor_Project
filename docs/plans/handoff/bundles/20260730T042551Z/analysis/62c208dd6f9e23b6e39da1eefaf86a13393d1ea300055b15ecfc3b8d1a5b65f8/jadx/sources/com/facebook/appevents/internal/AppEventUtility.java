package com.facebook.appevents.internal;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C3756th;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class AppEventUtility {
    public static final AppEventUtility INSTANCE = new AppEventUtility();
    private static final String PRICE_REGEX = "[-+]*\\d+([.,]\\d+)*([.,]\\d+)?";

    private AppEventUtility() {
    }

    public static final void assertIsMainThread() {
    }

    public static final void assertIsNotMainThread() {
    }

    public static final String bytesToHex(byte[] bArr) {
        C0173Do.m401try(bArr, "bytes");
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            byte b = bArr[i];
            i++;
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
            C0173Do.m399new(format, "java.lang.String.format(format, *args)");
            stringBuffer.append(format);
        }
        String stringBuffer2 = stringBuffer.toString();
        C0173Do.m399new(stringBuffer2, "sb.toString()");
        return stringBuffer2;
    }

    public static final String getAppVersion() {
        Context m8299do = C3756th.m8299do();
        try {
            String str = m8299do.getPackageManager().getPackageInfo(m8299do.getPackageName(), 0).versionName;
            C0173Do.m399new(str, "{\n      val packageInfo = context.packageManager.getPackageInfo(context.packageName, 0)\n      packageInfo.versionName\n    }");
            return str;
        } catch (PackageManager.NameNotFoundException unused) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    public static final View getRootView(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(AppEventUtility.class) || activity == null) {
            return null;
        }
        try {
            Window window = activity.getWindow();
            if (window == null) {
                return null;
            }
            return window.getDecorView().getRootView();
        } catch (Exception unused) {
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventUtility.class);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
    
        if (defpackage.BF.j(r0, "generic") == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean isEmulator() {
        /*
            java.lang.String r0 = android.os.Build.FINGERPRINT
            java.lang.String r1 = "FINGERPRINT"
            defpackage.C0173Do.m399new(r0, r1)
            java.lang.String r1 = "generic"
            boolean r2 = defpackage.BF.j(r0, r1)
            if (r2 != 0) goto L6a
            java.lang.String r2 = "unknown"
            boolean r0 = defpackage.BF.j(r0, r2)
            if (r0 != 0) goto L6a
            java.lang.String r0 = android.os.Build.MODEL
            java.lang.String r2 = "MODEL"
            defpackage.C0173Do.m399new(r0, r2)
            java.lang.String r2 = "google_sdk"
            boolean r3 = defpackage.EF.k(r0, r2)
            if (r3 != 0) goto L6a
            java.lang.String r3 = "Emulator"
            boolean r3 = defpackage.EF.k(r0, r3)
            if (r3 != 0) goto L6a
            java.lang.String r3 = "Android SDK built for x86"
            boolean r0 = defpackage.EF.k(r0, r3)
            if (r0 != 0) goto L6a
            java.lang.String r0 = android.os.Build.MANUFACTURER
            java.lang.String r3 = "MANUFACTURER"
            defpackage.C0173Do.m399new(r0, r3)
            java.lang.String r3 = "Genymotion"
            boolean r0 = defpackage.EF.k(r0, r3)
            if (r0 != 0) goto L6a
            java.lang.String r0 = android.os.Build.BRAND
            java.lang.String r3 = "BRAND"
            defpackage.C0173Do.m399new(r0, r3)
            boolean r0 = defpackage.BF.j(r0, r1)
            if (r0 == 0) goto L5f
            java.lang.String r0 = android.os.Build.DEVICE
            java.lang.String r3 = "DEVICE"
            defpackage.C0173Do.m399new(r0, r3)
            boolean r0 = defpackage.BF.j(r0, r1)
            if (r0 != 0) goto L6a
        L5f:
            java.lang.String r0 = android.os.Build.PRODUCT
            boolean r0 = defpackage.C0173Do.m394do(r2, r0)
            if (r0 == 0) goto L68
            goto L6a
        L68:
            r0 = 0
            goto L6b
        L6a:
            r0 = 1
        L6b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.internal.AppEventUtility.isEmulator():boolean");
    }

    private static final boolean isMainThread() {
        return C0173Do.m394do(Looper.myLooper(), Looper.getMainLooper());
    }

    public static final double normalizePrice(String str) {
        try {
            Matcher matcher = Pattern.compile(PRICE_REGEX, 8).matcher(str);
            if (!matcher.find()) {
                return 0.0d;
            }
            return NumberFormat.getNumberInstance(Utility.getCurrentLocale()).parse(matcher.group(0)).doubleValue();
        } catch (ParseException unused) {
            return 0.0d;
        }
    }
}
