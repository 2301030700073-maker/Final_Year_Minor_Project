package androidx.compose.foundation.lazy;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DefaultScrollableState;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.pager.PagerState$remeasurementModifier$1;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyListState implements ScrollableState {
    public static final CardView.AnonymousClass1 Saver = SaverKt.listSaver(new SaversKt$$ExternalSyntheticLambda0(2), new BasicTextKt$$ExternalSyntheticLambda3(14));
    public final CardView.AnonymousClass1 _lazyLayoutScrollDeltaBetweenPasses;
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
    public final LazyListScrollPosition scrollPosition;
    public float scrollToBeConsumed;
    public final DefaultScrollableState scrollableState;
    public boolean skipItemPlacementAnimation;

    public LazyListState(int i, int i2) {
        DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = new DefaultLazyListPrefetchStrategy();
        defaultLazyListPrefetchStrategy.indexToPrefetch = -1;
        defaultLazyListPrefetchStrategy.previousPassItemCount = -1;
        this.prefetchStrategy = defaultLazyListPrefetchStrategy;
        this.scrollPosition = new LazyListScrollPosition(i, i2, 0);
        this.layoutInfoState = new ParcelableSnapshotMutableState(LazyListStateKt.EmptyLazyListMeasureResult, NeverEqualPolicy.INSTANCE);
        this.internalInteractionSource = new MutableInteractionSourceImpl();
        this.scrollableState = new DefaultScrollableState(new AppBarKt$$ExternalSyntheticLambda11(10, this));
        this.prefetchingEnabled = true;
        this.remeasurementModifier = new PagerState$remeasurementModifier$1(this, 1);
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.itemAnimator = new LazyLayoutItemAnimator();
        this.beyondBoundsInfo = new LazyLayoutBeyondBoundsInfo(0);
        this.prefetchState = new LazyLayoutPrefetchState(new ImageRequests_androidKt$$ExternalSyntheticLambda0(this, i));
        this.prefetchScope = new PopupMenu$1(17, this);
        this.pinnedItems = new LazyLayoutPinnedItemList();
        this.measurementScopeInvalidator = LazyLayoutKt.m166constructorimpl$default();
        Boolean bool = Boolean.FALSE;
        this.canScrollForward$delegate = Updater.mutableStateOf$default(bool);
        this.canScrollBackward$delegate = Updater.mutableStateOf$default(bool);
        this.placementScopeInvalidator = LazyLayoutKt.m166constructorimpl$default();
        this._lazyLayoutScrollDeltaBetweenPasses = new CardView.AnonymousClass1(5);
    }

    public static Object scrollToItem$default(LazyListState lazyListState, int i, Continuation continuation) {
        lazyListState.getClass();
        Object scroll = lazyListState.scroll(MutatePriority.Default, new ThumbNode$onAttach$1(lazyListState, i, null, 6), continuation);
        return scroll == CoroutineSingletons.COROUTINE_SUSPENDED ? scroll : Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object, kotlin.Unit] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object animateScrollToItem(int r7, int r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.foundation.lazy.LazyListState$animateScrollToItem$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.lazy.LazyListState$animateScrollToItem$1 r0 = (androidx.compose.foundation.lazy.LazyListState$animateScrollToItem$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.lazy.LazyListState$animateScrollToItem$1 r0 = new androidx.compose.foundation.lazy.LazyListState$animateScrollToItem$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L31
            if (r2 != r5) goto L2b
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L29
            goto L46
        L29:
            r7 = move-exception
            goto L4b
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L31:
            kotlin.ResultKt.throwOnFailure(r9)
            r6.skipItemPlacementAnimation = r5     // Catch: java.lang.Throwable -> L29
            androidx.compose.foundation.lazy.LazyListState$animateScrollToItem$2 r9 = new androidx.compose.foundation.lazy.LazyListState$animateScrollToItem$2     // Catch: java.lang.Throwable -> L29
            r9.<init>(r6, r7, r8, r3)     // Catch: java.lang.Throwable -> L29
            r0.label = r5     // Catch: java.lang.Throwable -> L29
            androidx.compose.foundation.MutatePriority r7 = androidx.compose.foundation.MutatePriority.Default     // Catch: java.lang.Throwable -> L29
            java.lang.Object r7 = r6.scroll(r7, r9, r0)     // Catch: java.lang.Throwable -> L29
            if (r7 != r1) goto L46
            return r1
        L46:
            r6.skipItemPlacementAnimation = r4
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L4b:
            r6.skipItemPlacementAnimation = r4
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListState.animateScrollToItem(int, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void applyMeasureResult$foundation(LazyListMeasureResult lazyListMeasureResult, boolean z, boolean z2) {
        String str;
        long j;
        List list = lazyListMeasureResult.visibleItemsInfo;
        int i = lazyListMeasureResult.totalItemsCount;
        int i2 = lazyListMeasureResult.firstVisibleItemScrollOffset;
        LazyListMeasuredItem lazyListMeasuredItem = lazyListMeasureResult.firstVisibleItem;
        this.prefetchState.idealNestedPrefetchCount = list.size();
        CardView.AnonymousClass1 anonymousClass1 = this._lazyLayoutScrollDeltaBetweenPasses;
        LazyListScrollPosition lazyListScrollPosition = this.scrollPosition;
        if (!z && this.hasLookaheadOccurred) {
            this.approachLayoutInfo = lazyListMeasureResult;
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                if (anonymousClass1.isActive$foundation() && lazyListMeasuredItem != null && lazyListMeasuredItem.index == lazyListScrollPosition.index$delegate.getIntValue() && i2 == lazyListScrollPosition.scrollOffset$delegate.getIntValue()) {
                    anonymousClass1.stop$foundation();
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
            lazyListScrollPosition.getClass();
            if (i2 < RecyclerView.DECELERATION_RATE) {
                InlineClassHelperKt.throwIllegalStateException("scrollOffset should be non-negative");
            }
            lazyListScrollPosition.scrollOffset$delegate.setIntValue(i2);
        } else {
            LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) CollectionsKt.firstOrNull(list);
            LazyListMeasuredItem lazyListMeasuredItem3 = (LazyListMeasuredItem) CollectionsKt.lastOrNull(list);
            if (lazyListMeasuredItem2 != null) {
                str = "scrollOffset should be non-negative";
                j = lazyListMeasuredItem2.index;
            } else {
                str = "scrollOffset should be non-negative";
                j = -1;
            }
            FileUtil.traceValue("firstVisibleItem:index", j);
            FileUtil.traceValue("lastVisibleItem:index", lazyListMeasuredItem3 != null ? lazyListMeasuredItem3.index : -1L);
            lazyListScrollPosition.getClass();
            lazyListScrollPosition.lastKnownFirstItemKey = lazyListMeasuredItem != null ? lazyListMeasuredItem.key : null;
            if (lazyListScrollPosition.hadFirstNotEmptyLayout || i > 0) {
                lazyListScrollPosition.hadFirstNotEmptyLayout = true;
                if (i2 < RecyclerView.DECELERATION_RATE) {
                    InlineClassHelperKt.throwIllegalStateException(str);
                }
                lazyListScrollPosition.update(lazyListMeasuredItem != null ? lazyListMeasuredItem.index : 0, i2);
            }
            if (this.prefetchingEnabled) {
                DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = this.prefetchStrategy;
                int i3 = defaultLazyListPrefetchStrategy.indexToPrefetch;
                boolean z3 = defaultLazyListPrefetchStrategy.wasScrollingForward;
                if (i3 != -1 && !list.isEmpty() && i3 != DefaultLazyListPrefetchStrategy.calculateIndexToPrefetch(lazyListMeasureResult, z3)) {
                    defaultLazyListPrefetchStrategy.indexToPrefetch = -1;
                    LazyLayoutPrefetchState.PrefetchHandle prefetchHandle = (LazyLayoutPrefetchState.PrefetchHandle) defaultLazyListPrefetchStrategy.currentPrefetchHandle;
                    if (prefetchHandle != null) {
                        prefetchHandle.cancel();
                    }
                    defaultLazyListPrefetchStrategy.currentPrefetchHandle = null;
                }
                int i4 = defaultLazyListPrefetchStrategy.previousPassItemCount;
                if (i4 != -1 && defaultLazyListPrefetchStrategy.previousPassDelta != RecyclerView.DECELERATION_RATE && i4 != i && !list.isEmpty()) {
                    int calculateIndexToPrefetch = DefaultLazyListPrefetchStrategy.calculateIndexToPrefetch(lazyListMeasureResult, defaultLazyListPrefetchStrategy.previousPassDelta < RecyclerView.DECELERATION_RATE);
                    if (calculateIndexToPrefetch >= 0 && calculateIndexToPrefetch < i) {
                        defaultLazyListPrefetchStrategy.indexToPrefetch = calculateIndexToPrefetch;
                        defaultLazyListPrefetchStrategy.currentPrefetchHandle = LazyItemScope$CC.schedulePrefetch$default(this.prefetchScope, calculateIndexToPrefetch);
                    }
                }
                defaultLazyListPrefetchStrategy.previousPassItemCount = i;
            }
        }
        if (z) {
            anonymousClass1.updateScrollDeltaForApproach$foundation(lazyListMeasureResult.scrollBackAmount, lazyListMeasureResult.density, lazyListMeasureResult.coroutineScope);
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

    public final int getFirstVisibleItemIndex() {
        return this.scrollPosition.index$delegate.getIntValue();
    }

    public final int getFirstVisibleItemScrollOffset() {
        return this.scrollPosition.scrollOffset$delegate.getIntValue();
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
                boolean z = f < RecyclerView.DECELERATION_RATE;
                int calculateIndexToPrefetch = DefaultLazyListPrefetchStrategy.calculateIndexToPrefetch(lazyListMeasureResult, z);
                if (calculateIndexToPrefetch >= 0 && calculateIndexToPrefetch < lazyListMeasureResult.totalItemsCount) {
                    if (calculateIndexToPrefetch != defaultLazyListPrefetchStrategy.indexToPrefetch) {
                        if (defaultLazyListPrefetchStrategy.wasScrollingForward != z) {
                            defaultLazyListPrefetchStrategy.indexToPrefetch = -1;
                            LazyLayoutPrefetchState.PrefetchHandle prefetchHandle3 = (LazyLayoutPrefetchState.PrefetchHandle) defaultLazyListPrefetchStrategy.currentPrefetchHandle;
                            if (prefetchHandle3 != null) {
                                prefetchHandle3.cancel();
                            }
                            defaultLazyListPrefetchStrategy.currentPrefetchHandle = null;
                        }
                        defaultLazyListPrefetchStrategy.wasScrollingForward = z;
                        defaultLazyListPrefetchStrategy.indexToPrefetch = calculateIndexToPrefetch;
                        defaultLazyListPrefetchStrategy.currentPrefetchHandle = LazyItemScope$CC.schedulePrefetch$default(this.prefetchScope, calculateIndexToPrefetch);
                    }
                    List list = lazyListMeasureResult.visibleItemsInfo;
                    if (z) {
                        LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) CollectionsKt.last(list);
                        if (((lazyListMeasuredItem.offset + lazyListMeasuredItem.size) + lazyListMeasureResult.mainAxisItemSpacing) - lazyListMeasureResult.viewportEndOffset < (-f) && (prefetchHandle2 = (LazyLayoutPrefetchState.PrefetchHandle) defaultLazyListPrefetchStrategy.currentPrefetchHandle) != null) {
                            prefetchHandle2.markAsUrgent();
                        }
                    } else if (lazyListMeasureResult.viewportStartOffset - ((LazyListMeasuredItem) CollectionsKt.first(list)).offset < f && (prefetchHandle = (LazyLayoutPrefetchState.PrefetchHandle) defaultLazyListPrefetchStrategy.currentPrefetchHandle) != null) {
                        prefetchHandle.markAsUrgent();
                    }
                }
            }
            defaultLazyListPrefetchStrategy.previousPassDelta = f;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0067, code lost:
    
        if (r6.scrollableState.scroll(r7, r8, r0) != r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0069, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0058, code lost:
    
        if (r6.awaitLayoutModifier.waitForFirstLayout(r0) == r1) goto L23;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object scroll(androidx.compose.foundation.MutatePriority r7, kotlin.jvm.functions.Function2 r8, kotlin.coroutines.Continuation r9) {
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
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3c
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6a
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L31:
            kotlin.coroutines.jvm.internal.SuspendLambda r7 = r0.L$1
            r8 = r7
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            androidx.compose.foundation.MutatePriority r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5b
        L3c:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.runtime.ParcelableSnapshotMutableState r9 = r6.layoutInfoState
            java.lang.Object r9 = r9.getValue()
            androidx.compose.foundation.lazy.LazyListMeasureResult r2 = androidx.compose.foundation.lazy.LazyListStateKt.EmptyLazyListMeasureResult
            if (r9 != r2) goto L5b
            r0.L$0 = r7
            r9 = r8
            kotlin.coroutines.jvm.internal.SuspendLambda r9 = (kotlin.coroutines.jvm.internal.SuspendLambda) r9
            r0.L$1 = r9
            r0.label = r5
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier r9 = r6.awaitLayoutModifier
            java.lang.Object r9 = r9.waitForFirstLayout(r0)
            if (r9 != r1) goto L5b
            goto L69
        L5b:
            r0.L$0 = r3
            r0.L$1 = r3
            r0.label = r4
            androidx.compose.foundation.gestures.DefaultScrollableState r6 = r6.scrollableState
            java.lang.Object r6 = r6.scroll(r7, r8, r0)
            if (r6 != r1) goto L6a
        L69:
            return r1
        L6a:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListState.scroll(androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void snapToItemIndexInternal$foundation(int i, int i2) {
        LazyListScrollPosition lazyListScrollPosition = this.scrollPosition;
        if (lazyListScrollPosition.index$delegate.getIntValue() != i || lazyListScrollPosition.scrollOffset$delegate.getIntValue() != i2) {
            LazyLayoutItemAnimator lazyLayoutItemAnimator = this.itemAnimator;
            lazyLayoutItemAnimator.releaseAnimations();
            lazyLayoutItemAnimator.keyIndexMap = null;
            lazyLayoutItemAnimator.firstVisibleIndex = -1;
        }
        lazyListScrollPosition.update(i, i2);
        lazyListScrollPosition.lastKnownFirstItemKey = null;
        LayoutNode layoutNode = this.remeasurement;
        if (layoutNode != null) {
            layoutNode.forceRemeasure();
        }
    }
}
