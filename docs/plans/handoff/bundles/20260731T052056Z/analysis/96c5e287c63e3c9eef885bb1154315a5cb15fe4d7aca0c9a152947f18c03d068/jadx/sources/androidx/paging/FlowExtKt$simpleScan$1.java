package androidx.paging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.graphics.Rect;
import android.view.ScrollCaptureSession;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProduceStateScopeImpl;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;
import androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback;
import androidx.glance.appwidget.AppWidgetId;
import androidx.glance.appwidget.AppWidgetSession;
import androidx.glance.appwidget.GlanceRemoteViewsService;
import androidx.glance.session.SessionManagerImpl$scope$1;
import androidx.glance.session.SessionWorker$doWork$2$1;
import androidx.glance.session.SessionWorker$doWork$2$2;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.glance.session.TimerScopeKt$withTimer$2$1$blockScope$1;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigation.NavBackStackEntry;
import androidx.paging.PageFetcher$flow$1;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.work.ListenableWorker;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import androidx.work.impl.workers.ConstraintTrackingWorkerKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.DistinctFlowImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2$WhenMappings;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharingCommand;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.sync.MutexImpl;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetReceiver;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowExtKt$simpleScan$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $operation;
    public final /* synthetic */ int $r8$classId;
    public Object $this_simpleScan;
    public Object L$0;
    public Object L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowExtKt$simpleScan$1(SharingStarted sharingStarted, Flow flow, MutableSharedFlow mutableSharedFlow, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 29;
        this.L$1 = sharingStarted;
        this.$this_simpleScan = flow;
        this.$operation = mutableSharedFlow;
        this.L$0 = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0063, code lost:
    
        if (r1.emit(r3, r6) == r0) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$androidx$paging$PageFetcherSnapshot$pageEventFlow$2(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.label
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L27
            if (r1 == r3) goto L17
            if (r1 != r2) goto L11
            kotlin.ResultKt.throwOnFailure(r7)
            goto L66
        L11:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r4
        L17:
            java.lang.Object r1 = r6.$this_simpleScan
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            java.lang.Object r3 = r6.L$1
            kotlinx.coroutines.sync.MutexImpl r3 = (kotlinx.coroutines.sync.MutexImpl) r3
            java.lang.Object r5 = r6.L$0
            androidx.paging.PageFetcherSnapshotState$Holder r5 = (androidx.paging.PageFetcherSnapshotState.Holder) r5
            kotlin.ResultKt.throwOnFailure(r7)
            goto L47
        L27:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.L$0
            r1 = r7
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            java.lang.Object r7 = r6.$operation
            androidx.paging.PageFetcherSnapshot r7 = (androidx.paging.PageFetcherSnapshot) r7
            androidx.paging.PageFetcherSnapshotState$Holder r5 = r7.stateHolder
            kotlinx.coroutines.sync.MutexImpl r7 = r5.lock
            r6.L$0 = r5
            r6.L$1 = r7
            r6.$this_simpleScan = r1
            r6.label = r3
            java.lang.Object r3 = r7.lock(r6)
            if (r3 != r0) goto L46
            goto L65
        L46:
            r3 = r7
        L47:
            androidx.paging.PageFetcherSnapshotState r7 = r5.state     // Catch: java.lang.Throwable -> L69
            com.caverock.androidsvg.SVG r7 = r7.sourceLoadStates     // Catch: java.lang.Throwable -> L69
            androidx.paging.LoadStates r7 = r7.snapshot()     // Catch: java.lang.Throwable -> L69
            r3.unlock(r4)
            androidx.paging.PageEvent$LoadStateUpdate r3 = new androidx.paging.PageEvent$LoadStateUpdate
            r3.<init>(r7, r4)
            r6.L$0 = r4
            r6.L$1 = r4
            r6.$this_simpleScan = r4
            r6.label = r2
            java.lang.Object r6 = r1.emit(r3, r6)
            if (r6 != r0) goto L66
        L65:
            return r0
        L66:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L69:
            r6 = move-exception
            r3.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$simpleScan$1.invokeSuspend$androidx$paging$PageFetcherSnapshot$pageEventFlow$2(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x007a, code lost:
    
        if (r6.emit(r10, r9) == r0) goto L20;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005c  */
    /* JADX WARN: Type inference failed for: r5v11, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r5v9, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x007a -> B:6:0x0018). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$androidx$paging$SimpleChannelFlowKt$simpleChannelFlow$1$1(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.label
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L2d
            if (r1 == r3) goto L21
            if (r1 != r2) goto L1b
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r1 = (kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator) r1
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.Job r5 = (kotlinx.coroutines.Job) r5
            kotlin.ResultKt.throwOnFailure(r10)
        L18:
            r10 = r5
            r5 = r1
            goto L4f
        L1b:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            return r4
        L21:
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r1 = (kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator) r1
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.Job r5 = (kotlinx.coroutines.Job) r5
            kotlin.ResultKt.throwOnFailure(r10)
            goto L60
        L2d:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            kotlinx.coroutines.CoroutineScope r10 = (kotlinx.coroutines.CoroutineScope) r10
            r1 = 0
            r5 = 6
            kotlinx.coroutines.channels.BufferedChannel r1 = androidx.compose.ui.unit.DpKt.Channel$default(r1, r5, r4)
            androidx.paging.PageFetcher$flow$1 r5 = new androidx.paging.PageFetcher$flow$1
            java.lang.Object r6 = r9.$operation
            kotlin.jvm.functions.Function2 r6 = (kotlin.jvm.functions.Function2) r6
            r7 = 12
            r5.<init>(r1, r6, r4, r7)
            r6 = 3
            kotlinx.coroutines.StandaloneCoroutine r10 = kotlinx.coroutines.AwaitKt.launch$default(r10, r4, r4, r5, r6)
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r5 = new kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator
            r5.<init>()
        L4f:
            r9.L$0 = r10
            r9.L$1 = r5
            r9.label = r3
            java.lang.Object r1 = r5.hasNext(r9)
            if (r1 != r0) goto L5c
            goto L7c
        L5c:
            r8 = r5
            r5 = r10
            r10 = r1
            r1 = r8
        L60:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L7d
            java.lang.Object r10 = r1.next()
            java.lang.Object r6 = r9.$this_simpleScan
            kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
            r9.L$0 = r5
            r9.L$1 = r1
            r9.label = r2
            java.lang.Object r10 = r6.emit(r10, r9)
            if (r10 != r0) goto L18
        L7c:
            return r0
        L7d:
            r5.cancel(r4)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$simpleScan$1.invokeSuspend$androidx$paging$SimpleChannelFlowKt$simpleChannelFlow$1$1(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c6, code lost:
    
        if (r9.collect(r2, r24) == r8) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c8, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a9, code lost:
    
        if (kotlinx.coroutines.AwaitKt.withContext((kotlin.coroutines.CoroutineContext) r4, r5, r24) == r8) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0095, code lost:
    
        if (r4 == r8) goto L44;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00de A[Catch: all -> 0x00f0, TryCatch #1 {all -> 0x00f0, blocks: (B:18:0x00da, B:20:0x00de, B:22:0x00ec, B:24:0x00f2, B:28:0x00f7, B:30:0x00fb), top: B:17:0x00da }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$androidx$room$TriggerBasedInvalidationTracker$createFlow$1(java.lang.Object r25) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$simpleScan$1.invokeSuspend$androidx$room$TriggerBasedInvalidationTracker$createFlow$1(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if (r13 == r2) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$androidx$work$impl$utils$WorkForegroundKt$workForeground$2(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = r12.L$0
            androidx.work.impl.model.WorkSpec r0 = (androidx.work.impl.model.WorkSpec) r0
            java.lang.String r0 = r0.workerClassName
            java.lang.Object r1 = r12.L$1
            androidx.work.ListenableWorker r1 = (androidx.work.ListenableWorker) r1
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r12.label
            r4 = 0
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L25
            if (r3 == r6) goto L21
            if (r3 != r5) goto L1b
            kotlin.ResultKt.throwOnFailure(r13)
            return r13
        L1b:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r12)
            return r4
        L21:
            kotlin.ResultKt.throwOnFailure(r13)
            goto L35
        L25:
            kotlin.ResultKt.throwOnFailure(r13)
            androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture r13 = r1.getForegroundInfoAsync()
            r12.label = r6
            java.lang.Object r13 = androidx.work.impl.WorkerWrapperKt.awaitWithin(r13, r1, r12)
            if (r13 != r2) goto L35
            goto L80
        L35:
            r9 = r13
            androidx.work.ForegroundInfo r9 = (androidx.work.ForegroundInfo) r9
            if (r9 == 0) goto L82
            java.lang.String r13 = androidx.work.impl.utils.WorkForegroundKt.TAG
            androidx.work.Logger$LogcatLogger r3 = androidx.work.Logger$LogcatLogger.get()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r6 = "Updating notification for "
            r4.<init>(r6)
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r3.debug(r13, r0)
            java.lang.Object r13 = r12.$this_simpleScan
            r7 = r13
            androidx.work.impl.utils.WorkForegroundUpdater r7 = (androidx.work.impl.utils.WorkForegroundUpdater) r7
            java.lang.Object r13 = r12.$operation
            r10 = r13
            android.content.Context r10 = (android.content.Context) r10
            androidx.work.WorkerParameters r13 = r1.mWorkerParams
            java.util.UUID r8 = r13.mId
            androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor r13 = r7.mTaskExecutor
            androidx.room.TransactionExecutor r13 = r13.mBackgroundExecutor
            org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda28 r6 = new org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda28
            r11 = 2
            r6.<init>(r7, r8, r9, r10, r11)
            r13.getClass()
            androidx.work.ListenableFutureKt$$ExternalSyntheticLambda0 r0 = new androidx.work.ListenableFutureKt$$ExternalSyntheticLambda0
            r1 = 0
            java.lang.String r3 = "setForegroundAsync"
            r0.<init>(r13, r3, r6, r1)
            androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture r13 = androidx.room.Room.getFuture(r0)
            r12.label = r5
            java.lang.Object r12 = kotlin.text.UStringsKt.await(r13, r12)
            if (r12 != r2) goto L81
        L80:
            return r2
        L81:
            return r12
        L82:
            java.lang.String r12 = "Worker was marked important ("
            java.lang.String r13 = ") but did not provide ForegroundInfo"
            java.lang.String r12 = androidx.compose.animation.core.Animation.CC.m(r12, r0, r13)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r12)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$simpleScan$1.invokeSuspend$androidx$work$impl$utils$WorkForegroundKt$workForeground$2(java.lang.Object):java.lang.Object");
    }

    private final Object invokeSuspend$androidx$work$impl$workers$ConstraintTrackingWorker$runWorker$2$constraintTrackingJob$1(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Headers.Builder builder = (Headers.Builder) this.L$1;
            WorkSpec workSpec = (WorkSpec) this.L$0;
            this.label = 1;
            obj = ConstraintTrackingWorkerKt.awaitConstraintsNotMet(builder, workSpec, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        ((AtomicInteger) this.$this_simpleScan).set(((Number) obj).intValue());
        ((ListenableFuture) this.$operation).cancel(true);
        return Unit.INSTANCE;
    }

    private final Object invokeSuspend$androidx$work$impl$workers$ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        ConstraintTrackingWorker constraintTrackingWorker = (ConstraintTrackingWorker) this.L$1;
        ListenableWorker listenableWorker = (ListenableWorker) this.L$0;
        Headers.Builder builder = (Headers.Builder) this.$this_simpleScan;
        WorkSpec workSpec = (WorkSpec) this.$operation;
        this.label = 1;
        Object runWorker = constraintTrackingWorker.runWorker(listenableWorker, builder, workSpec, this);
        return runWorker == coroutineSingletons ? coroutineSingletons : runWorker;
    }

    private final Object invokeSuspend$kotlinx$coroutines$flow$FlowKt__DelayKt$debounceInternal$1$3$2(Object obj) {
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Object obj2 = ((ChannelResult) this.L$0).holder;
            ref$ObjectRef = (Ref$ObjectRef) this.$this_simpleScan;
            boolean z = obj2 instanceof ChannelResult.Failed;
            if (!z) {
                ref$ObjectRef.element = obj2;
            }
            FlowCollector flowCollector = (FlowCollector) this.$operation;
            if (z) {
                ChannelResult.Closed closed = obj2 instanceof ChannelResult.Closed ? (ChannelResult.Closed) obj2 : null;
                Throwable th = closed != null ? closed.cause : null;
                if (th != null) {
                    throw th;
                }
                Object obj3 = ref$ObjectRef.element;
                if (obj3 != null) {
                    Object obj4 = obj3 != CombineKt.NULL ? obj3 : null;
                    this.L$0 = obj2;
                    this.L$1 = ref$ObjectRef;
                    this.label = 1;
                    if (flowCollector.emit(obj4, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    ref$ObjectRef2 = ref$ObjectRef;
                }
                ref$ObjectRef.element = CombineKt.DONE;
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ref$ObjectRef2 = (Ref$ObjectRef) this.L$1;
        ResultKt.throwOnFailure(obj);
        ref$ObjectRef = ref$ObjectRef2;
        ref$ObjectRef.element = CombineKt.DONE;
        return Unit.INSTANCE;
    }

    private final Object invokeSuspend$kotlinx$coroutines$flow$FlowKt__ShareKt$launchSharing$1$2(Object obj) {
        MutableSharedFlow mutableSharedFlow = (MutableSharedFlow) this.$this_simpleScan;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            int i2 = FlowKt__ShareKt$launchSharing$1$2$WhenMappings.$EnumSwitchMapping$0[((SharingCommand) this.L$0).ordinal()];
            if (i2 == 1) {
                Flow flow = (Flow) this.L$1;
                this.label = 1;
                if (flow.collect(mutableSharedFlow, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else if (i2 != 2) {
                if (i2 != 3) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                Symbol symbol = StateFlowKt.NO_VALUE;
                Object obj2 = this.$operation;
                if (obj2 == symbol) {
                    mutableSharedFlow.resetReplayCache();
                } else {
                    mutableSharedFlow.tryEmit(obj2);
                }
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$operation;
        switch (i) {
            case 0:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$1 = new FlowExtKt$simpleScan$1((FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1) this.$this_simpleScan, (PageFetcher$flow$1.AnonymousClass2) obj2, continuation, 0);
                flowExtKt$simpleScan$1.L$0 = obj;
                return flowExtKt$simpleScan$1;
            case 1:
                return new FlowExtKt$simpleScan$1(this.L$0, (Animatable) this.L$1, (MutableState) this.$this_simpleScan, (MutableState) obj2, continuation, 1);
            case 2:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$12 = new FlowExtKt$simpleScan$1((MutableState) this.$this_simpleScan, (InfiniteTransition) obj2, continuation, 2);
                flowExtKt$simpleScan$12.L$0 = obj;
                return flowExtKt$simpleScan$12;
            case 3:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$13 = new FlowExtKt$simpleScan$1(3, (TrackpadScrollingLogic) obj2, continuation);
                flowExtKt$simpleScan$13.L$0 = obj;
                return flowExtKt$simpleScan$13;
            case 4:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$14 = new FlowExtKt$simpleScan$1((Function1) this.L$1, (AndroidLegacyPlatformTextInputServiceAdapter) this.$this_simpleScan, (LegacyAdaptingPlatformTextInputModifierNode) obj2, continuation, 4);
                flowExtKt$simpleScan$14.L$0 = obj;
                return flowExtKt$simpleScan$14;
            case 5:
                return new FlowExtKt$simpleScan$1((SelectionManager) this.L$0, (Ref$ObjectRef) this.L$1, (Ref$ObjectRef) this.$this_simpleScan, (Ref$LongRef) obj2, continuation, 5);
            case 6:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$15 = new FlowExtKt$simpleScan$1((Function1) this.L$1, (AtomicReference) this.$this_simpleScan, (Function2) obj2, continuation, 6);
                flowExtKt$simpleScan$15.L$0 = obj;
                return flowExtKt$simpleScan$15;
            case 7:
                return new FlowExtKt$simpleScan$1((Ref$ObjectRef) this.L$1, (Recomposer) this.L$0, (LifecycleOwner) this.$this_simpleScan, (WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2) obj2, continuation, 7, false);
            case 8:
                return new FlowExtKt$simpleScan$1((ComposeScrollCaptureCallback) this.L$1, (ScrollCaptureSession) this.L$0, (Rect) this.$this_simpleScan, (Consumer) obj2, continuation, 8, false);
            case 9:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$16 = new FlowExtKt$simpleScan$1((AppWidgetSession) this.L$1, (Context) this.$this_simpleScan, (MutableState) obj2, continuation, 9);
                flowExtKt$simpleScan$16.L$0 = obj;
                return flowExtKt$simpleScan$16;
            case 10:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$17 = new FlowExtKt$simpleScan$1((Function2) this.L$1, (ContextScope) this.$this_simpleScan, (BroadcastReceiver.PendingResult) obj2, continuation, 10);
                flowExtKt$simpleScan$17.L$0 = obj;
                return flowExtKt$simpleScan$17;
            case 11:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$18 = new FlowExtKt$simpleScan$1((ReadingChallengeWidgetReceiver) this.L$1, (Context) this.$this_simpleScan, (int[]) obj2, continuation, 11);
                flowExtKt$simpleScan$18.L$0 = obj;
                return flowExtKt$simpleScan$18;
            case 12:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$19 = new FlowExtKt$simpleScan$1((GlanceRemoteViewsService.GlanceRemoteViewsFactory) this.L$1, (AppWidgetId) this.$this_simpleScan, (ReadingChallengeWidget) obj2, continuation, 12);
                flowExtKt$simpleScan$19.L$0 = obj;
                return flowExtKt$simpleScan$19;
            case IMAGE_VALUE:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$110 = new FlowExtKt$simpleScan$1((Context) this.L$1, (SessionWorker$doWork$2$2) this.$this_simpleScan, (SessionWorker$doWork$2$1) obj2, continuation, 13);
                flowExtKt$simpleScan$110.L$0 = obj;
                return flowExtKt$simpleScan$110;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return new FlowExtKt$simpleScan$1((AppWidgetSession) this.L$1, (Context) this.L$0, (Throwable) this.$this_simpleScan, (TimerScopeKt$withTimer$2$1$blockScope$1) obj2, continuation, 14, false);
            case 15:
                return new FlowExtKt$simpleScan$1((TimerScopeKt$withTimer$2$1$blockScope$1) this.L$1, (TimeSource$Companion$$ExternalSyntheticLambda0) this.L$0, (CoroutineScope) this.$this_simpleScan, (Function2) obj2, continuation, 15, false);
            case LAZY_VERTICAL_GRID_VALUE:
                return new FlowExtKt$simpleScan$1((MutexImpl) this.$this_simpleScan, (Function2) obj2, continuation, 16);
            case VERTICAL_GRID_ITEM_VALUE:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$111 = new FlowExtKt$simpleScan$1((LifecycleRegistry) this.L$1, (Lifecycle$State) this.$this_simpleScan, (Function2) obj2, continuation, 17);
                flowExtKt$simpleScan$111.L$0 = obj;
                return flowExtKt$simpleScan$111;
            case RADIO_GROUP_VALUE:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$112 = new FlowExtKt$simpleScan$1((SeekableTransitionState) this.L$1, (NavBackStackEntry) this.$this_simpleScan, (Transition) obj2, continuation, 18);
                flowExtKt$simpleScan$112.L$0 = obj;
                return flowExtKt$simpleScan$112;
            case RADIO_BUTTON_VALUE:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$113 = new FlowExtKt$simpleScan$1(19, (PageFetcherSnapshot) obj2, continuation);
                flowExtKt$simpleScan$113.L$0 = obj;
                return flowExtKt$simpleScan$113;
            case RADIO_ROW_VALUE:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$114 = new FlowExtKt$simpleScan$1(20, (PageFetcherSnapshot) obj2, continuation);
                flowExtKt$simpleScan$114.L$0 = obj;
                return flowExtKt$simpleScan$114;
            case RADIO_COLUMN_VALUE:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$115 = new FlowExtKt$simpleScan$1((FlowCollector) this.$this_simpleScan, (Function2) obj2, continuation, 21);
                flowExtKt$simpleScan$115.L$0 = obj;
                return flowExtKt$simpleScan$115;
            case SIZE_BOX_VALUE:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$116 = new FlowExtKt$simpleScan$1((RoomDatabase) this.L$1, (CancellableContinuationImpl) this.$this_simpleScan, (RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1) obj2, continuation, 22);
                flowExtKt$simpleScan$116.L$0 = obj;
                return flowExtKt$simpleScan$116;
            case 23:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$117 = new FlowExtKt$simpleScan$1((TriggerBasedInvalidationTracker) this.L$1, (int[]) this.$this_simpleScan, (String[]) obj2, continuation, 23);
                flowExtKt$simpleScan$117.L$0 = obj;
                return flowExtKt$simpleScan$117;
            case 24:
                return new FlowExtKt$simpleScan$1((ListenableWorker) this.L$1, (WorkSpec) this.L$0, (WorkForegroundUpdater) this.$this_simpleScan, (Context) obj2, continuation, 24, false);
            case 25:
                return new FlowExtKt$simpleScan$1((Headers.Builder) this.L$1, (WorkSpec) this.L$0, (AtomicInteger) this.$this_simpleScan, (ListenableFuture) obj2, continuation, 25, false);
            case 26:
                return new FlowExtKt$simpleScan$1((ConstraintTrackingWorker) this.L$1, (ListenableWorker) this.L$0, (Headers.Builder) this.$this_simpleScan, (WorkSpec) obj2, continuation, 26, false);
            case 27:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$118 = new FlowExtKt$simpleScan$1((Ref$ObjectRef) this.$this_simpleScan, (FlowCollector) obj2, continuation, 27);
                flowExtKt$simpleScan$118.L$0 = obj;
                return flowExtKt$simpleScan$118;
            case 28:
                FlowExtKt$simpleScan$1 flowExtKt$simpleScan$119 = new FlowExtKt$simpleScan$1((Flow) this.L$1, (MutableSharedFlow) this.$this_simpleScan, this.$operation, continuation, 28);
                flowExtKt$simpleScan$119.L$0 = obj;
                return flowExtKt$simpleScan$119;
            default:
                return new FlowExtKt$simpleScan$1((SharingStarted) this.L$1, (Flow) this.$this_simpleScan, (MutableSharedFlow) obj2, this.L$0, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((FlowExtKt$simpleScan$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 4:
                return ((FlowExtKt$simpleScan$1) create((AndroidPlatformTextInputSession) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 6:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 7:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 8:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 9:
                return ((FlowExtKt$simpleScan$1) create((ProduceStateScopeImpl) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 10:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 11:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 12:
                return ((FlowExtKt$simpleScan$1) create((SessionManagerImpl$scope$1) obj, (Continuation) obj2)).invokeSuspend(unit);
            case IMAGE_VALUE:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 15:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case LAZY_VERTICAL_GRID_VALUE:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case VERTICAL_GRID_ITEM_VALUE:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case RADIO_GROUP_VALUE:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case RADIO_BUTTON_VALUE:
                return ((FlowExtKt$simpleScan$1) create((SimpleProducerScopeImpl) obj, (Continuation) obj2)).invokeSuspend(unit);
            case RADIO_ROW_VALUE:
                return ((FlowExtKt$simpleScan$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            case RADIO_COLUMN_VALUE:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case SIZE_BOX_VALUE:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 23:
                return ((FlowExtKt$simpleScan$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 24:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 25:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 26:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 27:
                ChannelResult channelResult = (ChannelResult) obj;
                Object obj3 = channelResult.holder;
                return ((FlowExtKt$simpleScan$1) create(channelResult, (Continuation) obj2)).invokeSuspend(unit);
            case 28:
                return ((FlowExtKt$simpleScan$1) create((SharingCommand) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((FlowExtKt$simpleScan$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:245:0x0436, code lost:
    
        if (r6 == r2) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
    
        if (kotlinx.coroutines.flow.StateFlowKt.first(r1, r2, r21) == r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x071d, code lost:
    
        if (r3 == r0) goto L371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x070d, code lost:
    
        if (r8 == r0) goto L371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:520:0x0914, code lost:
    
        if (androidx.compose.animation.core.ArcSplineKt.withInfiniteAnimationFrameNanos(r6, r21) == r0) goto L468;
     */
    /* JADX WARN: Code restructure failed: missing block: B:524:0x0936, code lost:
    
        if (kotlinx.coroutines.flow.StateFlowKt.first(r3, r5, r21) == r0) goto L468;
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:0x0939, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x09cc, code lost:
    
        if (r2.emit(null, r21) == r0) goto L496;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01b9, code lost:
    
        if (r3.lock(r21) != r0) goto L516;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:?, code lost:
    
        throw null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x056c  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x07a8  */
    /* JADX WARN: Removed duplicated region for block: B:457:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:501:0x08b6  */
    /* JADX WARN: Type inference failed for: r14v11, types: [java.lang.Object, kotlinx.coroutines.flow.Flow] */
    /* JADX WARN: Type inference failed for: r15v10, types: [java.lang.Object, kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.MutableSharedFlow] */
    /* JADX WARN: Type inference failed for: r2v114 */
    /* JADX WARN: Type inference failed for: r2v115 */
    /* JADX WARN: Type inference failed for: r2v29, types: [int] */
    /* JADX WARN: Type inference failed for: r2v30, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v85, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:435:0x08b6 -> B:425:0x0883). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:454:0x091c -> B:451:0x08fe). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:456:0x0936 -> B:451:0x08fe). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 2598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$simpleScan$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowExtKt$simpleScan$1(Object obj, Object obj2, Object obj3, Object obj4, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.L$1 = obj2;
        this.$this_simpleScan = obj3;
        this.$operation = obj4;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowExtKt$simpleScan$1(Object obj, Object obj2, Object obj3, Object obj4, Continuation continuation, int i, boolean z) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$1 = obj;
        this.L$0 = obj2;
        this.$this_simpleScan = obj3;
        this.$operation = obj4;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowExtKt$simpleScan$1(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$1 = obj;
        this.$this_simpleScan = obj2;
        this.$operation = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowExtKt$simpleScan$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$this_simpleScan = obj;
        this.$operation = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowExtKt$simpleScan$1(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$operation = obj;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.paging.FlowExtKt$simpleScan$1$1, reason: invalid class name */
    public final class AnonymousClass1 implements FlowCollector {
        public final Object $$this$flow;
        public final Object $accumulator;
        public final Object $operation;
        public final /* synthetic */ int $r8$classId;

        public AnonymousClass1(FlowCollector flowCollector, CoroutineContext coroutineContext) {
            this.$r8$classId = 6;
            this.$accumulator = coroutineContext;
            this.$operation = InlineList.threadContextElements(coroutineContext);
            this.$$this$flow = new PageFetcher$flow$1(27, flowCollector, (Continuation) null);
        }

        /* JADX WARN: Code restructure failed: missing block: B:136:0x01f1, code lost:
        
            if (r0 == r2) goto L117;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00d4, code lost:
        
            if (r2 == r4) goto L53;
         */
        /* JADX WARN: Removed duplicated region for block: B:107:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x01c8  */
        /* JADX WARN: Removed duplicated region for block: B:130:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:131:0x01db  */
        /* JADX WARN: Removed duplicated region for block: B:150:0x0259  */
        /* JADX WARN: Removed duplicated region for block: B:161:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:162:0x026c  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00df  */
        /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0119  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0124  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x016d  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r18, kotlin.coroutines.Continuation r19) {
            /*
                Method dump skipped, instructions count: 676
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$simpleScan$1.AnonymousClass1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }

        public AnonymousClass1(Ref$BooleanRef ref$BooleanRef, FlowCollector flowCollector, Function2 function2) {
            this.$r8$classId = 5;
            this.$accumulator = ref$BooleanRef;
            this.$$this$flow = flowCollector;
            this.$operation = function2;
        }

        public AnonymousClass1(DistinctFlowImpl distinctFlowImpl, Ref$ObjectRef ref$ObjectRef, FlowCollector flowCollector) {
            this.$r8$classId = 4;
            this.$operation = distinctFlowImpl;
            this.$accumulator = ref$ObjectRef;
            this.$$this$flow = flowCollector;
        }

        public AnonymousClass1(FlowCollector flowCollector, RoomDatabase roomDatabase, Function1 function1) {
            this.$r8$classId = 3;
            this.$$this$flow = flowCollector;
            this.$accumulator = roomDatabase;
            this.$operation = function1;
        }

        public /* synthetic */ AnonymousClass1(Object obj, Object obj2, Object obj3, int i) {
            this.$r8$classId = i;
            this.$accumulator = obj;
            this.$operation = obj2;
            this.$$this$flow = obj3;
        }
    }
}
