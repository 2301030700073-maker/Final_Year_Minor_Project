package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C0315Kc;
import defpackage.C3756th;
import defpackage.J2;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class CustomTabUtils {
    public static final CustomTabUtils INSTANCE = new CustomTabUtils();
    private static final String[] CHROME_PACKAGES = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};

    private CustomTabUtils() {
    }

    public static final String getChromePackage() {
        if (CrashShieldHandler.isObjectCrashing(CustomTabUtils.class)) {
            return null;
        }
        try {
            Context m8299do = C3756th.m8299do();
            List<ResolveInfo> queryIntentServices = m8299do.getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
            C0173Do.m399new(queryIntentServices, "context.packageManager.queryIntentServices(serviceIntent, 0)");
            String[] strArr = CHROME_PACKAGES;
            C0173Do.m401try(strArr, "<this>");
            HashSet hashSet = new HashSet(C0315Kc.m1180switch(strArr.length));
            J2.h(hashSet, strArr);
            Iterator<ResolveInfo> it = queryIntentServices.iterator();
            while (it.hasNext()) {
                ServiceInfo serviceInfo = it.next().serviceInfo;
                if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
                    return serviceInfo.packageName;
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CustomTabUtils.class);
            return null;
        }
    }

    public static final String getDefaultRedirectURI() {
        if (CrashShieldHandler.isObjectCrashing(CustomTabUtils.class)) {
            return null;
        }
        try {
            return C0173Do.m397goto(C3756th.m8299do().getPackageName(), Validate.CUSTOM_TAB_REDIRECT_URI_PREFIX);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CustomTabUtils.class);
            return null;
        }
    }

    public static final String getValidRedirectURI(String str) {
        if (CrashShieldHandler.isObjectCrashing(CustomTabUtils.class)) {
            return null;
        }
        try {
            C0173Do.m401try(str, "developerDefinedRedirectURI");
            Validate validate = Validate.INSTANCE;
            return Validate.hasCustomTabRedirectActivity(C3756th.m8299do(), str) ? str : Validate.hasCustomTabRedirectActivity(C3756th.m8299do(), getDefaultRedirectURI()) ? getDefaultRedirectURI() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CustomTabUtils.class);
            return null;
        }
    }
}
