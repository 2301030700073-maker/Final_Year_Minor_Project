package com.facebook.appevents.iap;

import android.content.Context;
import com.facebook.appevents.iap.InAppPurchaseBillingClientWrapper;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.RunnableC0727b2;
import defpackage.RunnableC3939wn;

/* loaded from: classes.dex */
public final class InAppPurchaseAutoLogger {
    private static final String BILLING_CLIENT_PURCHASE_NAME = "com.android.billingclient.api.Purchase";
    public static final InAppPurchaseAutoLogger INSTANCE = new InAppPurchaseAutoLogger();

    private InAppPurchaseAutoLogger() {
    }

    private final void logPurchase() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            InAppPurchaseLoggerManager inAppPurchaseLoggerManager = InAppPurchaseLoggerManager.INSTANCE;
            InAppPurchaseBillingClientWrapper.Companion companion = InAppPurchaseBillingClientWrapper.Companion;
            InAppPurchaseLoggerManager.filterPurchaseLogging(companion.getPurchaseDetailsMap(), companion.getSkuDetailsMap());
            companion.getPurchaseDetailsMap().clear();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void startIapLogging(Context context) {
        InAppPurchaseBillingClientWrapper.Companion companion;
        InAppPurchaseBillingClientWrapper orCreateInstance;
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseAutoLogger.class)) {
            return;
        }
        try {
            C0173Do.m401try(context, "context");
            if (InAppPurchaseUtils.getClass(BILLING_CLIENT_PURCHASE_NAME) == null || (orCreateInstance = (companion = InAppPurchaseBillingClientWrapper.Companion).getOrCreateInstance(context)) == null || !companion.isServiceConnected().get()) {
                return;
            }
            if (InAppPurchaseLoggerManager.eligibleQueryPurchaseHistory()) {
                orCreateInstance.queryPurchaseHistory("inapp", new RunnableC3939wn(0));
            } else {
                orCreateInstance.queryPurchase("inapp", new RunnableC0727b2(1));
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseAutoLogger.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startIapLogging$lambda-0, reason: not valid java name */
    public static final void m5365startIapLogging$lambda0() {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseAutoLogger.class)) {
            return;
        }
        try {
            INSTANCE.logPurchase();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseAutoLogger.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startIapLogging$lambda-1, reason: not valid java name */
    public static final void m5366startIapLogging$lambda1() {
        if (CrashShieldHandler.isObjectCrashing(InAppPurchaseAutoLogger.class)) {
            return;
        }
        try {
            INSTANCE.logPurchase();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, InAppPurchaseAutoLogger.class);
        }
    }
}
