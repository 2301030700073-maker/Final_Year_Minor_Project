package kotlinx.coroutines.flow.internal;

import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CombineKt {
    public static final Symbol DONE;
    public static final Continuation[] EMPTY_RESUMES = new Continuation[0];
    public static final Symbol NULL;
    public static final Symbol UNINITIALIZED;

    static {
        int i = 0;
        NULL = new Symbol(i, "NULL");
        UNINITIALIZED = new Symbol(i, "UNINITIALIZED");
        DONE = new Symbol(i, "DONE");
    }

    public static final Object combineInternal(Continuation continuation, Function0 function0, Function3 function3, FlowCollector flowCollector, Flow[] flowArr) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(null, function0, function3, flowCollector, flowArr);
        FlowCoroutine flowCoroutine = new FlowCoroutine(continuation, continuation.getContext());
        Object startUndspatched = ExceptionsKt.startUndspatched(flowCoroutine, true, flowCoroutine, combineKt$combineInternal$2);
        return startUndspatched == CoroutineSingletons.COROUTINE_SUSPENDED ? startUndspatched : Unit.INSTANCE;
    }

    public static /* synthetic */ Flow fuse$default(FusibleFlow fusibleFlow, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, int i2) {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            i = -3;
        }
        if ((i2 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return fusibleFlow.fuse(coroutineContext, i, bufferOverflow);
    }

    public static final Object withContextUndispatched(CoroutineContext coroutineContext, Object obj, Object obj2, Function2 function2, Continuation continuation) {
        Object updateThreadContext = InlineList.updateThreadContext(coroutineContext, obj2);
        try {
            StackFrameContinuation stackFrameContinuation = new StackFrameContinuation(continuation, coroutineContext);
            TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
            Object invoke = function2.invoke(obj, stackFrameContinuation);
            InlineList.restoreThreadContext(coroutineContext, updateThreadContext);
            if (invoke == CoroutineSingletons.COROUTINE_SUSPENDED) {
                continuation.getClass();
            }
            return invoke;
        } catch (Throwable th) {
            InlineList.restoreThreadContext(coroutineContext, updateThreadContext);
            throw th;
        }
    }
}
