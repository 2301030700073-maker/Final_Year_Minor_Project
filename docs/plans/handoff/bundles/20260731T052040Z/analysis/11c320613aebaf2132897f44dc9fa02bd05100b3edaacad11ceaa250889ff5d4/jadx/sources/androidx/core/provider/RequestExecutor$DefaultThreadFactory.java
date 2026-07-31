package androidx.core.provider;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RequestExecutor$DefaultThreadFactory implements ThreadFactory {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ProcessPriorityThread extends Thread {
        public final int mPriority;

        public ProcessPriorityThread(Runnable runnable) {
            super(runnable, "fonts-androidx");
            this.mPriority = 10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(this.mPriority);
            super.run();
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new ProcessPriorityThread(runnable);
    }
}
