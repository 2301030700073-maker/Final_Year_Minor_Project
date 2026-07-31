package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.AtomicInt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StateObjectImpl implements StateObject {
    public final AtomicInt readerKind = new AtomicInt(0);

    /* renamed from: isReadIn-h_f27i8$runtime, reason: not valid java name */
    public final boolean m331isReadInh_f27i8$runtime(int i) {
        return (this.readerKind.get() & i) != 0;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord mergeRecords(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        return null;
    }

    /* renamed from: recordReadIn-h_f27i8$runtime, reason: not valid java name */
    public final void m332recordReadInh_f27i8$runtime(int i) {
        AtomicInt atomicInt;
        int i2;
        do {
            atomicInt = this.readerKind;
            i2 = atomicInt.get();
            if ((i2 & i) != 0) {
                return;
            }
        } while (!atomicInt.compareAndSet(i2, i2 | i));
    }
}
