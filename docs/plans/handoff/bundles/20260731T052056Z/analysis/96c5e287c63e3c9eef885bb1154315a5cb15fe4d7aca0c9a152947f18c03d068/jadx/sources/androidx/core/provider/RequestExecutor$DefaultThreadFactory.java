package androidx.core.provider;

import java.util.concurrent.ThreadFactory;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RequestExecutor$DefaultThreadFactory implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new AsyncTimeout.Watchdog(runnable, "fonts-androidx");
    }
}
