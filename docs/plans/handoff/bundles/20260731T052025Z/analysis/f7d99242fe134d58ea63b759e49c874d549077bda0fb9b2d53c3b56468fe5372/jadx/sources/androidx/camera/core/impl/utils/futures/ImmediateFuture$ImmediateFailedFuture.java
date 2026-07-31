package androidx.camera.core.impl.utils.futures;

import androidx.datastore.preferences.protobuf.Utf8;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ImmediateFuture$ImmediateFailedFuture implements ListenableFuture {
    public static final ImmediateFuture$ImmediateFailedFuture NULL_FUTURE = new ImmediateFuture$ImmediateFailedFuture(1, null);
    public final /* synthetic */ int $r8$classId;
    public final Object mCause;

    public /* synthetic */ ImmediateFuture$ImmediateFailedFuture(int i, Object obj) {
        this.$r8$classId = i;
        this.mCause = obj;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        executor.getClass();
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Utf8.SafeProcessor.e("ImmediateFuture", "Experienced RuntimeException while attempting to notify " + runnable + " on Executor " + executor, e);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        switch (this.$r8$classId) {
            case 0:
                throw new ExecutionException((Throwable) this.mCause);
            default:
                return this.mCause;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        int i = this.$r8$classId;
        Object obj = this.mCause;
        switch (i) {
            case 0:
                return super.toString() + "[status=FAILURE, cause=[" + ((Throwable) obj) + "]]";
            default:
                return super.toString() + "[status=SUCCESS, result=[" + obj + "]]";
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return get();
    }
}
