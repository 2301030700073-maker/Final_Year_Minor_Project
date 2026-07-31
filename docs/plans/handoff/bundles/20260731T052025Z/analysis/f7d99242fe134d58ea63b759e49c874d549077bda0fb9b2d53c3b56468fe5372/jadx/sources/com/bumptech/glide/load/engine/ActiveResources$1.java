package com.bumptech.glide.load.engine;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ActiveResources$1 implements ThreadFactory {
    public final /* synthetic */ int $r8$classId;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.bumptech.glide.load.engine.ActiveResources$1$1, reason: invalid class name */
    public final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Runnable val$r;

        public /* synthetic */ AnonymousClass1(int i, Runnable runnable) {
            this.$r8$classId = i;
            this.val$r = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.$r8$classId;
            Runnable runnable = this.val$r;
            switch (i) {
                case 0:
                    Process.setThreadPriority(10);
                    runnable.run();
                    break;
                default:
                    runnable.run();
                    break;
            }
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(final Runnable runnable) {
        switch (this.$r8$classId) {
            case 0:
                return new Thread(new AnonymousClass1(0, runnable), "glide-active-resources");
            case 1:
                Thread thread = new Thread(runnable);
                thread.setPriority(10);
                thread.setName("CameraX-camerax_high_priority");
                return thread;
            default:
                return new Thread(runnable) { // from class: androidx.core.provider.RequestExecutor$DefaultThreadFactory$ProcessPriorityThread
                    public final int mPriority = 10;

                    @Override // java.lang.Thread, java.lang.Runnable
                    public final void run() {
                        Process.setThreadPriority(this.mPriority);
                        super.run();
                    }
                };
        }
    }
}
