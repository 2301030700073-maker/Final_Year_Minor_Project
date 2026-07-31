package kotlinx.coroutines.flow;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.paging.FlowExtKt$simpleScan$1;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineContextKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NopCollector;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StateFlowKt {
    public static final Symbol NONE;
    public static final Symbol NO_VALUE;
    public static final Symbol PENDING;
    public static final SaversKt$$ExternalSyntheticLambda2 defaultKeySelector = new SaversKt$$ExternalSyntheticLambda2(5);
    public static final CoroutineContextKt$$ExternalSyntheticLambda0 defaultAreEquivalent = new CoroutineContextKt$$ExternalSyntheticLambda0(3);

    static {
        int i = 0;
        NO_VALUE = new Symbol(i, "NO_VALUE");
        NONE = new Symbol(i, "NONE");
        PENDING = new Symbol(i, "PENDING");
    }

    public static final SharedFlowImpl MutableSharedFlow(int i, int i2, BufferOverflow bufferOverflow) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "replay cannot be negative, but was "));
            return null;
        }
        if (i2 < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i2, "extraBufferCapacity cannot be negative, but was "));
            return null;
        }
        if (i <= 0 && i2 <= 0 && bufferOverflow != BufferOverflow.SUSPEND) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy ", bufferOverflow);
            return null;
        }
        int i3 = i2 + i;
        if (i3 < 0) {
            i3 = Integer.MAX_VALUE;
        }
        return new SharedFlowImpl(i, i3, bufferOverflow);
    }

    public static /* synthetic */ SharedFlowImpl MutableSharedFlow$default(int i, int i2, BufferOverflow bufferOverflow) {
        int i3 = (i2 & 1) != 0 ? 0 : 1;
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return MutableSharedFlow(i3, i, bufferOverflow);
    }

    public static final StateFlowImpl MutableStateFlow(Object obj) {
        if (obj == null) {
            obj = CombineKt.NULL;
        }
        return new StateFlowImpl(obj);
    }

    public static Flow buffer$default(Flow flow, int i) {
        BufferOverflow bufferOverflow = BufferOverflow.SUSPEND;
        if (i < 0 && i != -2 && i != -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "));
            return null;
        }
        if (i == -1) {
            bufferOverflow = BufferOverflow.DROP_OLDEST;
            i = 0;
        }
        int i2 = i;
        BufferOverflow bufferOverflow2 = bufferOverflow;
        return flow instanceof FusibleFlow ? CombineKt.fuse$default((FusibleFlow) flow, null, i2, bufferOverflow2, 1) : new ChannelFlowOperatorImpl(flow, null, i2, bufferOverflow2, 2);
    }

    public static final CallbackFlowBuilder callbackFlow(Function2 function2) {
        return new CallbackFlowBuilder(function2, EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.io.Serializable catchImpl(kotlinx.coroutines.flow.Flow r6, kotlinx.coroutines.flow.FlowCollector r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            kotlin.jvm.internal.Ref$ObjectRef r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L2a
            goto L48
        L2a:
            r7 = move-exception
            goto L4b
        L2c:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L32:
            kotlin.jvm.internal.Ref$ObjectRef r8 = androidx.compose.animation.core.Animation.CC.m22m(r8)
            androidx.compose.material3.ThumbNode$onAttach$1$1 r2 = new androidx.compose.material3.ThumbNode$onAttach$1$1     // Catch: java.lang.Throwable -> L49
            r5 = 13
            r2.<init>(r5, r7, r8)     // Catch: java.lang.Throwable -> L49
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L49
            r0.label = r4     // Catch: java.lang.Throwable -> L49
            java.lang.Object r6 = r6.collect(r2, r0)     // Catch: java.lang.Throwable -> L49
            if (r6 != r1) goto L48
            return r1
        L48:
            return r3
        L49:
            r7 = move-exception
            r6 = r8
        L4b:
            java.lang.Object r6 = r6.element
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            if (r6 == 0) goto L57
            boolean r8 = r6.equals(r7)
            if (r8 != 0) goto L7a
        L57:
            kotlin.coroutines.CoroutineContext r8 = r0._context
            r8.getClass()
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE
            kotlin.coroutines.CoroutineContext$Element r8 = r8.get(r0)
            kotlinx.coroutines.Job r8 = (kotlinx.coroutines.Job) r8
            if (r8 == 0) goto L7b
            boolean r0 = r8.isCancelled()
            if (r0 != 0) goto L6d
            goto L7b
        L6d:
            java.util.concurrent.CancellationException r8 = r8.getCancellationException()
            if (r8 == 0) goto L7b
            boolean r8 = r8.equals(r7)
            if (r8 != 0) goto L7a
            goto L7b
        L7a:
            throw r7
        L7b:
            if (r6 != 0) goto L7e
            return r7
        L7e:
            boolean r8 = r7 instanceof java.util.concurrent.CancellationException
            if (r8 == 0) goto L86
            kotlin.ExceptionsKt.addSuppressed(r6, r7)
            throw r6
        L86:
            kotlin.ExceptionsKt.addSuppressed(r7, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowKt.catchImpl(kotlinx.coroutines.flow.Flow, kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    public static final Object collectLatest(Flow flow, Function2 function2, Continuation continuation) {
        int i = FlowKt__MergeKt.$r8$clinit;
        Object collect = buffer$default(FlowKt__MergeKt.transformLatest(flow, new FlowKt__ZipKt$combine$1$1(function2, (Continuation) null, 4)), 0).collect(NopCollector.INSTANCE, continuation);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        if (collect != coroutineSingletons) {
            collect = unit;
        }
        return collect == coroutineSingletons ? collect : unit;
    }

    public static final SharingConfig configureSharing$FlowKt__ShareKt(Flow flow) {
        Channel.Factory.getClass();
        int i = Channel.Factory.CHANNEL_DEFAULT_CAPACITY;
        if (1 >= i) {
            i = 1;
        }
        int i2 = i - 1;
        if (flow instanceof ChannelFlow) {
            ChannelFlow channelFlow = (ChannelFlow) flow;
            BufferOverflow bufferOverflow = channelFlow.onBufferOverflow;
            Flow dropChannelOperators = channelFlow.dropChannelOperators();
            if (dropChannelOperators != null) {
                int i3 = channelFlow.capacity;
                if (i3 != -3 && i3 != -2 && i3 != 0) {
                    i2 = i3;
                } else if (bufferOverflow != BufferOverflow.SUSPEND || i3 == 0) {
                    i2 = 0;
                }
                return new SharingConfig(i2, channelFlow.context, bufferOverflow, dropChannelOperators);
            }
        }
        return new SharingConfig(i2, EmptyCoroutineContext.INSTANCE, BufferOverflow.SUSPEND, flow);
    }

    public static final ChannelAsFlow consumeAsFlow(BufferedChannel bufferedChannel) {
        return new ChannelAsFlow(bufferedChannel, true);
    }

    public static final Flow distinctUntilChanged(Flow flow) {
        return flow instanceof StateFlow ? flow : distinctUntilChangedBy$FlowKt__DistinctKt(flow, defaultKeySelector, defaultAreEquivalent);
    }

    public static final DistinctFlowImpl distinctUntilChangedBy$FlowKt__DistinctKt(Flow flow, Function1 function1, Function2 function2) {
        if (flow instanceof DistinctFlowImpl) {
            DistinctFlowImpl distinctFlowImpl = (DistinctFlowImpl) flow;
            if (distinctFlowImpl.keySelector == function1 && distinctFlowImpl.areEquivalent == function2) {
                return distinctFlowImpl;
            }
        }
        return new DistinctFlowImpl(flow, function1, function2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
    
        if (r2.emit(r10, r0) == r1) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0071 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:12:0x002f, B:14:0x0054, B:20:0x0069, B:22:0x0071, B:32:0x0045, B:35:0x0050), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0083 -> B:13:0x0032). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object emitAllImpl$FlowKt__ChannelsKt(kotlinx.coroutines.flow.FlowCollector r7, kotlinx.coroutines.channels.Channel r8, boolean r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L49
            if (r2 == r5) goto L3d
            if (r2 != r4) goto L37
            boolean r9 = r0.Z$0
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r7 = r0.L$2
            kotlinx.coroutines.channels.Channel r8 = r0.L$1
            kotlinx.coroutines.flow.FlowCollector r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L35
        L32:
            r10 = r7
            r7 = r2
            goto L54
        L35:
            r7 = move-exception
            goto L8e
        L37:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r3
        L3d:
            boolean r9 = r0.Z$0
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r7 = r0.L$2
            kotlinx.coroutines.channels.Channel r8 = r0.L$1
            kotlinx.coroutines.flow.FlowCollector r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L35
            goto L69
        L49:
            kotlin.ResultKt.throwOnFailure(r10)
            boolean r10 = r7 instanceof kotlinx.coroutines.flow.ThrowingCollector
            if (r10 != 0) goto L96
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r10 = r8.iterator()     // Catch: java.lang.Throwable -> L35
        L54:
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L35
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L35
            r0.L$2 = r10     // Catch: java.lang.Throwable -> L35
            r0.Z$0 = r9     // Catch: java.lang.Throwable -> L35
            r0.label = r5     // Catch: java.lang.Throwable -> L35
            java.lang.Object r2 = r10.hasNext(r0)     // Catch: java.lang.Throwable -> L35
            if (r2 != r1) goto L65
            goto L85
        L65:
            r6 = r2
            r2 = r7
            r7 = r10
            r10 = r6
        L69:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L35
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r10 == 0) goto L86
            java.lang.Object r10 = r7.next()     // Catch: java.lang.Throwable -> L35
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L35
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L35
            r0.L$2 = r7     // Catch: java.lang.Throwable -> L35
            r0.Z$0 = r9     // Catch: java.lang.Throwable -> L35
            r0.label = r4     // Catch: java.lang.Throwable -> L35
            java.lang.Object r10 = r2.emit(r10, r0)     // Catch: java.lang.Throwable -> L35
            if (r10 != r1) goto L32
        L85:
            return r1
        L86:
            if (r9 == 0) goto L8b
            r8.cancel(r3)
        L8b:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L8e:
            throw r7     // Catch: java.lang.Throwable -> L8f
        L8f:
            r10 = move-exception
            if (r9 == 0) goto L95
            androidx.work.Operation$State.cancelConsumed(r8, r7)
        L95:
            throw r10
        L96:
            kotlinx.coroutines.flow.ThrowingCollector r7 = (kotlinx.coroutines.flow.ThrowingCollector) r7
            java.lang.Throwable r7 = r7.e
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowKt.emitAllImpl$FlowKt__ChannelsKt(kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.channels.Channel, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0066 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object first(kotlinx.coroutines.flow.Flow r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.flow.internal.CombineKt.NULL
            boolean r1 = r8 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$first$1
            if (r1 == 0) goto L15
            r1 = r8
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$1 r1 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$first$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$1 r1 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$1
            r1.<init>(r8)
        L1a:
            java.lang.Object r8 = r1.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r1.label
            r4 = 0
            r5 = 1
            if (r3 == 0) goto L36
            if (r3 != r5) goto L30
            androidx.paging.ChannelFlowCollector r7 = r1.L$1
            kotlin.jvm.internal.Ref$ObjectRef r2 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2e
            goto L62
        L2e:
            r8 = move-exception
            goto L56
        L30:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r4
        L36:
            kotlin.jvm.internal.Ref$ObjectRef r8 = androidx.compose.animation.core.Animation.CC.m22m(r8)
            r8.element = r0
            androidx.paging.ChannelFlowCollector r3 = new androidx.paging.ChannelFlowCollector
            r6 = 8
            r3.<init>(r6, r8)
            r1.L$0 = r8     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L52
            r1.L$1 = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L52
            r1.label = r5     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L52
            java.lang.Object r7 = r7.collect(r3, r1)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L52
            if (r7 != r2) goto L50
            return r2
        L50:
            r2 = r8
            goto L62
        L52:
            r7 = move-exception
            r2 = r8
            r8 = r7
            r7 = r3
        L56:
            java.lang.Object r3 = r8.owner
            if (r3 != r7) goto L6d
            kotlin.coroutines.CoroutineContext r7 = r1._context
            r7.getClass()
            kotlinx.coroutines.AwaitKt.ensureActive(r7)
        L62:
            java.lang.Object r7 = r2.element
            if (r7 == r0) goto L67
            return r7
        L67:
            java.lang.String r7 = "Expected at least one element"
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$3(r7)
            return r4
        L6d:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowKt.first(kotlinx.coroutines.flow.Flow, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object firstOrNull(kotlinx.coroutines.flow.Flow r4, kotlin.jvm.functions.Function2 r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$3
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$3 r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$3 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$3
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2d
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r4 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2b
            goto L5c
        L2b:
            r6 = move-exception
            goto L50
        L2d:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L34:
            kotlin.jvm.internal.Ref$ObjectRef r6 = androidx.compose.animation.core.Animation.CC.m22m(r6)
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2
            r2.<init>(r5, r6, r3)
            r0.L$0 = r6     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4c
            r0.L$1 = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4c
            r0.label = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4c
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4c
            if (r4 != r1) goto L4a
            return r1
        L4a:
            r5 = r6
            goto L5c
        L4c:
            r4 = move-exception
            r5 = r6
            r6 = r4
            r4 = r2
        L50:
            java.lang.Object r1 = r6.owner
            if (r1 != r4) goto L5f
            kotlin.coroutines.CoroutineContext r4 = r0._context
            r4.getClass()
            kotlinx.coroutines.AwaitKt.ensureActive(r4)
        L5c:
            java.lang.Object r4 = r5.element
            return r4
        L5f:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowKt.firstOrNull(kotlinx.coroutines.flow.Flow, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Flow fuseSharedFlow(SharedFlow sharedFlow, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return ((i == 0 || i == -3) && bufferOverflow == BufferOverflow.SUSPEND) ? sharedFlow : new ChannelFlowOperatorImpl(i, coroutineContext, bufferOverflow, sharedFlow);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object invokeSafely$FlowKt__EmittersKt(kotlinx.coroutines.flow.ThrowingCollector r4, kotlin.jvm.functions.Function3 r5, java.lang.Throwable r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1 r0 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1 r0 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2b
            java.lang.Throwable r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L29
            goto L40
        L29:
            r4 = move-exception
            goto L43
        L2b:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L29
            r0.label = r3     // Catch: java.lang.Throwable -> L29
            java.lang.Object r4 = r5.invoke(r4, r6, r0)     // Catch: java.lang.Throwable -> L29
            if (r4 != r1) goto L40
            return r1
        L40:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L43:
            if (r6 == 0) goto L4a
            if (r6 == r4) goto L4a
            kotlin.ExceptionsKt.addSuppressed(r4, r6)
        L4a:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowKt.invokeSafely$FlowKt__EmittersKt(kotlinx.coroutines.flow.ThrowingCollector, kotlin.jvm.functions.Function3, java.lang.Throwable, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void setBufferAt(Object[] objArr, long j, Object obj) {
        objArr[((int) j) & (objArr.length - 1)] = obj;
    }

    public static final ReadonlyStateFlow stateIn(Flow flow, CoroutineScope coroutineScope, SharingStarted sharingStarted, Object obj) {
        SharingConfig configureSharing$FlowKt__ShareKt = configureSharing$FlowKt__ShareKt(flow);
        StateFlowImpl MutableStateFlow = MutableStateFlow(obj);
        AwaitKt.launch(coroutineScope, (CoroutineContext) configureSharing$FlowKt__ShareKt.context, sharingStarted.equals(SharingStarted.Companion.Eagerly) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new FlowExtKt$simpleScan$1(sharingStarted, (Flow) configureSharing$FlowKt__ShareKt.upstream, MutableStateFlow, obj, (Continuation) null));
        return new ReadonlyStateFlow(MutableStateFlow);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0065 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object first(kotlinx.coroutines.flow.Flow r7, kotlin.jvm.functions.Function2 r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.flow.internal.CombineKt.NULL
            boolean r1 = r9 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3
            if (r1 == 0) goto L15
            r1 = r9
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3 r1 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3 r1 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3
            r1.<init>(r9)
        L1a:
            java.lang.Object r9 = r1.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r1.label
            r4 = 0
            r5 = 1
            if (r3 == 0) goto L36
            if (r3 != r5) goto L30
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r7 = r1.L$1
            kotlin.jvm.internal.Ref$ObjectRef r8 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2e
            goto L61
        L2e:
            r9 = move-exception
            goto L55
        L30:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r4
        L36:
            kotlin.jvm.internal.Ref$ObjectRef r9 = androidx.compose.animation.core.Animation.CC.m22m(r9)
            r9.element = r0
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r3 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2
            r6 = 0
            r3.<init>(r8, r9, r6)
            r1.L$0 = r9     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L51
            r1.L$1 = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L51
            r1.label = r5     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L51
            java.lang.Object r7 = r7.collect(r3, r1)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L51
            if (r7 != r2) goto L4f
            return r2
        L4f:
            r8 = r9
            goto L61
        L51:
            r7 = move-exception
            r8 = r9
            r9 = r7
            r7 = r3
        L55:
            java.lang.Object r2 = r9.owner
            if (r2 != r7) goto L6c
            kotlin.coroutines.CoroutineContext r7 = r1._context
            r7.getClass()
            kotlinx.coroutines.AwaitKt.ensureActive(r7)
        L61:
            java.lang.Object r7 = r8.element
            if (r7 == r0) goto L66
            return r7
        L66:
            java.lang.String r7 = "Expected at least one element matching the predicate"
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$3(r7)
            return r4
        L6c:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowKt.first(kotlinx.coroutines.flow.Flow, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
