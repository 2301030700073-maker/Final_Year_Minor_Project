package c.a.b;

import com.android.quickstep.BaseSwipeUpHandlerV2;

/* loaded from: classes.dex */
public final /* synthetic */ class K implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseSwipeUpHandlerV2 f1969a;

    public /* synthetic */ K(BaseSwipeUpHandlerV2 baseSwipeUpHandlerV2) {
        this.f1969a = baseSwipeUpHandlerV2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1969a.continueComputingRecentsScrollIfNecessary();
    }
}
