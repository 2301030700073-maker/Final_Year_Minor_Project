package androidx.compose.ui.platform;

import android.os.Handler;
import android.view.Choreographer;
import androidx.compose.runtime.BroadcastFrameClock;
import java.util.ArrayList;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlin.random.FallbackThreadLocalRandom$implStorage$1;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidUiDispatcher extends CoroutineDispatcher {
    public static final SynchronizedLazyImpl Main$delegate = new SynchronizedLazyImpl(CompositionLocalsKt$LocalDensity$1.INSTANCE$6);
    public static final FallbackThreadLocalRandom$implStorage$1 currentThread = new FallbackThreadLocalRandom$implStorage$1(2);
    public final Choreographer choreographer;
    public final BroadcastFrameClock frameClock;
    public final Handler handler;
    public boolean scheduledFrameDispatch;
    public boolean scheduledTrampolineDispatch;
    public final Object lock = new Object();
    public final ArrayDeque toRunTrampolined = new ArrayDeque();
    public ArrayList toRunOnFrame = new ArrayList();
    public ArrayList spareToRunOnFrame = new ArrayList();
    public final AndroidUiDispatcher$dispatchCallback$1 dispatchCallback = new AndroidUiDispatcher$dispatchCallback$1(this);

    public AndroidUiDispatcher(Choreographer choreographer, Handler handler) {
        this.choreographer = choreographer;
        this.handler = handler;
        this.frameClock = new BroadcastFrameClock(choreographer, this);
    }

    public static final void access$performTrampolineDispatch(AndroidUiDispatcher androidUiDispatcher) {
        boolean z;
        do {
            Runnable nextTask = androidUiDispatcher.nextTask();
            while (nextTask != null) {
                nextTask.run();
                nextTask = androidUiDispatcher.nextTask();
            }
            synchronized (androidUiDispatcher.lock) {
                if (androidUiDispatcher.toRunTrampolined.isEmpty()) {
                    z = false;
                    androidUiDispatcher.scheduledTrampolineDispatch = false;
                } else {
                    z = true;
                }
            }
        } while (z);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        synchronized (this.lock) {
            this.toRunTrampolined.addLast(runnable);
            if (!this.scheduledTrampolineDispatch) {
                this.scheduledTrampolineDispatch = true;
                this.handler.post(this.dispatchCallback);
                if (!this.scheduledFrameDispatch) {
                    this.scheduledFrameDispatch = true;
                    this.choreographer.postFrameCallback(this.dispatchCallback);
                }
            }
        }
    }

    public final Runnable nextTask() {
        Runnable runnable;
        synchronized (this.lock) {
            ArrayDeque arrayDeque = this.toRunTrampolined;
            runnable = (Runnable) (arrayDeque.isEmpty() ? null : arrayDeque.removeFirst());
        }
        return runnable;
    }
}
