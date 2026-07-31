package kotlinx.coroutines.flow;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import com.fsck.k9.mailstore.LocalStore;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NopCollector;
import kotlinx.io.Sink$CC;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* loaded from: classes.dex */
public abstract class FlowKt {
    public static final LocalStore.AnonymousClass8 NONE;
    public static final LocalStore.AnonymousClass8 NO_VALUE;
    public static final LocalStore.AnonymousClass8 PENDING;

    static {
        int i = 4;
        boolean z = false;
        NO_VALUE = new LocalStore.AnonymousClass8(i, "NO_VALUE", z);
        NONE = new LocalStore.AnonymousClass8(i, "NONE", z);
        PENDING = new LocalStore.AnonymousClass8(i, "PENDING", z);
    }

    public static final SharedFlowImpl MutableSharedFlow(int i, int i2, BufferOverflow bufferOverflow) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("replay cannot be negative, but was ", i));
            return null;
        }
        if (i2 < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("extraBufferCapacity cannot be negative, but was ", i2));
            return null;
        }
        if (i <= 0 && i2 <= 0 && bufferOverflow != BufferOverflow.SUSPEND) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3(bufferOverflow, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy ");
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

    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$invokeSafely$FlowKt__EmittersKt(kotlinx.coroutines.flow.ThrowingCollector r4, kotlin.jvm.functions.Function3 r5, java.lang.Throwable r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
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
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            java.lang.Throwable r6 = r0.L$2
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L27
            goto L40
        L27:
            r4 = move-exception
            goto L43
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L30:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$2 = r6     // Catch: java.lang.Throwable -> L27
            r0.label = r2     // Catch: java.lang.Throwable -> L27
            java.lang.Object r4 = r5.invoke(r4, r6, r0)     // Catch: java.lang.Throwable -> L27
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L40
            return r5
        L40:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L43:
            if (r6 == 0) goto L4a
            if (r6 == r4) goto L4a
            kotlin.ResultKt.addSuppressed(r4, r6)
        L4a:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.access$invokeSafely$FlowKt__EmittersKt(kotlinx.coroutines.flow.ThrowingCollector, kotlin.jvm.functions.Function3, java.lang.Throwable, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void access$setBufferAt(Object[] objArr, long j, Object obj) {
        objArr[((int) j) & (objArr.length - 1)] = obj;
    }

    public static final ReadonlyStateFlow asStateFlow(StateFlowImpl stateFlowImpl) {
        return new ReadonlyStateFlow(stateFlowImpl, null);
    }

    public static Flow buffer$default(Flow flow, int i) {
        BufferOverflow bufferOverflow;
        if (i < 0 && i != -2 && i != -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was ", i));
            return null;
        }
        if (i == -1) {
            i = 0;
            bufferOverflow = BufferOverflow.DROP_OLDEST;
        } else {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        int i2 = i;
        BufferOverflow bufferOverflow2 = bufferOverflow;
        return flow instanceof FusibleFlow ? Sink$CC.fuse$default((FusibleFlow) flow, null, i2, bufferOverflow2, 1) : new ChannelFlowOperatorImpl(flow, null, i2, bufferOverflow2, 2);
    }

    public static final CallbackFlowBuilder callbackFlow(Function2 function2) {
        return new CallbackFlowBuilder(function2, EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0080 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.io.Serializable catchImpl(kotlin.coroutines.jvm.internal.ContinuationImpl r5, kotlinx.coroutines.flow.Flow r6, kotlinx.coroutines.flow.FlowCollector r7) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1
            if (r0 == 0) goto L13
            r0 = r5
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
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            if (r1 != r2) goto L2a
            kotlin.jvm.internal.Ref$ObjectRef r6 = r0.L$2
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L28
            return r3
        L28:
            r5 = move-exception
            goto L4f
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$2 r1 = new kotlinx.coroutines.flow.DistinctFlowImpl$collect$2     // Catch: java.lang.Throwable -> L4b
            r1.<init>(r7, r5)     // Catch: java.lang.Throwable -> L4b
            r0.L$2 = r5     // Catch: java.lang.Throwable -> L4b
            r0.label = r2     // Catch: java.lang.Throwable -> L4b
            java.lang.Object r5 = r6.collect(r1, r0)     // Catch: java.lang.Throwable -> L4b
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r6) goto L4a
            return r6
        L4a:
            return r3
        L4b:
            r6 = move-exception
            r4 = r6
            r6 = r5
            r5 = r4
        L4f:
            java.lang.Object r6 = r6.element
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            if (r6 == 0) goto L5b
            boolean r7 = r6.equals(r5)
            if (r7 != 0) goto L7d
        L5b:
            kotlin.coroutines.CoroutineContext r7 = r0.getContext()
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE
            kotlin.coroutines.CoroutineContext$Element r7 = r7.get(r0)
            kotlinx.coroutines.Job r7 = (kotlinx.coroutines.Job) r7
            if (r7 == 0) goto L7e
            boolean r0 = r7.isCancelled()
            if (r0 != 0) goto L70
            goto L7e
        L70:
            java.util.concurrent.CancellationException r7 = r7.getCancellationException()
            if (r7 == 0) goto L7e
            boolean r7 = r7.equals(r5)
            if (r7 != 0) goto L7d
            goto L7e
        L7d:
            throw r5
        L7e:
            if (r6 != 0) goto L81
            return r5
        L81:
            boolean r7 = r5 instanceof java.util.concurrent.CancellationException
            if (r7 == 0) goto L89
            kotlin.ResultKt.addSuppressed(r6, r5)
            throw r6
        L89:
            kotlin.ResultKt.addSuppressed(r5, r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.catchImpl(kotlin.coroutines.jvm.internal.ContinuationImpl, kotlinx.coroutines.flow.Flow, kotlinx.coroutines.flow.FlowCollector):java.io.Serializable");
    }

    public static final Object collect(Flow flow, Continuation continuation) {
        Object collect = flow.collect(NopCollector.INSTANCE, continuation);
        return collect == CoroutineSingletons.COROUTINE_SUSPENDED ? collect : Unit.INSTANCE;
    }

    public static final Object collectLatest(Flow flow, Function2 function2, Continuation continuation) {
        int i = FlowKt__MergeKt.$r8$clinit;
        Object collect = collect(buffer$default(transformLatest(flow, new FlowKt__ZipKt$combine$1$1(function2, null, 1)), 0), continuation);
        return collect == CoroutineSingletons.COROUTINE_SUSPENDED ? collect : Unit.INSTANCE;
    }

    public static final SharingConfig configureSharing$FlowKt__ShareKt(Flow flow) {
        Channel.Factory.getClass();
        int i = Channel.Factory.CHANNEL_DEFAULT_CAPACITY;
        if (1 >= i) {
            i = 1;
        }
        int i2 = i - 1;
        boolean z = flow instanceof ChannelFlow;
        BufferOverflow bufferOverflow = BufferOverflow.SUSPEND;
        if (z) {
            ChannelFlow channelFlow = (ChannelFlow) flow;
            BufferOverflow bufferOverflow2 = channelFlow.onBufferOverflow;
            Flow dropChannelOperators = channelFlow.dropChannelOperators();
            if (dropChannelOperators != null) {
                int i3 = channelFlow.capacity;
                if (i3 != -3 && i3 != -2 && i3 != 0) {
                    i2 = i3;
                } else if (bufferOverflow2 != bufferOverflow || i3 == 0) {
                    i2 = 0;
                }
                return new SharingConfig(i2, channelFlow.context, bufferOverflow2, dropChannelOperators);
            }
        }
        return new SharingConfig(i2, EmptyCoroutineContext.INSTANCE, bufferOverflow, flow);
    }

    public static final Flow distinctUntilChanged(Flow flow) {
        return flow instanceof StateFlow ? flow : flow instanceof DistinctFlowImpl ? flow : new DistinctFlowImpl(flow);
    }

    public static final Object emitAll(ContinuationImpl continuationImpl, Flow flow, FlowCollector flowCollector) {
        if (flowCollector instanceof ThrowingCollector) {
            throw ((ThrowingCollector) flowCollector).e;
        }
        Object collect = flow.collect(flowCollector, continuationImpl);
        return collect == CoroutineSingletons.COROUTINE_SUSPENDED ? collect : Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
    
        if (r1.emit(r10, r0) == r5) goto L33;
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
            int r1 = r0.label
            r2 = 2
            r3 = 1
            r4 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L49
            if (r1 == r3) goto L3d
            if (r1 != r2) goto L37
            boolean r9 = r0.Z$0
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r7 = r0.L$2
            kotlinx.coroutines.channels.Channel r8 = r0.L$1
            kotlinx.coroutines.flow.FlowCollector r1 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L35
        L32:
            r10 = r7
            r7 = r1
            goto L54
        L35:
            r7 = move-exception
            goto L8e
        L37:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r4
        L3d:
            boolean r9 = r0.Z$0
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r7 = r0.L$2
            kotlinx.coroutines.channels.Channel r8 = r0.L$1
            kotlinx.coroutines.flow.FlowCollector r1 = r0.L$0
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
            r0.label = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r1 = r10.hasNext(r0)     // Catch: java.lang.Throwable -> L35
            if (r1 != r5) goto L65
            goto L85
        L65:
            r6 = r1
            r1 = r7
            r7 = r10
            r10 = r6
        L69:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L35
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r10 == 0) goto L86
            java.lang.Object r10 = r7.next()     // Catch: java.lang.Throwable -> L35
            r0.L$0 = r1     // Catch: java.lang.Throwable -> L35
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L35
            r0.L$2 = r7     // Catch: java.lang.Throwable -> L35
            r0.Z$0 = r9     // Catch: java.lang.Throwable -> L35
            r0.label = r2     // Catch: java.lang.Throwable -> L35
            java.lang.Object r10 = r1.emit(r10, r0)     // Catch: java.lang.Throwable -> L35
            if (r10 != r5) goto L32
        L85:
            return r5
        L86:
            if (r9 == 0) goto L8b
            r8.cancel(r4)
        L8b:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L8e:
            throw r7     // Catch: java.lang.Throwable -> L8f
        L8f:
            r10 = move-exception
            if (r9 == 0) goto L95
            okhttp3.Handshake.Companion.cancelConsumed(r8, r7)
        L95:
            throw r10
        L96:
            kotlinx.coroutines.flow.ThrowingCollector r7 = (kotlinx.coroutines.flow.ThrowingCollector) r7
            java.lang.Throwable r7 = r7.e
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.emitAllImpl$FlowKt__ChannelsKt(kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.channels.Channel, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0069 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object first(kotlinx.coroutines.flow.Flow r6, kotlin.jvm.functions.Function2 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            com.fsck.k9.mailstore.LocalStore$8 r0 = kotlinx.coroutines.flow.internal.CombineKt.NULL
            boolean r1 = r8 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3
            if (r1 == 0) goto L15
            r1 = r8
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
            r1.<init>(r8)
        L1a:
            java.lang.Object r8 = r1.result
            int r2 = r1.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2e
            kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1 r6 = r1.L$4
            kotlin.jvm.internal.Ref$ObjectRef r7 = r1.L$2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2c
            goto L65
        L2c:
            r8 = move-exception
            goto L5a
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r3
        L34:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$ObjectRef r8 = new kotlin.jvm.internal.Ref$ObjectRef
            r8.<init>()
            r8.element = r0
            kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1 r2 = new kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1
            r5 = 15
            r2.<init>(r5, r7, r8)
            r1.L$2 = r8     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L56
            r1.L$4 = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L56
            r1.label = r4     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L56
            java.lang.Object r6 = r6.collect(r2, r1)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L56
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r7) goto L54
            return r7
        L54:
            r7 = r8
            goto L65
        L56:
            r6 = move-exception
            r7 = r8
            r8 = r6
            r6 = r2
        L5a:
            kotlinx.coroutines.flow.FlowCollector r2 = r8.owner
            if (r2 != r6) goto L70
            kotlin.coroutines.CoroutineContext r6 = r1.getContext()
            kotlinx.coroutines.JobKt.ensureActive(r6)
        L65:
            java.lang.Object r6 = r7.element
            if (r6 == r0) goto L6a
            return r6
        L6a:
            java.lang.String r6 = "Expected at least one element matching the predicate"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r6)
            return r3
        L70:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.first(kotlinx.coroutines.flow.Flow, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object firstOrNull(kotlinx.coroutines.flow.Flow r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1 r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2b
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1 r5 = r0.L$3
            kotlin.jvm.internal.Ref$ObjectRef r1 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L29
            goto L5d
        L29:
            r6 = move-exception
            goto L52
        L2b:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r5 = 0
            return r5
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef
            r1.<init>()
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1 r6 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
            r6.<init>(r2, r1)
            r0.L$1 = r1     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4e
            r0.L$3 = r6     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4e
            r0.label = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4e
            java.lang.Object r5 = r5.collect(r6, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4e
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r6) goto L5d
            return r6
        L4e:
            r5 = move-exception
            r4 = r6
            r6 = r5
            r5 = r4
        L52:
            kotlinx.coroutines.flow.FlowCollector r2 = r6.owner
            if (r2 != r5) goto L60
            kotlin.coroutines.CoroutineContext r5 = r0.getContext()
            kotlinx.coroutines.JobKt.ensureActive(r5)
        L5d:
            java.lang.Object r5 = r1.element
            return r5
        L60:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.firstOrNull(kotlinx.coroutines.flow.Flow, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Flow flowOn(Flow flow, CoroutineContext coroutineContext) {
        if (coroutineContext.get(Job.Key.$$INSTANCE) == null) {
            return coroutineContext.equals(EmptyCoroutineContext.INSTANCE) ? flow : flow instanceof FusibleFlow ? Sink$CC.fuse$default((FusibleFlow) flow, coroutineContext, 0, null, 6) : new ChannelFlowOperatorImpl(flow, coroutineContext, 0, null, 12);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3(coroutineContext, "Flow context cannot contain job in it. Had ");
        return null;
    }

    public static final Flow fuseSharedFlow(SharedFlow sharedFlow, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return ((i == 0 || i == -3) && bufferOverflow == BufferOverflow.SUSPEND) ? sharedFlow : new ChannelFlowOperatorImpl(i, coroutineContext, bufferOverflow, sharedFlow);
    }

    public static final StandaloneCoroutine launchIn(Flow flow, CoroutineScope coroutineScope) {
        return JobKt.launch$default(coroutineScope, null, null, new BlockRunner$cancel$1(flow, null, 20), 3);
    }

    public static final ReadonlyStateFlow stateIn(Flow flow, CoroutineScope coroutineScope, SharingStarted sharingStarted, Object obj) {
        SharingConfig configureSharing$FlowKt__ShareKt = configureSharing$FlowKt__ShareKt(flow);
        StateFlowImpl MutableStateFlow = MutableStateFlow(obj);
        return new ReadonlyStateFlow(MutableStateFlow, JobKt.launch(coroutineScope, (CoroutineContext) configureSharing$FlowKt__ShareKt.context, sharingStarted.equals(SharingStarted.Companion.Eagerly) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new NavHostKt$NavHost$29$1(sharingStarted, (Flow) configureSharing$FlowKt__ShareKt.upstream, MutableStateFlow, obj, (Continuation) null)));
    }

    public static final ChannelFlowTransformLatest transformLatest(Flow flow, Function3 function3) {
        int i = FlowKt__MergeKt.$r8$clinit;
        return new ChannelFlowTransformLatest(function3, flow, EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0066 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object first(kotlinx.coroutines.flow.Flow r7, kotlin.coroutines.Continuation r8) {
        /*
            com.fsck.k9.mailstore.LocalStore$8 r0 = kotlinx.coroutines.flow.internal.CombineKt.NULL
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
            int r2 = r1.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2e
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1 r7 = r1.L$3
            kotlin.jvm.internal.Ref$ObjectRef r2 = r1.L$1
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2c
            goto L62
        L2c:
            r8 = move-exception
            goto L57
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r3
        L34:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            r2.element = r0
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1 r8 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
            r5 = 0
            r8.<init>(r5, r2)
            r1.L$1 = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            r1.L$3 = r8     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            r1.label = r4     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            java.lang.Object r7 = r7.collect(r8, r1)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r8) goto L62
            return r8
        L53:
            r7 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L57:
            kotlinx.coroutines.flow.FlowCollector r4 = r8.owner
            if (r4 != r7) goto L6d
            kotlin.coroutines.CoroutineContext r7 = r1.getContext()
            kotlinx.coroutines.JobKt.ensureActive(r7)
        L62:
            java.lang.Object r7 = r2.element
            if (r7 == r0) goto L67
            return r7
        L67:
            java.lang.String r7 = "Expected at least one element"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r7)
            return r3
        L6d:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.first(kotlinx.coroutines.flow.Flow, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
