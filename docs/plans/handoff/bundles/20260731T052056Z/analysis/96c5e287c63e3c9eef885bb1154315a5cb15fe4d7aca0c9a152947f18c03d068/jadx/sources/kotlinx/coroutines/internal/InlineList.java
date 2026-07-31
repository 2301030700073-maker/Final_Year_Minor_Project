package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.compose.animation.core.Animation;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CoroutineContextKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class InlineList {
    public static final Symbol CLOSED = new Symbol(0, "CLOSED");
    public static final Symbol UNDEFINED = new Symbol(0, "UNDEFINED");
    public static final Symbol REUSABLE_CLAIMED = new Symbol(0, "REUSABLE_CLAIMED");
    public static final Symbol NO_THREAD_ELEMENTS = new Symbol(0, "NO_THREAD_ELEMENTS");
    public static final CoroutineContextKt$$ExternalSyntheticLambda0 countAll = new CoroutineContextKt$$ExternalSyntheticLambda0(5);
    public static final CoroutineContextKt$$ExternalSyntheticLambda0 findOne = new CoroutineContextKt$$ExternalSyntheticLambda0(6);
    public static final CoroutineContextKt$$ExternalSyntheticLambda0 updateState = new CoroutineContextKt$$ExternalSyntheticLambda0(7);

    public static final void checkParallelism(int i) {
        if (i >= 1) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Expected positive parallelism level, but got "));
    }

    public static final Object findSegmentInternal(Segment segment, long j, Function2 function2) {
        while (true) {
            Segment segment2 = segment;
            while (true) {
                if (segment2.id >= j && !segment2.isRemoved()) {
                    return segment2;
                }
                Object objectVolatile = ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(segment2, ConcurrentLinkedListNode._next$volatile$FU$offset);
                Symbol symbol = CLOSED;
                if (objectVolatile == symbol) {
                    return symbol;
                }
                segment = (Segment) ((ConcurrentLinkedListNode) objectVolatile);
                if (segment != null) {
                    break;
                }
                Segment segment3 = (Segment) function2.invoke(Long.valueOf(segment2.id + 1), segment2);
                while (true) {
                    Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
                    long j2 = ConcurrentLinkedListNode._next$volatile$FU$offset;
                    if (unsafe.compareAndSwapObject(segment2, j2, (Object) null, segment3)) {
                        if (segment2.isRemoved()) {
                            segment2.remove();
                        }
                        segment2 = segment3;
                    } else if (unsafe.getObjectVolatile(segment2, j2) != null) {
                        break;
                    }
                }
            }
        }
    }

    /* renamed from: getSegment-impl, reason: not valid java name */
    public static final Segment m867getSegmentimpl(Object obj) {
        if (obj != CLOSED) {
            return (Segment) obj;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Does not contain segment");
        return null;
    }

    public static final void handleUncaughtCoroutineException(Throwable th, CoroutineContext coroutineContext) {
        Throwable runtimeException;
        Iterator it = CoroutineExceptionHandlerImplKt.platformExceptionHandlers.iterator();
        while (it.hasNext()) {
            try {
                ((CoroutineExceptionHandler) it.next()).handleException(th, coroutineContext);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    ExceptionsKt.addSuppressed(runtimeException, th);
                }
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, runtimeException);
            }
        }
        try {
            ExceptionsKt.addSuppressed(th, new DiagnosticCoroutineContextException(coroutineContext));
        } catch (Throwable unused) {
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }

    /* renamed from: isClosed-impl, reason: not valid java name */
    public static final boolean m868isClosedimpl(Object obj) {
        return obj == CLOSED;
    }

    /* renamed from: plus-FjFbRPM, reason: not valid java name */
    public static final Object m869plusFjFbRPM(Object obj, Object obj2) {
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }

    public static final void restoreThreadContext(CoroutineContext coroutineContext, Object obj) {
        if (obj == NO_THREAD_ELEMENTS) {
            return;
        }
        if (!(obj instanceof ThreadState)) {
            Object fold = coroutineContext.fold(null, findOne);
            fold.getClass();
            ((ThreadLocalElement) fold).restoreThreadContext(obj);
            return;
        }
        ThreadState threadState = (ThreadState) obj;
        ThreadLocalElement[] threadLocalElementArr = threadState.elements;
        int length = threadLocalElementArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i = length - 1;
            ThreadLocalElement threadLocalElement = threadLocalElementArr[length];
            threadLocalElement.getClass();
            threadLocalElement.restoreThreadContext(threadState.values[length]);
            if (i < 0) {
                return;
            } else {
                length = i;
            }
        }
    }

    public static final void resumeCancellableWith(Object obj, Continuation continuation) {
        if (!(continuation instanceof DispatchedContinuation)) {
            continuation.resumeWith(obj);
            return;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        CoroutineDispatcher coroutineDispatcher = dispatchedContinuation.dispatcher;
        ContinuationImpl continuationImpl = dispatchedContinuation.continuation;
        Throwable m815exceptionOrNullimpl = Result.m815exceptionOrNullimpl(obj);
        Object completedExceptionally = m815exceptionOrNullimpl == null ? obj : new CompletedExceptionally(m815exceptionOrNullimpl, false);
        if (safeIsDispatchNeeded(coroutineDispatcher, continuationImpl.getContext())) {
            dispatchedContinuation._state = completedExceptionally;
            dispatchedContinuation.resumeMode = 1;
            safeDispatch(coroutineDispatcher, continuationImpl.getContext(), dispatchedContinuation);
            return;
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.useCount >= 4294967296L) {
            dispatchedContinuation._state = completedExceptionally;
            dispatchedContinuation.resumeMode = 1;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(dispatchedContinuation);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            Job job = (Job) continuationImpl.getContext().get(Job.Key.$$INSTANCE);
            if (job == null || job.isActive()) {
                Object obj2 = dispatchedContinuation.countOrElement;
                CoroutineContext context = continuationImpl.getContext();
                Object updateThreadContext = updateThreadContext(context, obj2);
                UndispatchedCoroutine updateUndispatchedCompletion = updateThreadContext != NO_THREAD_ELEMENTS ? AwaitKt.updateUndispatchedCompletion(continuationImpl, context, updateThreadContext) : null;
                try {
                    continuationImpl.resumeWith(obj);
                } finally {
                    if (updateUndispatchedCompletion == null || updateUndispatchedCompletion.clearThreadContext()) {
                        restoreThreadContext(context, updateThreadContext);
                    }
                }
            } else {
                dispatchedContinuation.resumeWith(ResultKt.createFailure(job.getCancellationException()));
            }
            while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent()) {
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public static final void safeDispatch(CoroutineDispatcher coroutineDispatcher, CoroutineContext coroutineContext, Runnable runnable) {
        try {
            coroutineDispatcher.dispatch(coroutineContext, runnable);
        } catch (Throwable th) {
            throw new DispatchException(th, coroutineDispatcher, coroutineContext);
        }
    }

    public static final boolean safeIsDispatchNeeded(CoroutineDispatcher coroutineDispatcher, CoroutineContext coroutineContext) {
        try {
            return coroutineDispatcher.isDispatchNeeded(coroutineContext);
        } catch (Throwable th) {
            throw new DispatchException(th, coroutineDispatcher, coroutineContext);
        }
    }

    public static final long systemProp(String str, long j, long j2, long j3) {
        String str2;
        int i = SystemPropsKt__SystemPropsKt.AVAILABLE_PROCESSORS;
        try {
            str2 = System.getProperty(str);
        } catch (SecurityException unused) {
            str2 = null;
        }
        if (str2 == null) {
            return j;
        }
        Long longOrNull = StringsKt__StringsJVMKt.toLongOrNull(str2);
        if (longOrNull == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + str2 + '\'').toString());
        }
        long longValue = longOrNull.longValue();
        if (j2 <= longValue && longValue <= j3) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + longValue + '\'').toString());
    }

    public static int systemProp$default(int i, int i2, String str) {
        return (int) systemProp(str, i, 1L, (i2 & 8) != 0 ? Integer.MAX_VALUE : 2097150);
    }

    public static final Object threadContextElements(CoroutineContext coroutineContext) {
        Object fold = coroutineContext.fold(0, countAll);
        fold.getClass();
        return fold;
    }

    public static final Object updateThreadContext(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = threadContextElements(coroutineContext);
        }
        return obj == 0 ? NO_THREAD_ELEMENTS : obj instanceof Integer ? coroutineContext.fold(new ThreadState(((Number) obj).intValue(), coroutineContext), updateState) : ((ThreadLocalElement) obj).updateThreadContext();
    }
}
