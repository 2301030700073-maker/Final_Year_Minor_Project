package defpackage;

import com.facebook.appevents.AppEventQueue;
import com.facebook.appevents.iap.InAppPurchaseAutoLogger;
import com.facebook.appevents.ml.ModelManager;

/* renamed from: b2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0727b2 implements Runnable {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f8319for;

    public /* synthetic */ RunnableC0727b2(int i) {
        this.f8319for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8319for) {
            case 0:
                AppEventQueue.m5306flushRunnable$lambda0();
                break;
            case 1:
                InAppPurchaseAutoLogger.m5366startIapLogging$lambda1();
                break;
            default:
                ModelManager.m5382enableMTML$lambda2();
                break;
        }
    }
}
