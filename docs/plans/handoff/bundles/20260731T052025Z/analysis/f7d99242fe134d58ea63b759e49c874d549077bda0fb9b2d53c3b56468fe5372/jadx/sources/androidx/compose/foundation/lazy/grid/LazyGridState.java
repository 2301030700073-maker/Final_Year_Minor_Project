package androidx.compose.foundation.lazy.grid;

import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.camera.view.PreviewView;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.gestures.DefaultScrollableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.DefaultLazyListPrefetchStrategy;
import androidx.compose.foundation.lazy.LazyListScrollPosition;
import androidx.compose.foundation.lazy.LazyListState$remeasurementModifier$1;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.room.util.RelationUtil;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyGridState implements ScrollableState {
    public static final WeakCache Saver = SaverKt.listSaver(new SaversKt$$ExternalSyntheticLambda0(4), new ScrollState$$ExternalSyntheticLambda4(13));
    public final CardView.AnonymousClass1 _lazyLayoutScrollDeltaBetweenPasses;
    public LazyGridMeasureResult approachLayoutInfo;
    public final AwaitFirstLayoutModifier awaitLayoutModifier;
    public final LazyLayoutBeyondBoundsInfo beyondBoundsInfo;
    public final ParcelableSnapshotMutableState canScrollBackward$delegate;
    public final ParcelableSnapshotMutableState canScrollForward$delegate;
    public boolean hasLookaheadOccurred;
    public final MutableInteractionSourceImpl internalInteractionSource;
    public final LazyLayoutItemAnimator itemAnimator;
    public final ParcelableSnapshotMutableState layoutInfoState;
    public final MutableState measurementScopeInvalidator;
    public final LazyLayoutPinnedItemList pinnedItems;
    public final MutableState placementScopeInvalidator;
    public final PreviewView.AnonymousClass1 prefetchScope;
    public final LazyLayoutPrefetchState prefetchState;
    public final DefaultLazyListPrefetchStrategy prefetchStrategy;
    public final boolean prefetchingEnabled;
    public LayoutNode remeasurement;
    public final LazyListState$remeasurementModifier$1 remeasurementModifier;
    public final LazyListScrollPosition scrollPosition;
    public float scrollToBeConsumed;
    public final DefaultScrollableState scrollableState;

    public LazyGridState(int i, int i2) {
        DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = new DefaultLazyListPrefetchStrategy();
        defaultLazyListPrefetchStrategy.indexToPrefetch = -1;
        defaultLazyListPrefetchStrategy.currentPrefetchHandle = new MutableVector(new LazyLayoutPrefetchState.PrefetchHandle[16]);
        defaultLazyListPrefetchStrategy.previousPassItemCount = -1;
        this.prefetchStrategy = defaultLazyListPrefetchStrategy;
        this.scrollPosition = new LazyListScrollPosition(i, i2, 1);
        this.layoutInfoState = new ParcelableSnapshotMutableState(LazyGridStateKt.EmptyLazyGridLayoutInfo, NeverEqualPolicy.INSTANCE);
        this.internalInteractionSource = new MutableInteractionSourceImpl();
        this.scrollableState = new DefaultScrollableState(new TorchControl$$ExternalSyntheticLambda1(17, this));
        this.prefetchingEnabled = true;
        this.remeasurementModifier = new LazyListState$remeasurementModifier$1(this, 1);
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.itemAnimator = new LazyLayoutItemAnimator();
        this.beyondBoundsInfo = new LazyLayoutBeyondBoundsInfo(0);
        this.prefetchState = new LazyLayoutPrefetchState(new LazyGridState$$ExternalSyntheticLambda1(this, i));
        this.prefetchScope = new PreviewView.AnonymousClass1(13, this);
        this.pinnedItems = new LazyLayoutPinnedItemList();
        this.placementScopeInvalidator = LazyLayoutKt.m256constructorimpl$default();
        this.measurementScopeInvalidator = LazyLayoutKt.m256constructorimpl$default();
        Boolean bool = Boolean.FALSE;
        this.canScrollForward$delegate = Updater.mutableStateOf$default(bool);
        this.canScrollBackward$delegate = Updater.mutableStateOf$default(bool);
        this._lazyLayoutScrollDeltaBetweenPasses = new CardView.AnonymousClass1(23);
    }

    public final void applyMeasureResult$foundation(LazyGridMeasureResult lazyGridMeasureResult, boolean z, boolean z2) {
        LazyGridMeasuredItem lazyGridMeasuredItem;
        LazyGridMeasuredItem lazyGridMeasuredItem2;
        LazyGridMeasuredItem lazyGridMeasuredItem3;
        List list = lazyGridMeasureResult.visibleItemsInfo;
        int i = lazyGridMeasureResult.totalItemsCount;
        LazyGridMeasuredLine lazyGridMeasuredLine = lazyGridMeasureResult.firstVisibleLine;
        int i2 = lazyGridMeasureResult.firstVisibleLineScrollOffset;
        this.prefetchState.idealNestedPrefetchCount = list.size();
        Object obj = null;
        obj = null;
        LazyListScrollPosition lazyListScrollPosition = this.scrollPosition;
        CardView.AnonymousClass1 anonymousClass1 = this._lazyLayoutScrollDeltaBetweenPasses;
        if (!z && this.hasLookaheadOccurred) {
            this.approachLayoutInfo = lazyGridMeasureResult;
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                if (!(((Number) ((AnimationState) anonymousClass1.this$0).value$delegate.getValue()).floatValue() == 0.0f) && i2 == lazyListScrollPosition.scrollOffset$delegate.getIntValue() && lazyGridMeasuredLine != null && (lazyGridMeasuredItem3 = (LazyGridMeasuredItem) ArraysKt___ArraysKt.firstOrNull(lazyGridMeasuredLine.items)) != null && lazyGridMeasuredItem3.index == lazyListScrollPosition.index$delegate.getIntValue()) {
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
        this.scrollToBeConsumed -= lazyGridMeasureResult.consumedScroll;
        this.layoutInfoState.setValue(lazyGridMeasureResult);
        this.canScrollBackward$delegate.setValue(Boolean.valueOf(((lazyGridMeasuredLine != null ? lazyGridMeasuredLine.index : 0) == 0 && i2 == 0) ? false : true));
        this.canScrollForward$delegate.setValue(Boolean.valueOf(lazyGridMeasureResult.canScrollForward));
        if (z2) {
            lazyListScrollPosition.getClass();
            if (i2 < 0.0f) {
                InlineClassHelperKt.throwIllegalStateException("scrollOffset should be non-negative");
            }
            lazyListScrollPosition.scrollOffset$delegate.setIntValue(i2);
        } else {
            lazyListScrollPosition.getClass();
            if (lazyGridMeasuredLine != null && (lazyGridMeasuredItem2 = (LazyGridMeasuredItem) ArraysKt___ArraysKt.firstOrNull(lazyGridMeasuredLine.items)) != null) {
                obj = lazyGridMeasuredItem2.key;
            }
            lazyListScrollPosition.lastKnownFirstItemKey = obj;
            if (lazyListScrollPosition.hadFirstNotEmptyLayout || i > 0) {
                lazyListScrollPosition.hadFirstNotEmptyLayout = true;
                if (i2 < 0.0f) {
                    InlineClassHelperKt.throwIllegalStateException("scrollOffset should be non-negative (" + i2 + ')');
                }
                lazyListScrollPosition.update((lazyGridMeasuredLine == null || (lazyGridMeasuredItem = (LazyGridMeasuredItem) ArraysKt___ArraysKt.firstOrNull(lazyGridMeasuredLine.items)) == null) ? 0 : lazyGridMeasuredItem.index, i2);
            }
            if (this.prefetchingEnabled) {
                DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = this.prefetchStrategy;
                MutableVector mutableVector = (MutableVector) defaultLazyListPrefetchStrategy.currentPrefetchHandle;
                int i3 = defaultLazyListPrefetchStrategy.indexToPrefetch;
                boolean z3 = defaultLazyListPrefetchStrategy.wasScrollingForward;
                if (i3 != -1 && !list.isEmpty() && i3 != DefaultLazyListPrefetchStrategy.calculateLineIndexToPrefetch(lazyGridMeasureResult, z3)) {
                    defaultLazyListPrefetchStrategy.indexToPrefetch = -1;
                    Object[] objArr = mutableVector.content;
                    int i4 = mutableVector.size;
                    for (int i5 = 0; i5 < i4; i5++) {
                        ((LazyLayoutPrefetchState.PrefetchHandle) objArr[i5]).cancel();
                    }
                    mutableVector.clear();
                }
                int i6 = defaultLazyListPrefetchStrategy.previousPassItemCount;
                if (i6 != -1 && defaultLazyListPrefetchStrategy.previousPassDelta != 0.0f && i6 != i && !list.isEmpty()) {
                    int calculateLineIndexToPrefetch = DefaultLazyListPrefetchStrategy.calculateLineIndexToPrefetch(lazyGridMeasureResult, defaultLazyListPrefetchStrategy.previousPassDelta < 0.0f);
                    int i7 = defaultLazyListPrefetchStrategy.previousPassDelta < 0.0f ? ((LazyGridMeasuredItem) CollectionsKt.last(list)).index + 1 : ((LazyGridMeasuredItem) CollectionsKt.first(list)).index - 1;
                    if (i7 >= 0 && i7 < i && calculateLineIndexToPrefetch != defaultLazyListPrefetchStrategy.indexToPrefetch && calculateLineIndexToPrefetch >= 0) {
                        defaultLazyListPrefetchStrategy.indexToPrefetch = calculateLineIndexToPrefetch;
                        mutableVector.clear();
                        mutableVector.addAll(mutableVector.size, (List) this.prefetchScope.scheduleLinePrefetch(calculateLineIndexToPrefetch));
                    }
                }
                defaultLazyListPrefetchStrategy.previousPassItemCount = i;
            }
        }
        if (z) {
            anonymousClass1.updateScrollDeltaForApproach$foundation(lazyGridMeasureResult.scrollBackAmount, lazyGridMeasureResult.density, lazyGridMeasureResult.coroutineScope);
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

    public final LazyGridMeasureResult getLayoutInfo() {
        return (LazyGridMeasureResult) this.layoutInfoState.getValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    public final void notifyPrefetchOnScroll(float f, LazyGridMeasureResult lazyGridMeasureResult) {
        if (this.prefetchingEnabled) {
            DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = this.prefetchStrategy;
            MutableVector mutableVector = (MutableVector) defaultLazyListPrefetchStrategy.currentPrefetchHandle;
            List list = lazyGridMeasureResult.visibleItemsInfo;
            List list2 = lazyGridMeasureResult.visibleItemsInfo;
            Orientation orientation = lazyGridMeasureResult.orientation;
            if (!list.isEmpty()) {
                int i = 0;
                boolean z = f < 0.0f;
                int calculateLineIndexToPrefetch = DefaultLazyListPrefetchStrategy.calculateLineIndexToPrefetch(lazyGridMeasureResult, z);
                int i2 = z ? ((LazyGridMeasuredItem) CollectionsKt.last(list2)).index + 1 : ((LazyGridMeasuredItem) CollectionsKt.first(list2)).index - 1;
                if (i2 >= 0 && i2 < lazyGridMeasureResult.totalItemsCount) {
                    if (calculateLineIndexToPrefetch != defaultLazyListPrefetchStrategy.indexToPrefetch && calculateLineIndexToPrefetch >= 0) {
                        if (defaultLazyListPrefetchStrategy.wasScrollingForward != z) {
                            Object[] objArr = mutableVector.content;
                            int i3 = mutableVector.size;
                            for (int i4 = 0; i4 < i3; i4++) {
                                ((LazyLayoutPrefetchState.PrefetchHandle) objArr[i4]).cancel();
                            }
                        }
                        defaultLazyListPrefetchStrategy.wasScrollingForward = z;
                        defaultLazyListPrefetchStrategy.indexToPrefetch = calculateLineIndexToPrefetch;
                        mutableVector.clear();
                        mutableVector.addAll(mutableVector.size, (List) this.prefetchScope.scheduleLinePrefetch(calculateLineIndexToPrefetch));
                    }
                    if (z) {
                        LazyGridMeasuredItem lazyGridMeasuredItem = (LazyGridMeasuredItem) CollectionsKt.last(list2);
                        if (((RelationUtil.offsetOnMainAxis(lazyGridMeasuredItem, orientation) + ((int) (orientation == Orientation.Vertical ? lazyGridMeasuredItem.size & 4294967295L : lazyGridMeasuredItem.size >> 32))) + lazyGridMeasureResult.mainAxisItemSpacing) - lazyGridMeasureResult.viewportEndOffset < (-f)) {
                            Object[] objArr2 = mutableVector.content;
                            int i5 = mutableVector.size;
                            while (i < i5) {
                                ((LazyLayoutPrefetchState.PrefetchHandle) objArr2[i]).markAsUrgent();
                                i++;
                            }
                        }
                    } else if (lazyGridMeasureResult.viewportStartOffset - RelationUtil.offsetOnMainAxis((LazyGridMeasuredItem) CollectionsKt.first(list2), orientation) < f) {
                        Object[] objArr3 = mutableVector.content;
                        int i6 = mutableVector.size;
                        while (i < i6) {
                            ((LazyLayoutPrefetchState.PrefetchHandle) objArr3[i]).markAsUrgent();
                            i++;
                        }
                    }
                }
            }
            defaultLazyListPrefetchStrategy.previousPassDelta = f;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0067, code lost:
    
        if (r6.scrollableState.scroll(r7, r8, r0) != r5) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0069, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0058, code lost:
    
        if (r6.awaitLayoutModifier.waitForFirstLayout(r0) == r5) goto L23;
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
            boolean r0 = r9 instanceof androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1 r0 = (androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1 r0 = new androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3c
            if (r1 == r4) goto L31
            if (r1 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6a
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
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
            androidx.compose.foundation.lazy.grid.LazyGridMeasureResult r1 = androidx.compose.foundation.lazy.grid.LazyGridStateKt.EmptyLazyGridLayoutInfo
            if (r9 != r1) goto L5b
            r0.L$0 = r7
            r9 = r8
            kotlin.coroutines.jvm.internal.SuspendLambda r9 = (kotlin.coroutines.jvm.internal.SuspendLambda) r9
            r0.L$1 = r9
            r0.label = r4
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier r9 = r6.awaitLayoutModifier
            java.lang.Object r9 = r9.waitForFirstLayout(r0)
            if (r9 != r5) goto L5b
            goto L69
        L5b:
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            androidx.compose.foundation.gestures.DefaultScrollableState r6 = r6.scrollableState
            java.lang.Object r6 = r6.scroll(r7, r8, r0)
            if (r6 != r5) goto L6a
        L69:
            return r5
        L6a:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyGridState.scroll(androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
