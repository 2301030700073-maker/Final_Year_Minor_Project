package defpackage;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes3.dex */
public final class RJ implements ThreadFactory {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ String f3160do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f3161do;

    public RJ(String str, boolean z) {
        this.f3160do = str;
        this.f3161do = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f3160do);
        thread.setDaemon(this.f3161do);
        return thread;
    }
}
