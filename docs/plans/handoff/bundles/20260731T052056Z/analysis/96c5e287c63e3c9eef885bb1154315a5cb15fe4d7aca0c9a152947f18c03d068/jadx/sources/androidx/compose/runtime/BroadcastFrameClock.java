package androidx.compose.runtime;

import android.view.Choreographer;
import androidx.compose.runtime.internal.AwaiterQueue$Awaiter;
import androidx.compose.ui.platform.AndroidUiDispatcher;
import androidx.datastore.core.SimpleActor$1;
import androidx.work.OperationKt;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BroadcastFrameClock implements MonotonicFrameClock {
    public final /* synthetic */ int $r8$classId;
    public final Object onNewAwaiters;
    public final Object queue;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FrameAwaiter extends AwaiterQueue$Awaiter {
        public CancellableContinuationImpl continuation;
        public Function1 onFrame;

        @Override // androidx.compose.runtime.internal.AwaiterQueue$Awaiter
        public final void cancel() {
            this.onFrame = null;
            this.continuation = null;
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue$Awaiter
        public final void resumeWithException(Throwable th) {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.resumeWith(ResultKt.createFailure(th));
            }
        }
    }

    public BroadcastFrameClock(Function0 function0) {
        this.$r8$classId = 0;
        this.onNewAwaiters = function0;
        this.queue = new Request.Builder(2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r9 == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0086 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object withFrameNanos$androidx$compose$runtime$PausableMonotonicFrameClock(kotlin.jvm.functions.Function1 r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof androidx.compose.runtime.PausableMonotonicFrameClock$withFrameNanos$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.runtime.PausableMonotonicFrameClock$withFrameNanos$1 r0 = (androidx.compose.runtime.PausableMonotonicFrameClock$withFrameNanos$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.runtime.PausableMonotonicFrameClock$withFrameNanos$1 r0 = new androidx.compose.runtime.PausableMonotonicFrameClock$withFrameNanos$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L37
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r3
        L31:
            kotlin.jvm.functions.Function1 r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L77
        L37:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r7.queue
            androidx.compose.runtime.Latch r9 = (androidx.compose.runtime.Latch) r9
            r0.L$0 = r8
            r0.label = r5
            boolean r2 = r9.isOpen()
            if (r2 == 0) goto L4b
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            goto L74
        L4b:
            kotlinx.coroutines.CancellableContinuationImpl r2 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r6 = kotlin.ExceptionsKt.intercepted(r0)
            r2.<init>(r5, r6)
            r2.initCancellability()
            java.lang.Object r5 = r9.lock
            monitor-enter(r5)
            java.lang.Object r6 = r9.awaiters     // Catch: java.lang.Throwable -> L87
            java.util.ArrayList r6 = (java.util.ArrayList) r6     // Catch: java.lang.Throwable -> L87
            r6.add(r2)     // Catch: java.lang.Throwable -> L87
            monitor-exit(r5)
            androidx.compose.runtime.Latch$await$2$2 r5 = new androidx.compose.runtime.Latch$await$2$2
            r6 = 0
            r5.<init>(r6, r9, r2)
            r2.invokeOnCancellation(r5)
            java.lang.Object r9 = r2.getResult()
            if (r9 != r1) goto L72
            goto L74
        L72:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
        L74:
            if (r9 != r1) goto L77
            goto L85
        L77:
            java.lang.Object r7 = r7.onNewAwaiters
            androidx.compose.runtime.MonotonicFrameClock r7 = (androidx.compose.runtime.MonotonicFrameClock) r7
            r0.L$0 = r3
            r0.label = r4
            java.lang.Object r7 = r7.withFrameNanos(r8, r0)
            if (r7 != r1) goto L86
        L85:
            return r1
        L86:
            return r7
        L87:
            r7 = move-exception
            monitor-exit(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.BroadcastFrameClock.withFrameNanos$androidx$compose$runtime$PausableMonotonicFrameClock(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        switch (this.$r8$classId) {
        }
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        switch (this.$r8$classId) {
        }
        return OperationKt.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        switch (this.$r8$classId) {
        }
        return NeverEqualPolicy.$$INSTANCE;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        switch (this.$r8$classId) {
        }
        return OperationKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        switch (this.$r8$classId) {
        }
        return OperationKt.plus(this, coroutineContext);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    public final Object withFrameNanos(final Function1 function1, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(continuation));
                cancellableContinuationImpl.initCancellability();
                Request.Builder builder = (Request.Builder) this.queue;
                FrameAwaiter frameAwaiter = new FrameAwaiter();
                frameAwaiter.continuation = cancellableContinuationImpl;
                frameAwaiter.onFrame = function1;
                cancellableContinuationImpl.invokeOnCancellation(new CallsKt$await$2$1(3, builder.addAwaiter(frameAwaiter, (Function0) this.onNewAwaiters)));
                return cancellableContinuationImpl.getResult();
            case 1:
                return withFrameNanos$androidx$compose$runtime$PausableMonotonicFrameClock(function1, continuation);
            default:
                AndroidUiDispatcher androidUiDispatcher = (AndroidUiDispatcher) this.queue;
                final CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(continuation));
                cancellableContinuationImpl2.initCancellability();
                Choreographer.FrameCallback frameCallback = new Choreographer.FrameCallback(this, function1) { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$callback$1
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
                if (Intrinsics.areEqual(androidUiDispatcher.choreographer, (Choreographer) this.onNewAwaiters)) {
                    synchronized (androidUiDispatcher.lock) {
                        androidUiDispatcher.toRunOnFrame.add(frameCallback);
                        if (!androidUiDispatcher.scheduledFrameDispatch) {
                            androidUiDispatcher.scheduledFrameDispatch = true;
                            androidUiDispatcher.choreographer.postFrameCallback(androidUiDispatcher.dispatchCallback);
                        }
                    }
                    cancellableContinuationImpl2.invokeOnCancellation(new SimpleActor$1(7, androidUiDispatcher, frameCallback));
                } else {
                    ((Choreographer) this.onNewAwaiters).postFrameCallback(frameCallback);
                    cancellableContinuationImpl2.invokeOnCancellation(new SimpleActor$1(8, this, frameCallback));
                }
                return cancellableContinuationImpl2.getResult();
        }
    }

    public BroadcastFrameClock(MonotonicFrameClock monotonicFrameClock) {
        this.$r8$classId = 1;
        this.onNewAwaiters = monotonicFrameClock;
        this.queue = new Latch();
    }

    public BroadcastFrameClock(Choreographer choreographer, AndroidUiDispatcher androidUiDispatcher) {
        this.$r8$classId = 2;
        this.onNewAwaiters = choreographer;
        this.queue = androidUiDispatcher;
    }
}
