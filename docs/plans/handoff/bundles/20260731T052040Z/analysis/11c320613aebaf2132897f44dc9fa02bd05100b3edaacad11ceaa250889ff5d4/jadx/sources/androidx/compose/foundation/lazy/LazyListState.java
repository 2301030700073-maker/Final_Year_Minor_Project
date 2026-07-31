package androidx.compose.foundation.lazy;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.gestures.DefaultScrollableState;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollDeltaBetweenPasses;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollDeltaBetweenPasses$updateScrollDeltaForApproach$2$1;
import androidx.compose.foundation.pager.PagerState$remeasurementModifier$1;
import androidx.compose.material3.TabKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.Density;
import coil3.decode.StaticImageDecoderKt;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0;
import coil3.util.AndroidSystemCallbacks;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyListState implements ScrollableState {
    public static final CardView.AnonymousClass1 Saver;
    public final LazyLayoutScrollDeltaBetweenPasses _lazyLayoutScrollDeltaBetweenPasses;
    public LazyListMeasureResult approachLayoutInfo;
    public final AwaitFirstLayoutModifier awaitLayoutModifier;
    public final LazyLayoutBeyondBoundsInfo beyondBoundsInfo;
    public final ParcelableSnapshotMutableState canScrollBackward$delegate;
    public final ParcelableSnapshotMutableState canScrollForward$delegate;
    public boolean executeRequestsInHighPriorityMode;
    public boolean hasLookaheadOccurred;
    public final MutableInteractionSourceImpl internalInteractionSource;
    public final LazyLayoutItemAnimator itemAnimator;
    public final ParcelableSnapshotMutableState layoutInfoState;
    public final MutableState measurementScopeInvalidator;
    public final LazyLayoutPinnedItemList pinnedItems;
    public final MutableState placementScopeInvalidator;
    public final PopupMenu$1 prefetchScope;
    public final LazyLayoutPrefetchState prefetchState;
    public final DefaultLazyListPrefetchStrategy prefetchStrategy;
    public final boolean prefetchingEnabled;
    public LayoutNode remeasurement;
    public final PagerState$remeasurementModifier$1 remeasurementModifier;
    public final AndroidSystemCallbacks scrollPosition;
    public float scrollToBeConsumed;
    public final DefaultScrollableState scrollableState;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        SaversKt$$ExternalSyntheticLambda0 saversKt$$ExternalSyntheticLambda0 = new SaversKt$$ExternalSyntheticLambda0(1);
        ImageKt$$ExternalSyntheticLambda0 imageKt$$ExternalSyntheticLambda0 = new ImageKt$$ExternalSyntheticLambda0(29);
        TabKt$$ExternalSyntheticLambda0 tabKt$$ExternalSyntheticLambda0 = new TabKt$$ExternalSyntheticLambda0(saversKt$$ExternalSyntheticLambda0, 7, (byte) 0);
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, imageKt$$ExternalSyntheticLambda0);
        Saver = new CardView.AnonymousClass1(13, tabKt$$ExternalSyntheticLambda0, imageKt$$ExternalSyntheticLambda0, 0 == true ? 1 : 0);
    }

    public LazyListState(int i, int i2) {
        DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = new DefaultLazyListPrefetchStrategy();
        defaultLazyListPrefetchStrategy.indexToPrefetch = -1;
        defaultLazyListPrefetchStrategy.previousPassItemCount = -1;
        this.prefetchStrategy = defaultLazyListPrefetchStrategy;
        AndroidSystemCallbacks androidSystemCallbacks = new AndroidSystemCallbacks();
        androidSystemCallbacks.imageLoader = new ParcelableSnapshotMutableIntState(i);
        androidSystemCallbacks.activityCallbacks = new ParcelableSnapshotMutableIntState(i2);
        androidSystemCallbacks.application = new LazyLayoutNearestRangeState(i);
        this.scrollPosition = androidSystemCallbacks;
        this.layoutInfoState = new ParcelableSnapshotMutableState(LazyListStateKt.EmptyLazyListMeasureResult, NeverEqualPolicy.INSTANCE);
        this.internalInteractionSource = new MutableInteractionSourceImpl();
        this.scrollableState = new DefaultScrollableState(new DiskLruCache$$ExternalSyntheticLambda0(this, 4));
        this.prefetchingEnabled = true;
        this.remeasurementModifier = new PagerState$remeasurementModifier$1(this, 1);
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.itemAnimator = new LazyLayoutItemAnimator();
        this.beyondBoundsInfo = new LazyLayoutBeyondBoundsInfo(0);
        this.prefetchState = new LazyLayoutPrefetchState(new ImageRequests_androidKt$$ExternalSyntheticLambda0(this, i));
        this.prefetchScope = new PopupMenu$1(this, 16);
        this.pinnedItems = new LazyLayoutPinnedItemList();
        this.measurementScopeInvalidator = LazyLayoutKt.m110constructorimpl$default();
        Boolean bool = Boolean.FALSE;
        this.canScrollForward$delegate = Updater.mutableStateOf$default(bool);
        this.canScrollBackward$delegate = Updater.mutableStateOf$default(bool);
        this.placementScopeInvalidator = LazyLayoutKt.m110constructorimpl$default();
        LazyLayoutScrollDeltaBetweenPasses lazyLayoutScrollDeltaBetweenPasses = new LazyLayoutScrollDeltaBetweenPasses();
        TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
        Float valueOf = Float.valueOf(0.0f);
        lazyLayoutScrollDeltaBetweenPasses._scrollDeltaBetweenPasses = new AnimationState(twoWayConverterImpl, valueOf, (AnimationVector) twoWayConverterImpl.convertToVector.invoke(valueOf), Long.MIN_VALUE, Long.MIN_VALUE, false);
        this._lazyLayoutScrollDeltaBetweenPasses = lazyLayoutScrollDeltaBetweenPasses;
    }

    public final void applyMeasureResult$foundation(LazyListMeasureResult lazyListMeasureResult, boolean z, boolean z2) {
        LazyLayoutScrollDeltaBetweenPasses lazyLayoutScrollDeltaBetweenPasses;
        long j;
        Snapshot currentThreadSnapshot;
        Function1 readObserver;
        Snapshot makeCurrentNonObservable;
        TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
        List list = lazyListMeasureResult.visibleItemsInfo;
        int i = lazyListMeasureResult.totalItemsCount;
        int i2 = lazyListMeasureResult.firstVisibleItemScrollOffset;
        LazyListMeasuredItem lazyListMeasuredItem = lazyListMeasureResult.firstVisibleItem;
        this.prefetchState.idealNestedPrefetchCount = list.size();
        LazyLayoutScrollDeltaBetweenPasses lazyLayoutScrollDeltaBetweenPasses2 = this._lazyLayoutScrollDeltaBetweenPasses;
        AndroidSystemCallbacks androidSystemCallbacks = this.scrollPosition;
        if (!z && this.hasLookaheadOccurred) {
            this.approachLayoutInfo = lazyListMeasureResult;
            currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                if (((Number) lazyLayoutScrollDeltaBetweenPasses2._scrollDeltaBetweenPasses.value$delegate.getValue()).floatValue() != 0.0f && lazyListMeasuredItem != null && lazyListMeasuredItem.index == ((ParcelableSnapshotMutableIntState) androidSystemCallbacks.imageLoader).getIntValue() && i2 == ((ParcelableSnapshotMutableIntState) androidSystemCallbacks.activityCallbacks).getIntValue()) {
                    StandaloneCoroutine standaloneCoroutine = lazyLayoutScrollDeltaBetweenPasses2.job;
                    if (standaloneCoroutine != null) {
                        standaloneCoroutine.cancel(null);
                    }
                    lazyLayoutScrollDeltaBetweenPasses2._scrollDeltaBetweenPasses = new AnimationState(twoWayConverterImpl, Float.valueOf(0.0f), null, 60);
                }
                return;
            } finally {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            }
        }
        if (z) {
            this.hasLookaheadOccurred = true;
        }
        this.canScrollBackward$delegate.setValue(Boolean.valueOf(((lazyListMeasuredItem != null ? lazyListMeasuredItem.index : 0) == 0 && i2 == 0) ? false : true));
        this.canScrollForward$delegate.setValue(Boolean.valueOf(lazyListMeasureResult.canScrollForward));
        this.scrollToBeConsumed -= lazyListMeasureResult.consumedScroll;
        this.layoutInfoState.setValue(lazyListMeasureResult);
        if (z2) {
            androidSystemCallbacks.getClass();
            if (i2 < 0.0f) {
                InlineClassHelperKt.throwIllegalStateException("scrollOffset should be non-negative");
            }
            ((ParcelableSnapshotMutableIntState) androidSystemCallbacks.activityCallbacks).setIntValue(i2);
            lazyLayoutScrollDeltaBetweenPasses = lazyLayoutScrollDeltaBetweenPasses2;
        } else {
            LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) CollectionsKt.firstOrNull(list);
            LazyListMeasuredItem lazyListMeasuredItem3 = (LazyListMeasuredItem) CollectionsKt.lastOrNull(list);
            if (lazyListMeasuredItem2 != null) {
                lazyLayoutScrollDeltaBetweenPasses = lazyLayoutScrollDeltaBetweenPasses2;
                j = lazyListMeasuredItem2.index;
            } else {
                lazyLayoutScrollDeltaBetweenPasses = lazyLayoutScrollDeltaBetweenPasses2;
                j = -1;
            }
            StaticImageDecoderKt.traceValue("firstVisibleItem:index", j);
            StaticImageDecoderKt.traceValue("lastVisibleItem:index", lazyListMeasuredItem3 != null ? lazyListMeasuredItem3.index : -1L);
            androidSystemCallbacks.getClass();
            androidSystemCallbacks.componentCallbacks = lazyListMeasuredItem != null ? lazyListMeasuredItem.key : null;
            if (androidSystemCallbacks.shutdown || i > 0) {
                androidSystemCallbacks.shutdown = true;
                if (i2 < 0.0f) {
                    InlineClassHelperKt.throwIllegalStateException("scrollOffset should be non-negative");
                }
                androidSystemCallbacks.update(lazyListMeasuredItem != null ? lazyListMeasuredItem.index : 0, i2);
            }
            if (this.prefetchingEnabled) {
                DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = this.prefetchStrategy;
                int i3 = defaultLazyListPrefetchStrategy.indexToPrefetch;
                boolean z3 = defaultLazyListPrefetchStrategy.wasScrollingForward;
                if (i3 != -1 && !list.isEmpty() && i3 != DefaultLazyListPrefetchStrategy.calculateIndexToPrefetch(lazyListMeasureResult, z3)) {
                    defaultLazyListPrefetchStrategy.indexToPrefetch = -1;
                    LazyLayoutPrefetchState.PrefetchHandle prefetchHandle = defaultLazyListPrefetchStrategy.currentPrefetchHandle;
                    if (prefetchHandle != null) {
                        prefetchHandle.cancel();
                    }
                    defaultLazyListPrefetchStrategy.currentPrefetchHandle = null;
                }
                int i4 = defaultLazyListPrefetchStrategy.previousPassItemCount;
                if (i4 != -1 && defaultLazyListPrefetchStrategy.previousPassDelta != 0.0f && i4 != i && !list.isEmpty()) {
                    int calculateIndexToPrefetch = DefaultLazyListPrefetchStrategy.calculateIndexToPrefetch(lazyListMeasureResult, defaultLazyListPrefetchStrategy.previousPassDelta < 0.0f);
                    if (calculateIndexToPrefetch >= 0 && calculateIndexToPrefetch < i) {
                        defaultLazyListPrefetchStrategy.indexToPrefetch = calculateIndexToPrefetch;
                        defaultLazyListPrefetchStrategy.currentPrefetchHandle = Modifier.CC.schedulePrefetch$default(this.prefetchScope, calculateIndexToPrefetch);
                    }
                }
                defaultLazyListPrefetchStrategy.previousPassItemCount = i;
            }
        }
        if (z) {
            float f = lazyListMeasureResult.scrollBackAmount;
            Density density = lazyListMeasureResult.density;
            CoroutineScope coroutineScope = lazyListMeasureResult.coroutineScope;
            lazyLayoutScrollDeltaBetweenPasses.getClass();
            if (f <= density.mo63toPx0680j_4(1.0f)) {
                return;
            }
            currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            LazyLayoutScrollDeltaBetweenPasses lazyLayoutScrollDeltaBetweenPasses3 = lazyLayoutScrollDeltaBetweenPasses;
            try {
                float floatValue = ((Number) lazyLayoutScrollDeltaBetweenPasses3._scrollDeltaBetweenPasses.value$delegate.getValue()).floatValue();
                StandaloneCoroutine standaloneCoroutine2 = lazyLayoutScrollDeltaBetweenPasses3.job;
                if (standaloneCoroutine2 != null) {
                    standaloneCoroutine2.cancel(null);
                }
                AnimationState animationState = lazyLayoutScrollDeltaBetweenPasses3._scrollDeltaBetweenPasses;
                if (animationState.isRunning) {
                    lazyLayoutScrollDeltaBetweenPasses3._scrollDeltaBetweenPasses = ArcSplineKt.copy$default(animationState, floatValue - f, 0.0f, 30);
                } else {
                    lazyLayoutScrollDeltaBetweenPasses3._scrollDeltaBetweenPasses = new AnimationState(twoWayConverterImpl, Float.valueOf(-f), null, 60);
                }
                lazyLayoutScrollDeltaBetweenPasses3.job = JobKt.launch$default(coroutineScope, null, null, new LazyLayoutScrollDeltaBetweenPasses$updateScrollDeltaForApproach$2$1(lazyLayoutScrollDeltaBetweenPasses3, null), 3);
            } finally {
            }
        }
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float dispatchRawDelta(float f) {
        return this.scrollableState.dispatchRawDelta(f);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean getCanScrollBackward() {
        return ((Boolean) this.canScrollBackward$delegate.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean getCanScrollForward() {
        return ((Boolean) this.canScrollForward$delegate.getValue()).booleanValue();
    }

    public final LazyListMeasureResult getLayoutInfo() {
        return (LazyListMeasureResult) this.layoutInfoState.getValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    public final void notifyPrefetchOnScroll(float f, LazyListMeasureResult lazyListMeasureResult) {
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle;
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle2;
        if (this.prefetchingEnabled) {
            boolean isEmpty = lazyListMeasureResult.visibleItemsInfo.isEmpty();
            DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = this.prefetchStrategy;
            if (!isEmpty) {
                boolean z = f < 0.0f;
                int calculateIndexToPrefetch = DefaultLazyListPrefetchStrategy.calculateIndexToPrefetch(lazyListMeasureResult, z);
                if (calculateIndexToPrefetch >= 0 && calculateIndexToPrefetch < lazyListMeasureResult.totalItemsCount) {
                    if (calculateIndexToPrefetch != defaultLazyListPrefetchStrategy.indexToPrefetch) {
                        if (defaultLazyListPrefetchStrategy.wasScrollingForward != z) {
                            defaultLazyListPrefetchStrategy.indexToPrefetch = -1;
                            LazyLayoutPrefetchState.PrefetchHandle prefetchHandle3 = defaultLazyListPrefetchStrategy.currentPrefetchHandle;
                            if (prefetchHandle3 != null) {
                                prefetchHandle3.cancel();
                            }
                            defaultLazyListPrefetchStrategy.currentPrefetchHandle = null;
                        }
                        defaultLazyListPrefetchStrategy.wasScrollingForward = z;
                        defaultLazyListPrefetchStrategy.indexToPrefetch = calculateIndexToPrefetch;
                        defaultLazyListPrefetchStrategy.currentPrefetchHandle = Modifier.CC.schedulePrefetch$default(this.prefetchScope, calculateIndexToPrefetch);
                    }
                    List list = lazyListMeasureResult.visibleItemsInfo;
                    if (z) {
                        LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) CollectionsKt.last(list);
                        if (((lazyListMeasuredItem.offset + lazyListMeasuredItem.size) + lazyListMeasureResult.mainAxisItemSpacing) - lazyListMeasureResult.viewportEndOffset < (-f) && (prefetchHandle2 = defaultLazyListPrefetchStrategy.currentPrefetchHandle) != null) {
                            prefetchHandle2.markAsUrgent();
                        }
                    } else if (lazyListMeasureResult.viewportStartOffset - ((LazyListMeasuredItem) CollectionsKt.first(list)).offset < f && (prefetchHandle = defaultLazyListPrefetchStrategy.currentPrefetchHandle) != null) {
                        prefetchHandle.markAsUrgent();
                    }
                }
            }
            defaultLazyListPrefetchStrategy.previousPassDelta = f;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0066, code lost:
    
        if (r6.scrollableState.scroll(r7, r8, r0) != r5) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0057, code lost:
    
        if (r6.awaitLayoutModifier.waitForFirstLayout(r0) == r5) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object scroll(androidx.compose.foundation.MutatePriority r7, kotlin.jvm.functions.Function2 r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.foundation.lazy.LazyListState$scroll$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.lazy.LazyListState$scroll$1 r0 = (androidx.compose.foundation.lazy.LazyListState$scroll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.lazy.LazyListState$scroll$1 r0 = new androidx.compose.foundation.lazy.LazyListState$scroll$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3e
            if (r1 == r4) goto L31
            if (r1 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r9)
            goto L69
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            return r2
        L31:
            java.lang.Object r7 = r0.L$1
            r8 = r7
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            java.lang.Object r7 = r0.L$0
            androidx.compose.foundation.MutatePriority r7 = (androidx.compose.foundation.MutatePriority) r7
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5a
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.runtime.ParcelableSnapshotMutableState r9 = r6.layoutInfoState
            java.lang.Object r9 = r9.getValue()
            androidx.compose.foundation.lazy.LazyListMeasureResult r1 = androidx.compose.foundation.lazy.LazyListStateKt.EmptyLazyListMeasureResult
            if (r9 != r1) goto L5a
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r4
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier r9 = r6.awaitLayoutModifier
            java.lang.Object r9 = r9.waitForFirstLayout(r0)
            if (r9 != r5) goto L5a
            goto L68
        L5a:
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            androidx.compose.foundation.gestures.DefaultScrollableState r6 = r6.scrollableState
            java.lang.Object r6 = r6.scroll(r7, r8, r0)
            if (r6 != r5) goto L69
        L68:
            return r5
        L69:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListState.scroll(androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
