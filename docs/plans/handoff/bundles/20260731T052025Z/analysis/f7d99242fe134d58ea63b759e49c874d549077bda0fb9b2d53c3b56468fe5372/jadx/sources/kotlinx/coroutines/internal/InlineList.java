package kotlinx.coroutines.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
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
import kotlinx.serialization.SerializersCacheKt$$ExternalSyntheticLambda2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class InlineList {
    public static final LocalStore.AnonymousClass8 CLOSED;
    public static final LocalStore.AnonymousClass8 NO_THREAD_ELEMENTS;
    public static final LocalStore.AnonymousClass8 REUSABLE_CLAIMED;
    public static final LocalStore.AnonymousClass8 UNDEFINED;
    public static final SerializersCacheKt$$ExternalSyntheticLambda2 countAll = new SerializersCacheKt$$ExternalSyntheticLambda2(1);
    public static final SerializersCacheKt$$ExternalSyntheticLambda2 findOne = new SerializersCacheKt$$ExternalSyntheticLambda2(2);
    public static final SerializersCacheKt$$ExternalSyntheticLambda2 updateState = new SerializersCacheKt$$ExternalSyntheticLambda2(3);

    static {
        int i = 4;
        boolean z = false;
        CLOSED = new LocalStore.AnonymousClass8(i, "CLOSED", z);
        UNDEFINED = new LocalStore.AnonymousClass8(i, "UNDEFINED", z);
        REUSABLE_CLAIMED = new LocalStore.AnonymousClass8(i, "REUSABLE_CLAIMED", z);
        NO_THREAD_ELEMENTS = new LocalStore.AnonymousClass8(i, "NO_THREAD_ELEMENTS", z);
    }

    public static final void callUndeliveredElement(Function1 function1, Object obj, CoroutineContext coroutineContext) {
        SerializationException callUndeliveredElementCatchingException = callUndeliveredElementCatchingException(function1, obj, null);
        if (callUndeliveredElementCatchingException != null) {
            JobKt.handleCoroutineException(coroutineContext, callUndeliveredElementCatchingException);
        }
    }

    public static final SerializationException callUndeliveredElementCatchingException(Function1 function1, Object obj, SerializationException serializationException) {
        try {
            function1.invoke(obj);
            return serializationException;
        } catch (Throwable th) {
            if (serializationException != null && serializationException.getCause() != th) {
                ResultKt.addSuppressed(serializationException, th);
                return serializationException;
            }
            return new SerializationException("Exception in undelivered element handler for " + obj, th);
        }
    }

    public static final void checkParallelism(int i) {
        if (i >= 1) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Expected positive parallelism level, but got ", i));
    }

    public static final Object findSegmentInternal(Segment segment, long j, Function2 function2) {
        while (true) {
            if (segment.id >= j && !segment.isRemoved()) {
                return segment;
            }
            Object nextOrClosed = segment.getNextOrClosed();
            LocalStore.AnonymousClass8 anonymousClass8 = CLOSED;
            if (nextOrClosed == anonymousClass8) {
                return anonymousClass8;
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
    public static final Segment m1020getSegmentimpl(Object obj) {
        if (obj != CLOSED) {
            return (Segment) obj;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Does not contain segment");
        return null;
    }

    public static final void handleUncaughtCoroutineException(CoroutineContext coroutineContext, Throwable th) {
        Throwable runtimeException;
        Iterator it = CoroutineExceptionHandlerImplKt.platformExceptionHandlers.iterator();
        while (it.hasNext()) {
            try {
                ((CoroutineExceptionHandler) it.next()).handleException(coroutineContext, th);
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
    public static final boolean m1021isClosedimpl(Object obj) {
        return obj == CLOSED;
    }

    /* renamed from: plus-FjFbRPM, reason: not valid java name */
    public static final Object m1022plusFjFbRPM(Object obj, Object obj2) {
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
        Throwable m979exceptionOrNullimpl = Result.m979exceptionOrNullimpl(obj);
        Object completedExceptionally = m979exceptionOrNullimpl == null ? obj : new CompletedExceptionally(m979exceptionOrNullimpl, false);
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

    public static int systemProp$default(int i, String str, int i2) {
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
