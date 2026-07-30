package defpackage;

import com.facebook.appevents.AppEventsLoggerImpl;
import com.facebook.appevents.UserDataStore;

/* renamed from: d2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC2610d2 implements Runnable {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f12413for;

    public /* synthetic */ RunnableC2610d2(int i) {
        this.f12413for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12413for) {
            case 0:
                AppEventsLoggerImpl.Companion.m5316initializeTimersIfNeeded$lambda6();
                break;
            case 1:
                UserDataStore.m5329clear$lambda2();
                break;
            default:
                C0301Jk.f1683new = false;
                break;
        }
    }
}
