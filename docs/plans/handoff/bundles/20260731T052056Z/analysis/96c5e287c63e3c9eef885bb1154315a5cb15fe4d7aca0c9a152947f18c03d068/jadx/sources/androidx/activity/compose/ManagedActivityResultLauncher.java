package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.core.app.ActivityOptionsCompat$ActivityOptionsCompatImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ManagedActivityResultLauncher extends ActivityResultLauncher {
    public final ActivityResultLauncherHolder launcher;

    public ManagedActivityResultLauncher(ActivityResultLauncherHolder activityResultLauncherHolder) {
        this.launcher = activityResultLauncherHolder;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void launch(Object obj, ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl) {
        ActivityResultRegistry$register$2 activityResultRegistry$register$2 = this.launcher.launcher;
        if (activityResultRegistry$register$2 != null) {
            activityResultRegistry$register$2.launch(obj, activityOptionsCompat$ActivityOptionsCompatImpl);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Launcher has not been initialized");
        }
    }
}
