package kotlinx.atomicfu;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AtomicInt {
    public static final AtomicIntegerFieldUpdater FU = AtomicIntegerFieldUpdater.newUpdater(AtomicInt.class, "value");
    public volatile int value;

    public final int decrementAndGet() {
        return FU.decrementAndGet(this);
    }

    public final String toString() {
        return String.valueOf(this.value);
    }
}
