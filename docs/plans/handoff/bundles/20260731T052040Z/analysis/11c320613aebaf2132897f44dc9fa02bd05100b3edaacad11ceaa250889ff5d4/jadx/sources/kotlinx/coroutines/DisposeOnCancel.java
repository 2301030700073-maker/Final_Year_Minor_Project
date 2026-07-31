package kotlinx.coroutines;

import java.util.concurrent.ScheduledFuture;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DisposeOnCancel implements NotCompleted {
    public final /* synthetic */ int $r8$classId;
    public final Object handle;

    public /* synthetic */ DisposeOnCancel(Object obj, int i) {
        this.$r8$classId = i;
        this.handle = obj;
    }

    public final String toString() {
        int i = this.$r8$classId;
        Object obj = this.handle;
        switch (i) {
            case 0:
                return "DisposeOnCancel[" + ((DisposableHandle) obj) + ']';
            case 1:
                return "CancelFutureOnCancel[" + ((ScheduledFuture) obj) + ']';
            default:
                return "CancelHandler.UserSupplied[" + ((Function1) obj).getClass().getSimpleName() + '@' + JobKt.getHexAddress(this) + ']';
        }
    }
}
