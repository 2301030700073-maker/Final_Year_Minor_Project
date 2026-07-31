package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.AtomicInt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class StateObjectImpl implements StateObject {
    public final AtomicInt readerKind = new AtomicInt(0);

    /* renamed from: isReadIn-h_f27i8$runtime, reason: not valid java name */
    public final boolean m385isReadInh_f27i8$runtime(int i) {
        return (this.readerKind.get() & i) != 0;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public /* synthetic */ StateRecord mergeRecords(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        return null;
    }

    /* renamed from: recordReadIn-h_f27i8$runtime, reason: not valid java name */
    public final void m386recordReadInh_f27i8$runtime(int i) {
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
