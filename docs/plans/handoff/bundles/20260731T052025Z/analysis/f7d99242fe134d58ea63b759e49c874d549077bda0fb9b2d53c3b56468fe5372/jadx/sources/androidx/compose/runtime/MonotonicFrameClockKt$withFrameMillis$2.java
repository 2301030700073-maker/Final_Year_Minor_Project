package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.ReadonlySnapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import app.k9mail.feature.account.setup.domain.entity.AccountUuid;
import app.k9mail.feature.account.setup.navigation.AccountSetupRoute;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MonotonicFrameClockKt$withFrameMillis$2 implements Function1 {
    public final /* synthetic */ Function1 $onFrame;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ MonotonicFrameClockKt$withFrameMillis$2(int i, Function1 function1) {
        this.$r8$classId = i;
        this.$onFrame = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long j;
        switch (this.$r8$classId) {
            case 0:
                return this.$onFrame.invoke(Long.valueOf(((Number) obj).longValue() / 1000000));
            case 1:
                SnapshotIdSet snapshotIdSet = (SnapshotIdSet) obj;
                synchronized (SnapshotKt.lock) {
                    j = SnapshotKt.nextSnapshotId;
                    SnapshotKt.nextSnapshotId = 1 + j;
                }
                return new ReadonlySnapshot(j, snapshotIdSet, this.$onFrame);
            default:
                String str = ((AccountUuid) obj).value;
                str.getClass();
                this.$onFrame.invoke(new AccountSetupRoute.AccountSetup(str));
                return Unit.INSTANCE;
        }
    }
}
