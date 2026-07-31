package androidx.compose.ui.platform;

import android.view.Choreographer;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.NeverEqualPolicy;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidUiFrameClock implements MonotonicFrameClock {
    public final Choreographer choreographer;
    public final AndroidUiDispatcher dispatcher;

    public AndroidUiFrameClock(Choreographer choreographer, AndroidUiDispatcher androidUiDispatcher) {
        this.choreographer = choreographer;
        this.dispatcher = androidUiDispatcher;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return AppKt.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return NeverEqualPolicy.$$INSTANCE;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return AppKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return AppKt.plus(this, coroutineContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [android.view.Choreographer$FrameCallback, androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$callback$1, java.lang.Object] */
    @Override // androidx.compose.runtime.MonotonicFrameClock
    public final Object withFrameNanos(final Function1 function1, ContinuationImpl continuationImpl) {
        final AndroidUiDispatcher androidUiDispatcher = this.dispatcher;
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(continuationImpl));
        cancellableContinuationImpl.initCancellability();
        final ?? r6 = new Choreographer.FrameCallback(this, function1) { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$callback$1
            public final /* synthetic */ Function1 $onFrame;

            {
                this.$onFrame = function1;
            }

            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                Object failure;
                try {
                    failure = this.$onFrame.invoke(Long.valueOf(j));
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                CancellableContinuationImpl.this.resumeWith(failure);
            }
        };
        if (Intrinsics.areEqual(androidUiDispatcher.choreographer, this.choreographer)) {
            synchronized (androidUiDispatcher.lock) {
                androidUiDispatcher.toRunOnFrame.add(r6);
                if (!androidUiDispatcher.scheduledFrameDispatch) {
                    androidUiDispatcher.scheduledFrameDispatch = true;
                    androidUiDispatcher.choreographer.postFrameCallback(androidUiDispatcher.dispatchCallback);
                }
            }
            cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    AndroidUiDispatcher androidUiDispatcher2 = AndroidUiDispatcher.this;
                    Choreographer.FrameCallback frameCallback = r6;
                    synchronized (androidUiDispatcher2.lock) {
                        androidUiDispatcher2.toRunOnFrame.remove(frameCallback);
                    }
                    return Unit.INSTANCE;
                }
            });
        } else {
            this.choreographer.postFrameCallback(r6);
            cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    AndroidUiFrameClock.this.choreographer.removeFrameCallback(r6);
                    return Unit.INSTANCE;
                }
            });
        }
        return cancellableContinuationImpl.getResult();
    }
}
