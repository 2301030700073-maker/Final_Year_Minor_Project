package androidx.work.impl;

import androidx.work.SystemClock;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CleanupCallback {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object clock;

    public CleanupCallback(SystemClock systemClock) {
        systemClock.getClass();
        this.clock = systemClock;
    }

    public CleanupCallback(DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0) {
        this.clock = diskLruCache$$ExternalSyntheticLambda0;
    }
}
