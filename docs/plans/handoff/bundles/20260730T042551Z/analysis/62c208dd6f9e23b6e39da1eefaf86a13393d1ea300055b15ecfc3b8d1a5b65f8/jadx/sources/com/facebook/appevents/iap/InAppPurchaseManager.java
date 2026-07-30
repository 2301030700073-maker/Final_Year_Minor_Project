package com.facebook.appevents.iap;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.EF;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class InAppPurchaseManager {
    private static final String GOOGLE_BILLINGCLIENT_VERSION = "com.google.android.play.billingclient.version";
    public static final InAppPurchaseManager INSTANCE = new InAppPurchaseManager();
    private static final AtomicBoolean enabled = new AtomicBoolean(false);

    private InAppPurchaseManager() {
    }

    public static final void enableAutoLogging() {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseManager.class)) {
            return;
        }
        try {
            enabled.set(true);
            startTracking();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseManager.class);
        }
    }

    public static final void startTracking() {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseManager.class)) {
            return;
        }
        try {
            if (enabled.get()) {
                if (INSTANCE.usingBillingLib2Plus()) {
                    FeatureManager featureManager = FeatureManager.INSTANCE;
                    if (FeatureManager.isEnabled(FeatureManager.Feature.IapLoggingLib2)) {
                        InAppPurchaseAutoLogger inAppPurchaseAutoLogger = InAppPurchaseAutoLogger.INSTANCE;
                        InAppPurchaseAutoLogger.startIapLogging(C3756th.m8299do());
                        return;
                    }
                }
                InAppPurchaseActivityLifecycleTracker.startIapLogging();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseManager.class);
        }
    }

    private final boolean usingBillingLib2Plus() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            Context m8299do = C3756th.m8299do();
            ApplicationInfo applicationInfo = m8299do.getPackageManager().getApplicationInfo(m8299do.getPackageName(), 128);
            C0173Do.m399new(applicationInfo, "context.packageManager.getApplicationInfo(\n              context.packageName, PackageManager.GET_META_DATA)");
            String string = applicationInfo.metaData.getString(GOOGLE_BILLINGCLIENT_VERSION);
            if (string == null) {
                return false;
            }
            return Integer.parseInt((String) EF.t(string, new String[]{"."}, 3, 2).get(0)) >= 2;
        } catch (Exception unused) {
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }
}
