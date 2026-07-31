package kotlinx.atomicfu;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AtomicLong {
    public static final AtomicLongFieldUpdater FU = AtomicLongFieldUpdater.newUpdater(AtomicLong.class, "value");
    public volatile long value;

    public final String toString() {
        return String.valueOf(this.value);
    }
}
