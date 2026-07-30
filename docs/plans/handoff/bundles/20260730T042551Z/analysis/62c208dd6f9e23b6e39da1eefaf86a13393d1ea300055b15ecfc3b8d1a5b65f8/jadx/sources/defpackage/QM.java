package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public final class QM {
    private volatile int blockingTasksInBuffer;
    private volatile int consumerIndex;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReferenceArray<EG> f2930do = new AtomicReferenceArray<>(128);
    private volatile Object lastScheduledTask;
    private volatile int producerIndex;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicReferenceFieldUpdater f2927do = AtomicReferenceFieldUpdater.newUpdater(QM.class, Object.class, "lastScheduledTask");

    /* renamed from: do, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f2926do = AtomicIntegerFieldUpdater.newUpdater(QM.class, "producerIndex");

    /* renamed from: if, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f2929if = AtomicIntegerFieldUpdater.newUpdater(QM.class, "consumerIndex");

    /* renamed from: for, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f2928for = AtomicIntegerFieldUpdater.newUpdater(QM.class, "blockingTasksInBuffer");

    /* renamed from: do, reason: not valid java name */
    public final EG m1954do(EG eg) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2926do;
        if (atomicIntegerFieldUpdater.get(this) - f2929if.get(this) == 127) {
            return eg;
        }
        if (eg.f765do.mo495do() == 1) {
            f2928for.incrementAndGet(this);
        }
        int i = atomicIntegerFieldUpdater.get(this) & ModuleDescriptor.MODULE_VERSION;
        while (true) {
            AtomicReferenceArray<EG> atomicReferenceArray = this.f2930do;
            if (atomicReferenceArray.get(i) == null) {
                atomicReferenceArray.lazySet(i, eg);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final EG m1955for(int i, boolean z) {
        int i2 = i & ModuleDescriptor.MODULE_VERSION;
        AtomicReferenceArray<EG> atomicReferenceArray = this.f2930do;
        EG eg = atomicReferenceArray.get(i2);
        if (eg != null) {
            boolean z2 = false;
            if ((eg.f765do.mo495do() == 1) == z) {
                while (true) {
                    if (atomicReferenceArray.compareAndSet(i2, eg, null)) {
                        z2 = true;
                        break;
                    }
                    if (atomicReferenceArray.get(i2) != eg) {
                        break;
                    }
                }
                if (z2) {
                    if (z) {
                        f2928for.decrementAndGet(this);
                    }
                    return eg;
                }
            }
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public final EG m1956if() {
        EG andSet;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2929if;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - f2926do.get(this) == 0) {
                return null;
            }
            int i2 = i & ModuleDescriptor.MODULE_VERSION;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (andSet = this.f2930do.getAndSet(i2, null)) != null) {
                if (andSet.f765do.mo495do() == 1) {
                    f2928for.decrementAndGet(this);
                }
                return andSet;
            }
        }
    }
}
