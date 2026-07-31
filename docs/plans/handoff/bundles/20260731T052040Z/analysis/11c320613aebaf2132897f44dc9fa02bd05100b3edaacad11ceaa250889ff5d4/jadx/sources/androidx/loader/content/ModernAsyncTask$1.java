package androidx.loader.content;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ModernAsyncTask$1 implements ThreadFactory {
    public final /* synthetic */ int $r8$classId;
    public final AtomicInteger mCount;

    public ModernAsyncTask$1(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.mCount = new AtomicInteger(0);
                break;
            default:
                this.mCount = new AtomicInteger(1);
                break;
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int i = this.$r8$classId;
        AtomicInteger atomicInteger = this.mCount;
        switch (i) {
            case 0:
                return new Thread(runnable, "ModernAsyncTask #" + atomicInteger.getAndIncrement());
            default:
                Thread thread = new Thread(runnable);
                thread.setName("arch_disk_io_" + atomicInteger.getAndIncrement());
                return thread;
        }
    }
}
