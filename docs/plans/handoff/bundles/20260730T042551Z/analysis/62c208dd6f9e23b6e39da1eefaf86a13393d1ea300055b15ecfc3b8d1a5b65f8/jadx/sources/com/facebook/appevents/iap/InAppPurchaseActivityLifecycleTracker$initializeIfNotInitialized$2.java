package com.facebook.appevents.iap;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.RunnableC3880vn;
import defpackage.Z1;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$2 implements Application.ActivityLifecycleCallbacks {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onActivityResumed$lambda-0, reason: not valid java name */
    public static final void m5361onActivityResumed$lambda0() {
        Object obj;
        Object obj2;
        Context m8299do = C3756th.m8299do();
        InAppPurchaseEventManager inAppPurchaseEventManager = InAppPurchaseEventManager.INSTANCE;
        obj = InAppPurchaseActivityLifecycleTracker.inAppBillingObj;
        ArrayList<String> purchasesInapp = InAppPurchaseEventManager.getPurchasesInapp(m8299do, obj);
        InAppPurchaseActivityLifecycleTracker inAppPurchaseActivityLifecycleTracker = InAppPurchaseActivityLifecycleTracker.INSTANCE;
        inAppPurchaseActivityLifecycleTracker.logPurchase(m8299do, purchasesInapp, false);
        obj2 = InAppPurchaseActivityLifecycleTracker.inAppBillingObj;
        inAppPurchaseActivityLifecycleTracker.logPurchase(m8299do, InAppPurchaseEventManager.getPurchasesSubs(m8299do, obj2), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onActivityStopped$lambda-1, reason: not valid java name */
    public static final void m5362onActivityStopped$lambda1() {
        Object obj;
        Object obj2;
        Context m8299do = C3756th.m8299do();
        InAppPurchaseEventManager inAppPurchaseEventManager = InAppPurchaseEventManager.INSTANCE;
        obj = InAppPurchaseActivityLifecycleTracker.inAppBillingObj;
        ArrayList<String> purchasesInapp = InAppPurchaseEventManager.getPurchasesInapp(m8299do, obj);
        if (purchasesInapp.isEmpty()) {
            obj2 = InAppPurchaseActivityLifecycleTracker.inAppBillingObj;
            purchasesInapp = InAppPurchaseEventManager.getPurchaseHistoryInapp(m8299do, obj2);
        }
        InAppPurchaseActivityLifecycleTracker.INSTANCE.logPurchase(m8299do, purchasesInapp, false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        C0173Do.m401try(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        C0173Do.m401try(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        C0173Do.m401try(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        C0173Do.m401try(activity, "activity");
        try {
            C3756th.m8304new().execute(new RunnableC3880vn(0));
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        C0173Do.m401try(activity, "activity");
        C0173Do.m401try(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        C0173Do.m401try(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Boolean bool;
        C0173Do.m401try(activity, "activity");
        try {
            bool = InAppPurchaseActivityLifecycleTracker.hasBillingActivity;
            if (C0173Do.m394do(bool, Boolean.TRUE) && C0173Do.m394do(activity.getLocalClassName(), "com.android.billingclient.api.ProxyBillingActivity")) {
                C3756th.m8304new().execute(new Z1(1));
            }
        } catch (Exception unused) {
        }
    }
}
