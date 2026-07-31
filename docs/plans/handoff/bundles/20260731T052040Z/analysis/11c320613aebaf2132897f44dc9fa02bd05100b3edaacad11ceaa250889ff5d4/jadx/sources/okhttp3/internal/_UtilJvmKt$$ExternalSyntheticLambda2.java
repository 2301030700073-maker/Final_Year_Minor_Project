package okhttp3.internal;

import java.util.concurrent.ThreadFactory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class _UtilJvmKt$$ExternalSyntheticLambda2 implements ThreadFactory {
    public final /* synthetic */ String f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ _UtilJvmKt$$ExternalSyntheticLambda2(String str, boolean z) {
        this.f$0 = str;
        this.f$1 = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f$0);
        thread.setDaemon(this.f$1);
        return thread;
    }
}
