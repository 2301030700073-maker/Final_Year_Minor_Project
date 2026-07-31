package androidx.compose.ui.platform;

import android.os.Handler;
import android.view.Choreographer;
import java.util.ArrayList;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlin.random.FallbackThreadLocalRandom$implStorage$1;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidUiDispatcher extends CoroutineDispatcher {
    public static final SynchronizedLazyImpl Main$delegate = new SynchronizedLazyImpl(CompositionLocalsKt$LocalDensity$1.INSTANCE$6);
    public static final FallbackThreadLocalRandom$implStorage$1 currentThread = new FallbackThreadLocalRandom$implStorage$1(1);
    public final Choreographer choreographer;
    public final AndroidUiFrameClock frameClock;
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
        this.frameClock = new AndroidUiFrameClock(choreographer, this);
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
