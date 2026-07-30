package defpackage;

import com.facebook.appevents.suggestedevents.SuggestedEventsManager;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.instrument.anrreport.ANRDetector;

/* loaded from: classes.dex */
public final /* synthetic */ class OF implements Runnable {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2610for;

    public /* synthetic */ OF(int i) {
        this.f2610for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2610for) {
            case 0:
                SuggestedEventsManager.m5394enable$lambda0();
                break;
            case 1:
                NativeProtocol.m5432updateAllAvailableProtocolVersionsAsync$lambda1();
                break;
            default:
                ANRDetector.m5464anrDetectorRunnable$lambda0();
                break;
        }
    }
}
