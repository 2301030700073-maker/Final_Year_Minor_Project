package androidx.work.impl;

import androidx.work.SystemClock;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
