package defpackage;

import com.facebook.appevents.iap.InAppPurchaseAutoLogger;
import com.facebook.appevents.ml.ModelManager;

/* renamed from: wn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3939wn implements Runnable {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f16407for;

    public /* synthetic */ RunnableC3939wn(int i) {
        this.f16407for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16407for) {
            case 0:
                InAppPurchaseAutoLogger.m5365startIapLogging$lambda0();
                break;
            default:
                ModelManager.m5381enableMTML$lambda1();
                break;
        }
    }
}
