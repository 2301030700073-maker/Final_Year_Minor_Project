package kotlinx.coroutines;

import java.util.concurrent.ScheduledFuture;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DisposeOnCancel implements CancelHandler {
    public final /* synthetic */ int $r8$classId;
    public final Object handle;

    public /* synthetic */ DisposeOnCancel(int i, Object obj) {
        this.$r8$classId = i;
        this.handle = obj;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public final void invoke(Throwable th) {
        int i = this.$r8$classId;
        Object obj = this.handle;
        switch (i) {
            case 0:
                ((DisposableHandle) obj).dispose();
                break;
            case 1:
                ((ScheduledFuture) obj).cancel(false);
                break;
            default:
                ((Function1) obj).invoke(th);
                break;
        }
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
                return "CancelHandler.UserSupplied[" + ((Function1) obj).getClass().getSimpleName() + '@' + AwaitKt.getHexAddress(this) + ']';
        }
    }
}
