package kotlinx.atomicfu;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AtomicBoolean {
    public static final AtomicIntegerFieldUpdater FU = AtomicIntegerFieldUpdater.newUpdater(AtomicBoolean.class, "_value");
    public volatile int _value;

    public final boolean compareAndSet() {
        return FU.compareAndSet(this, 0, 1);
    }

    public final boolean getValue() {
        return this._value != 0;
    }

    public final String toString() {
        return String.valueOf(getValue());
    }
}
