package defpackage;

import com.facebook.appevents.AppEventQueue;
import com.facebook.appevents.iap.InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$2;
import com.facebook.appevents.ml.ModelManager;

/* loaded from: classes.dex */
public final /* synthetic */ class Z1 implements Runnable {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f4774for;

    public /* synthetic */ Z1(int i) {
        this.f4774for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4774for) {
            case 0:
                AppEventQueue.m5311persistToDisk$lambda1();
                break;
            case 1:
                InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$2.m5362onActivityStopped$lambda1();
                break;
            default:
                ModelManager.m5380enable$lambda0();
                break;
        }
    }
}
