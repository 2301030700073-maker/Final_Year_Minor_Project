package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TransparentObserverMutableSnapshot extends MutableSnapshot {
    public final boolean mergeParentObservers;
    public final boolean ownsParentSnapshot;
    public final MutableSnapshot parentSnapshot;
    public Function1 readObserver;
    public final long threadId;
    public Function1 writeObserver;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TransparentObserverMutableSnapshot(androidx.compose.runtime.snapshots.MutableSnapshot r8, kotlin.jvm.functions.Function1 r9, kotlin.jvm.functions.Function1 r10, boolean r11, boolean r12) {
        /*
            r7 = this;
            androidx.compose.material3.TextKt$$ExternalSyntheticLambda1 r0 = androidx.compose.runtime.snapshots.SnapshotKt.emptyLambda
            if (r8 == 0) goto La
            kotlin.jvm.functions.Function1 r0 = r8.getReadObserver()
            if (r0 != 0) goto Le
        La:
            androidx.compose.runtime.snapshots.GlobalSnapshot r0 = androidx.compose.runtime.snapshots.SnapshotKt.globalSnapshot
            kotlin.jvm.functions.Function1 r0 = r0.readObserver
        Le:
            kotlin.jvm.functions.Function1 r5 = androidx.compose.runtime.snapshots.SnapshotKt.mergedReadObserver(r9, r0, r11)
            if (r8 == 0) goto L1a
            kotlin.jvm.functions.Function1 r9 = r8.getWriteObserver$runtime()
            if (r9 != 0) goto L1e
        L1a:
            androidx.compose.runtime.snapshots.GlobalSnapshot r9 = androidx.compose.runtime.snapshots.SnapshotKt.globalSnapshot
            kotlin.jvm.functions.Function1 r9 = r9.writeObserver
        L1e:
            kotlin.jvm.functions.Function1 r6 = androidx.compose.runtime.snapshots.SnapshotKt.mergedWriteObserver(r10, r9)
            r2 = 0
            androidx.compose.runtime.snapshots.SnapshotIdSet r4 = androidx.compose.runtime.snapshots.SnapshotIdSet.EMPTY
            r1 = r7
            r1.<init>(r2, r4, r5, r6)
            r1.parentSnapshot = r8
            r1.mergeParentObservers = r11
            r1.ownsParentSnapshot = r12
            kotlin.jvm.functions.Function1 r7 = r1.readObserver
            r1.readObserver = r7
            kotlin.jvm.functions.Function1 r7 = r1.writeObserver
            r1.writeObserver = r7
            long r7 = androidx.compose.runtime.internal.Expect_jvmKt.currentThreadId()
            r1.threadId = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.TransparentObserverMutableSnapshot.<init>(androidx.compose.runtime.snapshots.MutableSnapshot, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, boolean, boolean):void");
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final SnapshotId_jvmKt apply() {
        return getCurrentSnapshot().apply();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void dispose() {
        MutableSnapshot mutableSnapshot;
        this.disposed = true;
        if (!this.ownsParentSnapshot || (mutableSnapshot = this.parentSnapshot) == null) {
            return;
        }
        mutableSnapshot.dispose();
    }

    public final MutableSnapshot getCurrentSnapshot() {
        MutableSnapshot mutableSnapshot = this.parentSnapshot;
        return mutableSnapshot == null ? SnapshotKt.globalSnapshot : mutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final SnapshotIdSet getInvalid$runtime() {
        return getCurrentSnapshot().getInvalid$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final MutableScatterSet getModified$runtime() {
        return getCurrentSnapshot().getModified$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final Function1 getReadObserver() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    /* renamed from: getReadObserver$runtime */
    public final Function1 getReadObserver() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final boolean getReadOnly() {
        return getCurrentSnapshot().getReadOnly();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final long getSnapshotId() {
        return getCurrentSnapshot().getSnapshotId();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final int getWriteCount$runtime() {
        return getCurrentSnapshot().getWriteCount$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final Function1 getWriteObserver$runtime() {
        return this.writeObserver;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void nestedActivated$runtime() {
        SnapshotId_jvmKt.unsupported();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void nestedDeactivated$runtime() {
        SnapshotId_jvmKt.unsupported();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void notifyObjectsInitialized$runtime() {
        getCurrentSnapshot().notifyObjectsInitialized$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void recordModified$runtime(StateObject stateObject) {
        getCurrentSnapshot().recordModified$runtime(stateObject);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void setInvalid$runtime(SnapshotIdSet snapshotIdSet) {
        SnapshotId_jvmKt.unsupported();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final void setModified$runtime(MutableScatterSet mutableScatterSet) {
        SnapshotId_jvmKt.unsupported();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void setSnapshotId$runtime(long j) {
        SnapshotId_jvmKt.unsupported();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void setWriteCount$runtime(int i) {
        getCurrentSnapshot().setWriteCount$runtime(i);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final MutableSnapshot takeNestedMutableSnapshot(Function1 function1, Function1 function12) {
        Function1 mergedReadObserver = SnapshotKt.mergedReadObserver(function1, this.readObserver, true);
        Function1 mergedWriteObserver = SnapshotKt.mergedWriteObserver(function12, this.writeObserver);
        return !this.mergeParentObservers ? new TransparentObserverMutableSnapshot(getCurrentSnapshot().takeNestedMutableSnapshot(null, mergedWriteObserver), mergedReadObserver, mergedWriteObserver, false, true) : getCurrentSnapshot().takeNestedMutableSnapshot(mergedReadObserver, mergedWriteObserver);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot takeNestedSnapshot(Function1 function1) {
        Function1 mergedReadObserver = SnapshotKt.mergedReadObserver(function1, this.readObserver, true);
        return !this.mergeParentObservers ? SnapshotKt.createTransparentSnapshotWithNoParentReadObserver(getCurrentSnapshot().takeNestedSnapshot(null), mergedReadObserver, true) : getCurrentSnapshot().takeNestedSnapshot(mergedReadObserver);
    }
}
