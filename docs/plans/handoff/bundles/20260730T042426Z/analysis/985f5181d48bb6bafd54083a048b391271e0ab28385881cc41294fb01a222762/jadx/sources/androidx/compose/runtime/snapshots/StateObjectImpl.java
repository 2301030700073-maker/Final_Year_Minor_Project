package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.AtomicInt;
import androidx.compose.runtime.snapshots.StateObject;

/* compiled from: StateObjectImpl.kt */
/* loaded from: classes.dex */
public abstract class StateObjectImpl implements StateObject {
    private final AtomicInt readerKind = new AtomicInt(0);

    @Override // androidx.compose.runtime.snapshots.StateObject
    public /* synthetic */ StateRecord mergeRecords(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        return StateObject.CC.$default$mergeRecords(this, stateRecord, stateRecord2, stateRecord3);
    }

    /* renamed from: recordReadIn-h_f27i8$runtime_release, reason: not valid java name */
    public final void m1073recordReadInh_f27i8$runtime_release(int i) {
        int m1067constructorimpl;
        do {
            m1067constructorimpl = ReaderKind.m1067constructorimpl(this.readerKind.get());
            if ((m1067constructorimpl & i) != 0) {
                return;
            }
        } while (!this.readerKind.compareAndSet(m1067constructorimpl, ReaderKind.m1067constructorimpl(m1067constructorimpl | i)));
    }

    /* renamed from: isReadIn-h_f27i8$runtime_release, reason: not valid java name */
    public final boolean m1072isReadInh_f27i8$runtime_release(int i) {
        return (i & ReaderKind.m1067constructorimpl(this.readerKind.get())) != 0;
    }
}
