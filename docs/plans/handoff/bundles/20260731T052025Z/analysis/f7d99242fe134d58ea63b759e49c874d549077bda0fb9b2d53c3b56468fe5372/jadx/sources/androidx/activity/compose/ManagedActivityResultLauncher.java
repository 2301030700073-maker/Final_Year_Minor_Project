package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry$register$2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ManagedActivityResultLauncher extends ActivityResultLauncher {
    public final ActivityResultLauncherHolder launcher;

    public ManagedActivityResultLauncher(ActivityResultLauncherHolder activityResultLauncherHolder) {
        this.launcher = activityResultLauncherHolder;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void launch(Object obj) {
        ActivityResultRegistry$register$2 activityResultRegistry$register$2 = this.launcher.launcher;
        if (activityResultRegistry$register$2 != null) {
            activityResultRegistry$register$2.launch(obj);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Launcher has not been initialized");
        }
    }
}
