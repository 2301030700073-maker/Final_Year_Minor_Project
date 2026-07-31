package androidx.camera.camera2.pipe.core;

import java.util.concurrent.ThreadFactory;
import kotlin.text.StringsKt;
import kotlinx.atomicfu.AtomicInt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidThreads$$ExternalSyntheticLambda1 implements ThreadFactory {
    public final /* synthetic */ ThreadFactory f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ AtomicInt f$2;

    public /* synthetic */ AndroidThreads$$ExternalSyntheticLambda1(ThreadFactory threadFactory, String str, AtomicInt atomicInt) {
        this.f$0 = threadFactory;
        this.f$1 = str;
        this.f$2 = atomicInt;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f$0.newThread(runnable);
        newThread.getClass();
        newThread.setName(this.f$1 + StringsKt.padStart(String.valueOf(AtomicInt.FU.incrementAndGet(this.f$2)), 2));
        return newThread;
    }
}
