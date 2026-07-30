package defpackage;

import android.os.Bundle;

/* renamed from: gU, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC2814gU implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f13182do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Bundle f13183do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2638dU f13184do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2696eU f13185do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ C2696eU f13186if;

    public RunnableC2814gU(C2638dU c2638dU, Bundle bundle, C2696eU c2696eU, C2696eU c2696eU2, long j) {
        this.f13183do = bundle;
        this.f13185do = c2696eU;
        this.f13186if = c2696eU2;
        this.f13182do = j;
        this.f13184do = c2638dU;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2696eU c2696eU = this.f13185do;
        C2696eU c2696eU2 = this.f13186if;
        long j = this.f13182do;
        Bundle bundle = this.f13183do;
        if (bundle != null) {
            bundle.remove("screen_name");
            bundle.remove("screen_class");
        }
        C2638dU c2638dU = this.f13184do;
        c2638dU.m6455default(c2696eU, c2696eU2, j, true, c2638dU.m7571break().m7591return("screen_view", bundle, null, false));
    }
}
