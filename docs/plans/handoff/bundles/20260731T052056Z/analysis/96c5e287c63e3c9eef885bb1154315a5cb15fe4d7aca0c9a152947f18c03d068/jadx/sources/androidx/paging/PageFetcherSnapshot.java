package androidx.paging;

import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.unit.DpKt;
import androidx.paging.LoadState;
import androidx.paging.PageEvent;
import androidx.paging.PageFetcherSnapshotState;
import androidx.paging.PagingSource;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFetcherSnapshot {
    public final PagingConfig config;
    public final HintHandler hintHandler;
    public final Object initialKey;
    public final int initialLoadSize;
    public final BufferedChannel pageEventCh;
    public final AtomicBoolean pageEventChCollected;
    public final JobImpl pageEventChannelFlowJob;
    public final FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 pageEventFlow;
    public final PagingSource pagingSource;
    public final ConflatedEventBus$special$$inlined$mapNotNull$1 retryFlow;
    public final PageFetcherSnapshotState.Holder stateHolder;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PageFetcherSnapshot(Object obj, PagingSource pagingSource, PagingConfig pagingConfig, ConflatedEventBus$special$$inlined$mapNotNull$1 conflatedEventBus$special$$inlined$mapNotNull$1, int i, PagingState pagingState, Function0 function0) {
        pagingSource.getClass();
        this.initialKey = obj;
        this.pagingSource = pagingSource;
        this.config = pagingConfig;
        this.retryFlow = conflatedEventBus$special$$inlined$mapNotNull$1;
        this.initialLoadSize = i;
        this.hintHandler = new HintHandler(0);
        this.pageEventChCollected = new AtomicBoolean(false);
        Continuation continuation = null;
        this.pageEventCh = DpKt.Channel$default(-2, 6, null);
        this.stateHolder = new PageFetcherSnapshotState.Holder(pagingConfig);
        JobImpl Job$default = AwaitKt.Job$default();
        this.pageEventChannelFlowJob = Job$default;
        this.pageEventFlow = new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new FlowExtKt$simpleScan$1(20, this, continuation), FlowExtKt.simpleChannelFlow(new SingleRunner$runInIsolation$2(Job$default, new FlowExtKt$simpleScan$1(19, this, continuation), continuation, 25)));
    }

    public static String loadResultLog(LoadType loadType, Object obj, PagingSource.LoadResult loadResult) {
        if (loadResult == null) {
            return "End " + loadType + " with loadkey " + obj + ". Load CANCELLED.";
        }
        return "End " + loadType + " with loadKey " + obj + ". Returned " + loadResult;
    }

    public final Object collectAsGenerationalViewportHints(FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1, LoadType loadType, SuspendLambda suspendLambda) {
        Continuation continuation = null;
        Flow simpleChannelFlow = FlowExtKt.simpleChannelFlow(new FlowExtKt$simpleRunningReduce$1(flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1, new PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1(null, this, loadType), continuation, 1));
        PageFetcherSnapshot$collectAsGenerationalViewportHints$3 pageFetcherSnapshot$collectAsGenerationalViewportHints$3 = new PageFetcherSnapshot$collectAsGenerationalViewportHints$3(loadType, null);
        simpleChannelFlow.getClass();
        Object collect = StateFlowKt.buffer$default(new SafeFlow(0, new FlowExtKt$simpleRunningReduce$1(simpleChannelFlow, pageFetcherSnapshot$collectAsGenerationalViewportHints$3, continuation, 0)), -1).collect(new ThumbNode$onAttach$1.AnonymousClass1(8, this, loadType), suspendLambda);
        return collect == CoroutineSingletons.COROUTINE_SUSPENDED ? collect : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object currentPagingState(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.paging.PageFetcherSnapshot$currentPagingState$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.paging.PageFetcherSnapshot$currentPagingState$1 r0 = (androidx.paging.PageFetcherSnapshot$currentPagingState$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.PageFetcherSnapshot$currentPagingState$1 r0 = new androidx.paging.PageFetcherSnapshot$currentPagingState$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2c
            kotlinx.coroutines.sync.MutexImpl r1 = r0.L$1
            androidx.paging.PageFetcherSnapshotState$Holder r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L48
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r4
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.paging.PageFetcherSnapshotState$Holder r6 = r5.stateHolder
            kotlinx.coroutines.sync.MutexImpl r2 = r6.lock
            r0.L$0 = r6
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r0 = r2.lock(r0)
            if (r0 != r1) goto L46
            return r1
        L46:
            r0 = r6
            r1 = r2
        L48:
            androidx.paging.PageFetcherSnapshotState r6 = r0.state     // Catch: java.lang.Throwable -> L5c
            androidx.paging.HintHandler r5 = r5.hintHandler     // Catch: java.lang.Throwable -> L5c
            java.lang.Object r5 = r5.state     // Catch: java.lang.Throwable -> L5c
            coil3.ImageLoader$Builder r5 = (coil3.ImageLoader$Builder) r5     // Catch: java.lang.Throwable -> L5c
            java.lang.Object r5 = r5.componentRegistry     // Catch: java.lang.Throwable -> L5c
            androidx.paging.ViewportHint$Access r5 = (androidx.paging.ViewportHint.Access) r5     // Catch: java.lang.Throwable -> L5c
            androidx.paging.PagingState r5 = r6.currentPagingState$paging_common(r5)     // Catch: java.lang.Throwable -> L5c
            r1.unlock(r4)
            return r5
        L5c:
            r5 = move-exception
            r1.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.currentPagingState(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0128, code lost:
    
        if (r1 == r3) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x00ee, code lost:
    
        if (setLoading(r1, r12, r2) != r3) goto L46;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016d A[Catch: all -> 0x0173, TRY_LEAVE, TryCatch #2 {all -> 0x0173, blocks: (B:58:0x0146, B:60:0x016d), top: B:57:0x0146 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    /* JADX WARN: Type inference failed for: r16v0, types: [androidx.paging.PageFetcherSnapshot] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doInitialLoad(kotlin.coroutines.jvm.internal.ContinuationImpl r17) {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.doInitialLoad(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x037c, code lost:
    
        r2 = r0;
        r0 = r8;
        r3 = r10;
        r9 = r20;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x057f  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0344 A[Catch: all -> 0x0367, TRY_LEAVE, TryCatch #5 {all -> 0x0367, blocks: (B:170:0x032c, B:172:0x0344), top: B:169:0x032c }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x05f0  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x04e2 A[Catch: all -> 0x04f1, TryCatch #0 {all -> 0x04f1, blocks: (B:64:0x04bc, B:65:0x04cb, B:67:0x04e2, B:69:0x04ea, B:71:0x04ee, B:72:0x04f7, B:73:0x04f5, B:74:0x04fa), top: B:63:0x04bc }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x04ee A[Catch: all -> 0x04f1, TryCatch #0 {all -> 0x04f1, blocks: (B:64:0x04bc, B:65:0x04cb, B:67:0x04e2, B:69:0x04ea, B:71:0x04ee, B:72:0x04f7, B:73:0x04f5, B:74:0x04fa), top: B:63:0x04bc }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x04f5 A[Catch: all -> 0x04f1, TryCatch #0 {all -> 0x04f1, blocks: (B:64:0x04bc, B:65:0x04cb, B:67:0x04e2, B:69:0x04ea, B:71:0x04ee, B:72:0x04f7, B:73:0x04f5, B:74:0x04fa), top: B:63:0x04bc }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0038  */
    /* JADX WARN: Type inference failed for: r10v15, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.paging.LoadType] */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v39, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v43, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v70 */
    /* JADX WARN: Type inference failed for: r1v71 */
    /* JADX WARN: Type inference failed for: r2v57, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v36, types: [androidx.paging.PagingSource$LoadResult] */
    /* JADX WARN: Type inference failed for: r4v64, types: [androidx.paging.PagingSource$LoadResult, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doLoad(androidx.paging.LoadType r24, androidx.paging.GenerationalViewportHint r25, kotlin.coroutines.Continuation r26) {
        /*
            Method dump skipped, instructions count: 1568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.doLoad(androidx.paging.LoadType, androidx.paging.GenerationalViewportHint, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0065 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:11:0x0051, B:13:0x0065, B:14:0x0094, B:19:0x0084), top: B:10:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0084 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:11:0x0051, B:13:0x0065, B:14:0x0094, B:19:0x0084), top: B:10:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object forceSetHint(androidx.paging.LoadType r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r12 = this;
            boolean r0 = r14 instanceof androidx.paging.PageFetcherSnapshot$forceSetHint$1
            if (r0 == 0) goto L13
            r0 = r14
            androidx.paging.PageFetcherSnapshot$forceSetHint$1 r0 = (androidx.paging.PageFetcherSnapshot$forceSetHint$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.PageFetcherSnapshot$forceSetHint$1 r0 = new androidx.paging.PageFetcherSnapshot$forceSetHint$1
            r0.<init>(r12, r14)
        L18:
            java.lang.Object r14 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.MutexImpl r13 = r0.L$2
            androidx.paging.PageFetcherSnapshotState$Holder r1 = r0.L$1
            androidx.paging.LoadType r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r14)
            r2 = r13
            r13 = r0
            goto L51
        L30:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r12)
            return r4
        L36:
            kotlin.ResultKt.throwOnFailure(r14)
            androidx.paging.LoadType r14 = androidx.paging.LoadType.REFRESH
            if (r13 == r14) goto La3
            androidx.paging.PageFetcherSnapshotState$Holder r14 = r12.stateHolder
            kotlinx.coroutines.sync.MutexImpl r2 = r14.lock
            r0.L$0 = r13
            r0.L$1 = r14
            r0.L$2 = r2
            r0.label = r3
            java.lang.Object r0 = r2.lock(r0)
            if (r0 != r1) goto L50
            return r1
        L50:
            r1 = r14
        L51:
            androidx.paging.PageFetcherSnapshotState r14 = r1.state     // Catch: java.lang.Throwable -> L81
            int r0 = r14.initialPageIndex     // Catch: java.lang.Throwable -> L81
            java.util.ArrayList r1 = r14.pages     // Catch: java.lang.Throwable -> L81
            int r6 = -r0
            int r0 = r1.size()     // Catch: java.lang.Throwable -> L81
            int r5 = r14.initialPageIndex     // Catch: java.lang.Throwable -> L81
            int r0 = r0 - r5
            int r11 = r0 + (-1)
            androidx.paging.LoadType r0 = androidx.paging.LoadType.APPEND     // Catch: java.lang.Throwable -> L81
            if (r13 != r0) goto L84
            androidx.paging.ViewportHint$Access r5 = new androidx.paging.ViewportHint$Access     // Catch: java.lang.Throwable -> L81
            java.lang.Object r0 = kotlin.collections.CollectionsKt.last(r1)     // Catch: java.lang.Throwable -> L81
            androidx.paging.PagingSource$LoadResult$Page r0 = (androidx.paging.PagingSource.LoadResult.Page) r0     // Catch: java.lang.Throwable -> L81
            java.util.List r0 = r0.data     // Catch: java.lang.Throwable -> L81
            int r7 = androidx.room.Room.getLastIndex(r0)     // Catch: java.lang.Throwable -> L81
            int r14 = r14.getStorageCount$paging_common()     // Catch: java.lang.Throwable -> L81
            int r8 = r14 + (-1)
            r9 = 0
            r0 = r11
            r10 = r6
            r6 = r0
            r5.<init>(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L81
            goto L94
        L81:
            r0 = move-exception
            r12 = r0
            goto L9f
        L84:
            r0 = r11
            androidx.paging.ViewportHint$Access r5 = new androidx.paging.ViewportHint$Access     // Catch: java.lang.Throwable -> L81
            int r14 = r14.getStorageCount$paging_common()     // Catch: java.lang.Throwable -> L81
            int r9 = r14 + (-1)
            r7 = 0
            r8 = 0
            r10 = r6
            r11 = r0
            r5.<init>(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L81
        L94:
            androidx.paging.HintHandler r12 = r12.hintHandler     // Catch: java.lang.Throwable -> L81
            r12.forceSetHint(r13, r5)     // Catch: java.lang.Throwable -> L81
            r2.unlock(r4)
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        L9f:
            r2.unlock(r4)
            throw r12
        La3:
            java.lang.String r12 = "Called for REFRESH but this should only be called for either APPEND or PREPEND loads. This error indicates a bug in the Paging library. Please file a bug report in Buganizer."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r12)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.forceSetHint(androidx.paging.LoadType, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0062 A[Catch: all -> 0x0077, TryCatch #0 {all -> 0x0077, blocks: (B:11:0x004d, B:13:0x0062, B:17:0x006b), top: B:10:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006b A[Catch: all -> 0x0077, TRY_LEAVE, TryCatch #0 {all -> 0x0077, blocks: (B:11:0x004d, B:13:0x0062, B:17:0x006b), top: B:10:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getLoadKey$paging_common(androidx.paging.PagingSource.LoadResult.Page r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.paging.PageFetcherSnapshot$getLoadKey$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.paging.PageFetcherSnapshot$getLoadKey$1 r0 = (androidx.paging.PageFetcherSnapshot$getLoadKey$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.PageFetcherSnapshot$getLoadKey$1 r0 = new androidx.paging.PageFetcherSnapshot$getLoadKey$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.MutexImpl r5 = r0.L$2
            androidx.paging.PageFetcherSnapshotState$Holder r6 = r0.L$1
            androidx.paging.PagingSource$LoadResult$Page r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4d
        L2e:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r4
        L34:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.paging.PageFetcherSnapshotState$Holder r5 = r5.stateHolder
            kotlinx.coroutines.sync.MutexImpl r7 = r5.lock
            r0.L$0 = r6
            r0.L$1 = r5
            r0.L$2 = r7
            r0.label = r3
            java.lang.Object r0 = r7.lock(r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            r0 = r6
            r6 = r5
            r5 = r7
        L4d:
            androidx.paging.PageFetcherSnapshotState r6 = r6.state     // Catch: java.lang.Throwable -> L77
            r0.getClass()     // Catch: java.lang.Throwable -> L77
            int r7 = r0.hashCode()     // Catch: java.lang.Throwable -> L77
            java.util.LinkedHashMap r6 = r6.pageKeys     // Catch: java.lang.Throwable -> L77
            java.lang.Integer r1 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L77
            boolean r1 = r6.containsKey(r1)     // Catch: java.lang.Throwable -> L77
            if (r1 == 0) goto L6b
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L77
            java.lang.Object r6 = r6.get(r7)     // Catch: java.lang.Throwable -> L77
            goto L73
        L6b:
            java.lang.String r6 = "Load key not found for Page "
            java.lang.String r7 = ". This likely indicates an error in the library. Please file a bug in the Buganizer."
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m$1(r0, r7, r6)     // Catch: java.lang.Throwable -> L77
            r6 = r4
        L73:
            r5.unlock(r4)
            return r6
        L77:
            r6 = move-exception
            r5.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.getLoadKey$paging_common(androidx.paging.PagingSource$LoadResult$Page, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final PagingSource.LoadParams loadParams(LoadType loadType, Object obj) {
        int i = loadType == LoadType.REFRESH ? this.initialLoadSize : this.config.pageSize;
        loadType.getClass();
        int i2 = PagingSource$LoadParams$Companion$WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i2 == 1) {
            return new PagingSource.LoadParams.Refresh(i, obj);
        }
        if (i2 == 2) {
            if (obj != null) {
                return new PagingSource.LoadParams.Prepend(i, obj);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("key cannot be null for prepend");
            return null;
        }
        if (i2 != 3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        if (obj != null) {
            return new PagingSource.LoadParams.Append(i, obj);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("key cannot be null for append");
        return null;
    }

    public final Object nextLoadKeyOrNull(PageFetcherSnapshotState pageFetcherSnapshotState, LoadType loadType, int i, int i2) {
        pageFetcherSnapshotState.getClass();
        int i3 = PageFetcherSnapshotState.WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i3 == 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot get loadId for loadType: REFRESH");
            return null;
        }
        if (i3 != 2 && i3 != 3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        if (i != 0 || (pageFetcherSnapshotState.sourceLoadStates.get(loadType) instanceof LoadState.Error) || i2 >= this.config.prefetchDistance) {
            return null;
        }
        LoadType loadType2 = LoadType.PREPEND;
        ArrayList arrayList = pageFetcherSnapshotState.pages;
        if (loadType != loadType2) {
            return ((PagingSource.LoadResult.Page) CollectionsKt.last((List) arrayList)).nextKey;
        }
        ((PagingSource.LoadResult.Page) CollectionsKt.first((List) arrayList)).getClass();
        return null;
    }

    public final Object retryLoadError(LoadType loadType, ViewportHint viewportHint, PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1 pageFetcherSnapshot$pageEventFlow$1$4$1$emit$1) {
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        Unit unit = Unit.INSTANCE;
        if (i == 1) {
            Object doInitialLoad = doInitialLoad(pageFetcherSnapshot$pageEventFlow$1$4$1$emit$1);
            return doInitialLoad == CoroutineSingletons.COROUTINE_SUSPENDED ? doInitialLoad : unit;
        }
        if (viewportHint != null) {
            this.hintHandler.forceSetHint(loadType, viewportHint);
            return unit;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot retry APPEND / PREPEND load on PagingSource without ViewportHint");
        return null;
    }

    public final Object setError(PageFetcherSnapshotState pageFetcherSnapshotState, LoadType loadType, LoadState.Error error, ContinuationImpl continuationImpl) {
        SVG svg = pageFetcherSnapshotState.sourceLoadStates;
        if (!svg.get(loadType).equals(error)) {
            svg.set(loadType, error);
            Object send = this.pageEventCh.send(new PageEvent.LoadStateUpdate(svg.snapshot(), null), continuationImpl);
            if (send == CoroutineSingletons.COROUTINE_SUSPENDED) {
                return send;
            }
        }
        return Unit.INSTANCE;
    }

    public final Object setLoading(PageFetcherSnapshotState pageFetcherSnapshotState, LoadType loadType, ContinuationImpl continuationImpl) {
        SVG svg = pageFetcherSnapshotState.sourceLoadStates;
        LoadState loadState = svg.get(loadType);
        LoadState.Loading loading = LoadState.Loading.INSTANCE;
        if (!loadState.equals(loading)) {
            svg.set(loadType, loading);
            Object send = this.pageEventCh.send(new PageEvent.LoadStateUpdate(svg.snapshot(), null), continuationImpl);
            if (send == CoroutineSingletons.COROUTINE_SUSPENDED) {
                return send;
            }
        }
        return Unit.INSTANCE;
    }

    public final void startConsumingHints(CoroutineScope coroutineScope) {
        Continuation continuation = null;
        AwaitKt.launch$default(coroutineScope, null, null, new PageFetcherSnapshot$startConsumingHints$2(this, continuation, 0), 3);
        AwaitKt.launch$default(coroutineScope, null, null, new PageFetcherSnapshot$startConsumingHints$2(this, continuation, 1), 3);
    }
}
