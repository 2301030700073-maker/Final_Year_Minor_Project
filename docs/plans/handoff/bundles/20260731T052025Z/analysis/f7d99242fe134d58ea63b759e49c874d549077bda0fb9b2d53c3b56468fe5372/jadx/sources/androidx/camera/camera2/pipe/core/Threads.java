package androidx.camera.camera2.pipe.core;

import android.os.Handler;
import android.util.Log;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda1;
import androidx.compose.foundation.gestures.DraggableNode$onDragStarted$1;
import java.util.concurrent.Executor;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.Handshake$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Threads {
    public final SynchronizedLazyImpl _camera2Executor;
    public final SynchronizedLazyImpl _camera2Handler;
    public final CoroutineDispatcher backgroundDispatcher;
    public final CoroutineDispatcher blockingDispatcher;
    public final CoroutineScope cameraPipeDispatchScope;
    public final CoroutineScope cameraPipeScope;
    public final CoroutineDispatcher lightweightDispatcher;
    public final Executor lightweightExecutor;

    public Threads(CoroutineScope coroutineScope, CoroutineScope coroutineScope2, Executor executor, CoroutineDispatcher coroutineDispatcher, Executor executor2, CoroutineDispatcher coroutineDispatcher2, Executor executor3, CoroutineDispatcher coroutineDispatcher3, Function0 function0, ThreadConfigModule$$ExternalSyntheticLambda1 threadConfigModule$$ExternalSyntheticLambda1) {
        coroutineScope.getClass();
        coroutineScope2.getClass();
        this.cameraPipeScope = coroutineScope;
        this.cameraPipeDispatchScope = coroutineScope2;
        this.blockingDispatcher = coroutineDispatcher;
        this.backgroundDispatcher = coroutineDispatcher2;
        this.lightweightExecutor = executor3;
        this.lightweightDispatcher = coroutineDispatcher3;
        this._camera2Handler = new SynchronizedLazyImpl(new Handshake$$ExternalSyntheticLambda0(1, function0));
        this._camera2Executor = new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(10, threadConfigModule$$ExternalSyntheticLambda1));
    }

    public final Handler getCamera2Handler() {
        return (Handler) this._camera2Handler.getValue();
    }

    public final Object runBlockingCheckedOrNull(long j, Function1 function1) {
        try {
            return JobKt.runBlockingK(this.blockingDispatcher, new DraggableNode$onDragStarted$1(2, j, this, function1, null));
        } catch (InterruptedException e) {
            Log.i("CXCP", "runBlockingCheckedOrNull cancelled by thread interruption", e);
            return null;
        }
    }
}
