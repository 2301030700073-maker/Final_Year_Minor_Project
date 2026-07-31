package kotlinx.coroutines.internal;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda3;
import com.google.android.exoplayer2.util.Log;
import com.google.common.base.Joiner;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;
import net.newpipe.app.navigation.NavModuleKt$$ExternalSyntheticLambda1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class InlineList {
    public static final Joiner CLOSED = new Joiner("CLOSED", 2);
    public static final Joiner UNDEFINED = new Joiner("UNDEFINED", 2);
    public static final Joiner REUSABLE_CLAIMED = new Joiner("REUSABLE_CLAIMED", 2);
    public static final Joiner NO_THREAD_ELEMENTS = new Joiner("NO_THREAD_ELEMENTS", 2);
    public static final SaversKt$$ExternalSyntheticLambda3 countAll = new SaversKt$$ExternalSyntheticLambda3(28);
    public static final SaversKt$$ExternalSyntheticLambda3 findOne = new SaversKt$$ExternalSyntheticLambda3(29);
    public static final NavModuleKt$$ExternalSyntheticLambda1 updateState = new NavModuleKt$$ExternalSyntheticLambda1(1, 0);

    public static final void checkParallelism(int i) {
        if (i >= 1) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(i, "Expected positive parallelism level, but got "));
    }

    public static final Object findSegmentInternal(Segment segment, long j, Function2 function2) {
        while (true) {
            if (segment.id >= j && !segment.isRemoved()) {
                return segment;
            }
            Object nextOrClosed = segment.getNextOrClosed();
            Joiner joiner = CLOSED;
            if (nextOrClosed == joiner) {
                return joiner;
            }
            Segment segment2 = (Segment) ((ConcurrentLinkedListNode) nextOrClosed);
            if (segment2 == null) {
                segment2 = (Segment) function2.invoke(Long.valueOf(segment.id + 1), segment);
                if (segment.trySetNext(segment2)) {
                    if (segment.isRemoved()) {
                        segment.remove();
                    }
                }
            }
            segment = segment2;
        }
    }

    /* renamed from: getSegment-impl, reason: not valid java name */
    public static final Segment m694getSegmentimpl(Object obj) {
        if (obj != CLOSED) {
            return (Segment) obj;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Does not contain segment");
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
                    ResultKt.addSuppressed(runtimeException, th);
                }
                Thread currentThread = Thread.currentThread();
                try {
                    currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, runtimeException);
                } catch (Throwable unused) {
                }
            }
        }
        try {
            ResultKt.addSuppressed(th, new DiagnosticCoroutineContextException(coroutineContext));
        } catch (Throwable unused2) {
        }
        Thread currentThread2 = Thread.currentThread();
        try {
            currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
        } catch (Throwable unused3) {
        }
    }

    /* renamed from: isClosed-impl, reason: not valid java name */
    public static final boolean m695isClosedimpl(Object obj) {
        return obj == CLOSED;
    }

    /* renamed from: plus-FjFbRPM, reason: not valid java name */
    public static final Object m696plusFjFbRPM(Object obj, Object obj2) {
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

    public static final void resumeCancellableWithInternal(Object obj, Continuation continuation) {
        if (!(continuation instanceof DispatchedContinuation)) {
            continuation.resumeWith(obj);
            return;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        CoroutineDispatcher coroutineDispatcher = dispatchedContinuation.dispatcher;
        ContinuationImpl continuationImpl = dispatchedContinuation.continuation;
        Throwable m656exceptionOrNullimpl = Result.m656exceptionOrNullimpl(obj);
        Object completedExceptionally = m656exceptionOrNullimpl == null ? obj : new CompletedExceptionally(m656exceptionOrNullimpl, false);
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
                UndispatchedCoroutine updateUndispatchedCompletion = updateThreadContext != NO_THREAD_ELEMENTS ? JobKt.updateUndispatchedCompletion(continuationImpl, context, updateThreadContext) : null;
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
        return (int) systemProp(str, i, 1L, (i2 & 8) != 0 ? Log.LOG_LEVEL_OFF : 2097150);
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
