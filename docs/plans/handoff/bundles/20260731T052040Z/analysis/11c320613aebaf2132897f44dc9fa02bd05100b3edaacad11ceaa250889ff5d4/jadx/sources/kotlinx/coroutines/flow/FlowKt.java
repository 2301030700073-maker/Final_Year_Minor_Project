package kotlinx.coroutines.flow;

import androidx.compose.ui.Modifier;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.util.Log;
import com.google.common.base.Joiner;
import com.grack.nanojson.JsonBuilder;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.internal.ChannelFlowKt;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* loaded from: classes.dex */
public abstract class FlowKt {
    public static final Joiner NO_VALUE = new Joiner("NO_VALUE", 2);
    public static final Joiner NONE = new Joiner("NONE", 2);
    public static final Joiner PENDING = new Joiner("PENDING", 2);

    public static final SharedFlowImpl MutableSharedFlow(int i, BufferOverflow bufferOverflow) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(i, "extraBufferCapacity cannot be negative, but was "));
            return null;
        }
        if (i <= 0 && bufferOverflow != BufferOverflow.SUSPEND) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m$1(bufferOverflow, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy ");
            return null;
        }
        if (i < 0) {
            i = Log.LOG_LEVEL_OFF;
        }
        return new SharedFlowImpl(0, i, bufferOverflow);
    }

    public static final StateFlowImpl MutableStateFlow(Object obj) {
        if (obj == null) {
            obj = ChannelFlowKt.NULL;
        }
        return new StateFlowImpl(obj);
    }

    public static final void access$setBufferAt(Object[] objArr, long j, Object obj) {
        objArr[((int) j) & (objArr.length - 1)] = obj;
    }

    public static Flow buffer$default(Flow flow, int i) {
        BufferOverflow bufferOverflow;
        if (i < 0 && i != -2 && i != -1) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(i, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "));
            return null;
        }
        BufferOverflow bufferOverflow2 = BufferOverflow.SUSPEND;
        if (i == -1) {
            i = 0;
            bufferOverflow = BufferOverflow.DROP_OLDEST;
        } else {
            bufferOverflow = bufferOverflow2;
        }
        boolean z = flow instanceof FusibleFlow;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        if (!z) {
            return new ChannelFlowOperatorImpl(flow, emptyCoroutineContext, i, bufferOverflow);
        }
        FusibleFlow fusibleFlow = (FusibleFlow) flow;
        EmptyCoroutineContext emptyCoroutineContext2 = (true && true) ? emptyCoroutineContext : null;
        if ((1 & 2) != 0) {
            i = -3;
        }
        if ((1 & 4) == 0) {
            bufferOverflow2 = bufferOverflow;
        }
        return fusibleFlow.fuse(emptyCoroutineContext2, i, bufferOverflow2);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.io.Serializable catchImpl(androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1 r4, kotlinx.coroutines.flow.FlowCollector r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1
            if (r0 == 0) goto L13
            r0 = r6
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
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L3a
            if (r1 != r2) goto L34
            java.lang.Object r4 = r0.L$2
            kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref$ObjectRef) r4
            java.lang.Object r5 = r0.L$1
            kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
            java.lang.Object r5 = r0.L$0
            kotlinx.coroutines.flow.Flow r5 = (kotlinx.coroutines.flow.Flow) r5
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L32
            return r3
        L32:
            r5 = move-exception
            goto L5b
        L34:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return r3
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2 r1 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2     // Catch: java.lang.Throwable -> L59
            r1.<init>(r6, r5)     // Catch: java.lang.Throwable -> L59
            r0.L$0 = r3     // Catch: java.lang.Throwable -> L59
            r0.L$1 = r3     // Catch: java.lang.Throwable -> L59
            r0.L$2 = r6     // Catch: java.lang.Throwable -> L59
            r0.label = r2     // Catch: java.lang.Throwable -> L59
            java.lang.Object r4 = r4.collect(r1, r0)     // Catch: java.lang.Throwable -> L59
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L58
            return r5
        L58:
            return r3
        L59:
            r5 = move-exception
            r4 = r6
        L5b:
            java.lang.Object r4 = r4.element
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            if (r4 == 0) goto L67
            boolean r6 = r4.equals(r5)
            if (r6 != 0) goto L89
        L67:
            kotlin.coroutines.CoroutineContext r6 = r0.getContext()
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE
            kotlin.coroutines.CoroutineContext$Element r6 = r6.get(r0)
            kotlinx.coroutines.Job r6 = (kotlinx.coroutines.Job) r6
            if (r6 == 0) goto L8a
            boolean r0 = r6.isCancelled()
            if (r0 != 0) goto L7c
            goto L8a
        L7c:
            java.util.concurrent.CancellationException r6 = r6.getCancellationException()
            if (r6 == 0) goto L8a
            boolean r6 = r6.equals(r5)
            if (r6 != 0) goto L89
            goto L8a
        L89:
            throw r5
        L8a:
            if (r4 != 0) goto L8d
            return r5
        L8d:
            boolean r6 = r5 instanceof java.util.concurrent.CancellationException
            if (r6 == 0) goto L95
            kotlin.ResultKt.addSuppressed(r4, r5)
            throw r4
        L95:
            kotlin.ResultKt.addSuppressed(r5, r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.catchImpl(androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1, kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    public static final Flow distinctUntilChanged(Flow flow) {
        return flow instanceof StateFlow ? flow : flow instanceof DistinctFlowImpl ? flow : new DistinctFlowImpl(flow);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008f, code lost:
    
        if (r1.emit(r10, r0) == r5) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #1 {all -> 0x003b, blocks: (B:12:0x0035, B:14:0x005c, B:20:0x0073, B:22:0x007b, B:32:0x0051, B:34:0x0058), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x008f -> B:13:0x0038). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object emitAllImpl$FlowKt__ChannelsKt(kotlinx.coroutines.flow.FlowCollector r7, kotlinx.coroutines.channels.Channel r8, boolean r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
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
            if (r1 == 0) goto L55
            if (r1 == r3) goto L43
            if (r1 != r2) goto L3d
            boolean r9 = r0.Z$0
            java.lang.Object r7 = r0.L$2
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r7 = (kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator) r7
            java.lang.Object r8 = r0.L$1
            kotlinx.coroutines.channels.Channel r8 = (kotlinx.coroutines.channels.Channel) r8
            java.lang.Object r1 = r0.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L3b
        L38:
            r10 = r7
            r7 = r1
            goto L5c
        L3b:
            r7 = move-exception
            goto L9a
        L3d:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            return r4
        L43:
            boolean r9 = r0.Z$0
            java.lang.Object r7 = r0.L$2
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r7 = (kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator) r7
            java.lang.Object r8 = r0.L$1
            kotlinx.coroutines.channels.Channel r8 = (kotlinx.coroutines.channels.Channel) r8
            java.lang.Object r1 = r0.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L3b
            goto L73
        L55:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r10 = r8.iterator()     // Catch: java.lang.Throwable -> L3b
        L5c:
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L3b
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L3b
            r0.L$2 = r10     // Catch: java.lang.Throwable -> L3b
            r0.L$3 = r4     // Catch: java.lang.Throwable -> L3b
            r0.Z$0 = r9     // Catch: java.lang.Throwable -> L3b
            r0.label = r3     // Catch: java.lang.Throwable -> L3b
            java.lang.Object r1 = r10.hasNext(r0)     // Catch: java.lang.Throwable -> L3b
            if (r1 != r5) goto L6f
            goto L91
        L6f:
            r6 = r1
            r1 = r7
            r7 = r10
            r10 = r6
        L73:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L3b
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L3b
            if (r10 == 0) goto L92
            java.lang.Object r10 = r7.next()     // Catch: java.lang.Throwable -> L3b
            r0.L$0 = r1     // Catch: java.lang.Throwable -> L3b
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L3b
            r0.L$2 = r7     // Catch: java.lang.Throwable -> L3b
            r0.L$3 = r4     // Catch: java.lang.Throwable -> L3b
            r0.Z$0 = r9     // Catch: java.lang.Throwable -> L3b
            r0.label = r2     // Catch: java.lang.Throwable -> L3b
            java.lang.Object r10 = r1.emit(r10, r0)     // Catch: java.lang.Throwable -> L3b
            if (r10 != r5) goto L38
        L91:
            return r5
        L92:
            if (r9 == 0) goto L97
            r8.cancel(r4)
        L97:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L9a:
            throw r7     // Catch: java.lang.Throwable -> L9b
        L9b:
            r10 = move-exception
            if (r9 == 0) goto Lb4
            boolean r9 = r7 instanceof java.util.concurrent.CancellationException
            if (r9 == 0) goto La5
            r4 = r7
            java.util.concurrent.CancellationException r4 = (java.util.concurrent.CancellationException) r4
        La5:
            if (r4 != 0) goto Lb1
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r9 = "Channel was consumed, consumer had failed"
            r4.<init>(r9)
            r4.initCause(r7)
        Lb1:
            r8.cancel(r4)
        Lb4:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.emitAllImpl$FlowKt__ChannelsKt(kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.channels.Channel, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0080 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object first(kotlinx.coroutines.flow.Flow r5, kotlin.jvm.functions.Function2 r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            com.google.common.base.Joiner r0 = kotlinx.coroutines.flow.internal.ChannelFlowKt.NULL
            boolean r1 = r7 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3
            if (r1 == 0) goto L15
            r1 = r7
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
            r1.<init>(r7)
        L1a:
            java.lang.Object r7 = r1.result
            int r2 = r1.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L44
            if (r2 != r3) goto L3e
            java.lang.Object r5 = r1.L$4
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r5 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2) r5
            java.lang.Object r6 = r1.L$3
            kotlinx.coroutines.flow.Flow r6 = (kotlinx.coroutines.flow.Flow) r6
            java.lang.Object r6 = r1.L$2
            kotlin.jvm.internal.Ref$ObjectRef r6 = (kotlin.jvm.internal.Ref$ObjectRef) r6
            java.lang.Object r2 = r1.L$1
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            java.lang.Object r2 = r1.L$0
            kotlinx.coroutines.flow.Flow r2 = (kotlinx.coroutines.flow.Flow) r2
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L3c
            goto L7c
        L3c:
            r7 = move-exception
            goto L71
        L3e:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r4
        L44:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            r7.element = r0
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2
            r2.<init>(r6, r7)
            r1.L$0 = r4     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L6d
            r1.L$1 = r4     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L6d
            r1.L$2 = r7     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L6d
            r1.L$3 = r4     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L6d
            r1.L$4 = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L6d
            r6 = 0
            r1.I$0 = r6     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L6d
            r1.label = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L6d
            java.lang.Object r5 = r5.collect(r2, r1)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L6d
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r6) goto L6b
            return r6
        L6b:
            r6 = r7
            goto L7c
        L6d:
            r5 = move-exception
            r6 = r7
            r7 = r5
            r5 = r2
        L71:
            kotlinx.coroutines.flow.FlowCollector r2 = r7.owner
            if (r2 != r5) goto L87
            kotlin.coroutines.CoroutineContext r5 = r1.getContext()
            kotlinx.coroutines.JobKt.ensureActive(r5)
        L7c:
            java.lang.Object r5 = r6.element
            if (r5 == r0) goto L81
            return r5
        L81:
            java.lang.String r5 = "Expected at least one element matching the predicate"
            com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(r5)
            return r4
        L87:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.first(kotlinx.coroutines.flow.Flow, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final ReadonlyStateFlow stateIn(SafeFlow safeFlow, ContextScope contextScope, StartedWhileSubscribed startedWhileSubscribed, Float f) {
        Channel.Factory.getClass();
        Channel.Factory factory = Channel.Factory.$$INSTANCE;
        JsonBuilder jsonBuilder = new JsonBuilder(safeFlow, EmptyCoroutineContext.INSTANCE, 25);
        StateFlowImpl MutableStateFlow = MutableStateFlow(f);
        return new ReadonlyStateFlow(MutableStateFlow, JobKt.launch(contextScope, (CoroutineContext) jsonBuilder.root, startedWhileSubscribed.equals(SharingStarted.Companion.Eagerly) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new FlowKt__ShareKt$launchSharing$1(startedWhileSubscribed, (Flow) jsonBuilder.json, MutableStateFlow, f, null)));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0078 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object first(androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            com.google.common.base.Joiner r0 = kotlinx.coroutines.flow.internal.ChannelFlowKt.NULL
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
            if (r2 == 0) goto L40
            if (r2 != r4) goto L3a
            java.lang.Object r7 = r1.L$3
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1 r7 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1) r7
            java.lang.Object r2 = r1.L$2
            kotlinx.coroutines.flow.Flow r2 = (kotlinx.coroutines.flow.Flow) r2
            java.lang.Object r2 = r1.L$1
            kotlin.jvm.internal.Ref$ObjectRef r2 = (kotlin.jvm.internal.Ref$ObjectRef) r2
            java.lang.Object r4 = r1.L$0
            kotlinx.coroutines.flow.Flow r4 = (kotlinx.coroutines.flow.Flow) r4
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L38
            goto L74
        L38:
            r8 = move-exception
            goto L69
        L3a:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            return r3
        L40:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            r2.element = r0
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1 r8 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
            r8.<init>()
            r1.L$0 = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L65
            r1.L$1 = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L65
            r1.L$2 = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L65
            r1.L$3 = r8     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L65
            r5 = 0
            r1.I$0 = r5     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L65
            r1.label = r4     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L65
            java.lang.Object r7 = r7.collect(r8, r1)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L65
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r8) goto L74
            return r8
        L65:
            r7 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L69:
            kotlinx.coroutines.flow.FlowCollector r4 = r8.owner
            if (r4 != r7) goto L7f
            kotlin.coroutines.CoroutineContext r7 = r1.getContext()
            kotlinx.coroutines.JobKt.ensureActive(r7)
        L74:
            java.lang.Object r7 = r2.element
            if (r7 == r0) goto L79
            return r7
        L79:
            java.lang.String r7 = "Expected at least one element"
            com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(r7)
            return r3
        L7f:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.first(androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
