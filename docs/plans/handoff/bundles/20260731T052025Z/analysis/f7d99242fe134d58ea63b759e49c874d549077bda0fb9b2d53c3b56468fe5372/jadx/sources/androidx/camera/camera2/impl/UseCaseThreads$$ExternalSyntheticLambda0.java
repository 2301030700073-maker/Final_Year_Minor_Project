package androidx.camera.camera2.impl;

import android.view.Choreographer;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.profileinstaller.ProfileInstallerInitializer$$ExternalSyntheticLambda0;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class UseCaseThreads$$ExternalSyntheticLambda0 implements Executor {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ UseCaseThreads$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                UseCaseThreads useCaseThreads = (UseCaseThreads) obj;
                useCaseThreads.sequentialExecutorDelegate.execute(new CameraX$$ExternalSyntheticLambda2(7, useCaseThreads, runnable));
                break;
            default:
                ((Choreographer) obj).postFrameCallback(new ProfileInstallerInitializer$$ExternalSyntheticLambda0(1, runnable));
                break;
        }
    }
}
