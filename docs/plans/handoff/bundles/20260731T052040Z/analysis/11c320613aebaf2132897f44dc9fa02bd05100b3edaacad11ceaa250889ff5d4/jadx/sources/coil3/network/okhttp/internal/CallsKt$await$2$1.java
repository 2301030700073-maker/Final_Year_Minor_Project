package coil3.network.okhttp.internal;

import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.snapshots.ReadonlySnapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.internal.connection.RealCall;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CallsKt$await$2$1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_await;

    public /* synthetic */ CallsKt$await$2$1(Object obj, int i) {
        this.$r8$classId = i;
        this.$this_await = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long j;
        switch (this.$r8$classId) {
            case 0:
                ((RealCall) this.$this_await).cancel();
                return Unit.INSTANCE;
            case 1:
                ((CancellationHandle) this.$this_await).cancel();
                return Unit.INSTANCE;
            case 2:
                SnapshotIdSet snapshotIdSet = (SnapshotIdSet) obj;
                synchronized (SnapshotKt.lock) {
                    j = SnapshotKt.nextSnapshotId;
                    SnapshotKt.nextSnapshotId = 1 + j;
                }
                return new ReadonlySnapshot(j, snapshotIdSet, (Function1) this.$this_await);
            case 3:
                CancellableContinuationImpl cancellableContinuationImpl = (CancellableContinuationImpl) this.$this_await;
                Unit unit = Unit.INSTANCE;
                cancellableContinuationImpl.resumeWith(unit);
                return unit;
            case 4:
                ((ArrayList) this.$this_await).get(((Number) obj).intValue());
                return null;
            default:
                Throwable th = (Throwable) obj;
                th.getClass();
                ((Ref$ObjectRef) this.$this_await).element = th;
                throw th;
        }
    }
}
