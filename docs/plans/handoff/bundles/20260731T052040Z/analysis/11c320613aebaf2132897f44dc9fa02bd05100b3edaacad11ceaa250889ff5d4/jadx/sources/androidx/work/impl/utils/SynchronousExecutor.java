package androidx.work.impl.utils;

import java.util.concurrent.Executor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SynchronousExecutor implements Executor {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.$r8$classId) {
            case 0:
                runnable.run();
                break;
            default:
                new Thread(runnable).start();
                break;
        }
    }
}
