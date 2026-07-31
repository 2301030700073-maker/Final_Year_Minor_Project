package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NestedMutableSnapshot extends MutableSnapshot {
    public boolean deactivated;
    public final MutableSnapshot parent;

    public NestedMutableSnapshot(long j, SnapshotIdSet snapshotIdSet, Function1 function1, Function1 function12, MutableSnapshot mutableSnapshot) {
        super(j, snapshotIdSet, function1, function12);
        this.parent = mutableSnapshot;
        mutableSnapshot.nestedActivated$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final SnapshotId_jvmKt apply() {
        NestedMutableSnapshot nestedMutableSnapshot;
        MutableSnapshot mutableSnapshot = this.parent;
        if (mutableSnapshot.applied || mutableSnapshot.disposed) {
            return new SnapshotApplyResult$Failure(this);
        }
        MutableScatterSet mutableScatterSet = this.modified;
        long j = this.snapshotId;
        HashMap optimisticMerges = mutableScatterSet != null ? SnapshotKt.optimisticMerges(mutableSnapshot.getSnapshotId(), this, this.parent.getInvalid$runtime()) : null;
        synchronized (SnapshotKt.lock) {
            try {
                SnapshotKt.validateOpen(this);
                if (mutableScatterSet == null || mutableScatterSet._size == 0) {
                    nestedMutableSnapshot = this;
                    nestedMutableSnapshot.closeAndReleasePinning$runtime();
                } else {
                    nestedMutableSnapshot = this;
                    SnapshotId_jvmKt innerApplyLocked$runtime = nestedMutableSnapshot.innerApplyLocked$runtime(this.parent.getSnapshotId(), mutableScatterSet, optimisticMerges, this.parent.getInvalid$runtime());
                    if (!innerApplyLocked$runtime.equals(SnapshotApplyResult$Success.INSTANCE)) {
                        return innerApplyLocked$runtime;
                    }
                    MutableScatterSet modified$runtime = nestedMutableSnapshot.parent.getModified$runtime();
                    if (modified$runtime != null) {
                        modified$runtime.plusAssign(mutableScatterSet);
                    } else {
                        nestedMutableSnapshot.parent.setModified$runtime(mutableScatterSet);
                        nestedMutableSnapshot.modified = null;
                    }
                }
                if (Intrinsics.compare(nestedMutableSnapshot.parent.getSnapshotId(), j) < 0) {
                    nestedMutableSnapshot.parent.advance$runtime();
                }
                MutableSnapshot mutableSnapshot2 = nestedMutableSnapshot.parent;
                mutableSnapshot2.setInvalid$runtime(mutableSnapshot2.getInvalid$runtime().clear(j).andNot(nestedMutableSnapshot.previousIds));
                nestedMutableSnapshot.parent.recordPrevious$runtime(j);
                MutableSnapshot mutableSnapshot3 = nestedMutableSnapshot.parent;
                int i = nestedMutableSnapshot.pinningTrackingHandle;
                nestedMutableSnapshot.pinningTrackingHandle = -1;
                if (i >= 0) {
                    int[] iArr = mutableSnapshot3.previousPinnedSnapshots;
                    iArr.getClass();
                    int length = iArr.length;
                    int[] copyOf = Arrays.copyOf(iArr, length + 1);
                    copyOf[length] = i;
                    mutableSnapshot3.previousPinnedSnapshots = copyOf;
                } else {
                    mutableSnapshot3.getClass();
                }
                nestedMutableSnapshot.parent.recordPreviousList$runtime(nestedMutableSnapshot.previousIds);
                MutableSnapshot mutableSnapshot4 = nestedMutableSnapshot.parent;
                int[] iArr2 = nestedMutableSnapshot.previousPinnedSnapshots;
                mutableSnapshot4.getClass();
                if (iArr2.length != 0) {
                    int[] iArr3 = mutableSnapshot4.previousPinnedSnapshots;
                    if (iArr3.length != 0) {
                        iArr2 = ArraysKt___ArraysKt.plus(iArr3, iArr2);
                    }
                    mutableSnapshot4.previousPinnedSnapshots = iArr2;
                }
                nestedMutableSnapshot.applied = true;
                if (!nestedMutableSnapshot.deactivated) {
                    nestedMutableSnapshot.deactivated = true;
                    nestedMutableSnapshot.parent.nestedDeactivated$runtime();
                }
                return SnapshotApplyResult$Success.INSTANCE;
            } finally {
            }
        }
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void dispose() {
        if (this.disposed) {
            return;
        }
        super.dispose();
        if (this.deactivated) {
            return;
        }
        this.deactivated = true;
        this.parent.nestedDeactivated$runtime();
    }
}
