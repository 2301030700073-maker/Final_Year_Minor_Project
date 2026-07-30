package defpackage;

import com.facebook.appevents.iap.InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$2;
import com.facebook.appevents.internal.ActivityLifecycleTracker;

/* renamed from: vn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3880vn implements Runnable {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f16121for;

    public /* synthetic */ RunnableC3880vn(int i) {
        this.f16121for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16121for) {
            case 0:
                InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$2.m5361onActivityResumed$lambda0();
                break;
            case 1:
                ActivityLifecycleTracker.m5373onActivityCreated$lambda1();
                break;
            default:
                C0301Jk.m1051else(false);
                break;
        }
    }
}
