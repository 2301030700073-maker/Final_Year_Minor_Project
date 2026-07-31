package androidx.camera.camera2.pipe.internal;

import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutputMatcher {
    public static final OutputMatcher EXACT = new OutputMatcher();
    public final AtomicRef currentOffset = AtomicFU.atomic((Object) 0L);

    public final boolean fuzzyEqual(long j, long j2) {
        return (j - j2) + ((Number) this.currentOffset.value).longValue() == 0;
    }
}
