package io.reactivex.rxjava3.internal.schedulers;

import androidx.compose.ui.Modifier;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RxThreadFactory extends AtomicLong implements ThreadFactory {
    private static final long serialVersionUID = -7789753024099756196L;
    final boolean nonBlocking;
    final String prefix;
    final int priority;

    public RxThreadFactory(int i, String str, boolean z) {
        this.prefix = str;
        this.priority = i;
        this.nonBlocking = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.prefix + '-' + incrementAndGet();
        Thread watchdog = this.nonBlocking ? new AsyncTimeout.Watchdog(str, runnable) : new Thread(runnable, str);
        watchdog.setPriority(this.priority);
        watchdog.setDaemon(true);
        return watchdog;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return Modifier.CC.m(new StringBuilder("RxThreadFactory["), this.prefix, "]");
    }

    public RxThreadFactory(String str) {
        this(5, str, false);
    }
}
