package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.ReadonlySnapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MonotonicFrameClockKt$withFrameMillis$2 implements Function1 {
    public final /* synthetic */ Function1 $onFrame;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ MonotonicFrameClockKt$withFrameMillis$2(Function1 function1, int i) {
        this.$r8$classId = i;
        this.$onFrame = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long j;
        switch (this.$r8$classId) {
            case 0:
                return this.$onFrame.invoke(Long.valueOf(((Number) obj).longValue() / 1000000));
            default:
                SnapshotIdSet snapshotIdSet = (SnapshotIdSet) obj;
                synchronized (SnapshotKt.lock) {
                    j = SnapshotKt.nextSnapshotId;
                    SnapshotKt.nextSnapshotId = 1 + j;
                }
                return new ReadonlySnapshot(j, snapshotIdSet, this.$onFrame);
        }
    }
}
