package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.core.DurationNs;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ConcurrentSessionSequencer {
    public static final DurationNs[] activeResumeCameraRetryThresholds = {new DurationNs(120000000000L), new DurationNs(300000000000L)};
}
