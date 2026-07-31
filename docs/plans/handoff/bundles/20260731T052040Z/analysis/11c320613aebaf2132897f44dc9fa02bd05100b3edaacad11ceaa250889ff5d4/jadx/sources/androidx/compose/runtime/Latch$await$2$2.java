package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.work.ListenableWorker;
import androidx.work.impl.WorkerStoppedException;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.ConnectionSpec;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.reactivestreams.Subscription;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Latch$await$2$2 implements Function1 {
    public final /* synthetic */ Object $co;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ Latch$await$2$2(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$co = obj2;
    }

    private final Object invoke$androidx$compose$runtime$snapshots$GlobalSnapshot$takeNestedMutableSnapshot$1$1(Object obj) {
        long j;
        SnapshotIdSet snapshotIdSet = (SnapshotIdSet) obj;
        synchronized (SnapshotKt.lock) {
            j = SnapshotKt.nextSnapshotId;
            SnapshotKt.nextSnapshotId = 1 + j;
        }
        return new MutableSnapshot(j, snapshotIdSet, (Function1) this.this$0, (Function1) this.$co);
    }

    private final Object invoke$kotlinx$coroutines$reactive$AwaitKt$awaitOne$2$1$onSubscribe$2(Object obj) {
        ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.this$0;
        Subscription subscription = (Subscription) this.$co;
        synchronized (builder) {
            subscription.cancel();
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                Latch latch = (Latch) this.this$0;
                Object obj2 = latch.lock;
                CancellableContinuationImpl cancellableContinuationImpl = (CancellableContinuationImpl) this.$co;
                synchronized (obj2) {
                    ((ArrayList) latch.awaiters).remove(cancellableContinuationImpl);
                }
                return Unit.INSTANCE;
            case 1:
                return invoke$androidx$compose$runtime$snapshots$GlobalSnapshot$takeNestedMutableSnapshot$1$1(obj);
            case 2:
                Throwable th = (Throwable) obj;
                if (th instanceof WorkerStoppedException) {
                    ListenableWorker listenableWorker = (ListenableWorker) this.this$0;
                    listenableWorker.mStopReason.compareAndSet(-256, ((WorkerStoppedException) th).getReason());
                }
                ((ListenableFuture) this.$co).cancel(false);
                return Unit.INSTANCE;
            case 3:
                return invoke$kotlinx$coroutines$reactive$AwaitKt$awaitOne$2$1$onSubscribe$2(obj);
            case 4:
                return ((ZipFilesKt$$ExternalSyntheticLambda3) this.this$0).invoke(((List) this.$co).get(((Number) obj).intValue()));
            default:
                return ((ZipFilesKt$$ExternalSyntheticLambda3) this.this$0).invoke(((List) this.$co).get(((Number) obj).intValue()));
        }
    }
}
