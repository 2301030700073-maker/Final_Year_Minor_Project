package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.cardview.widget.CardView;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DefaultScrollableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.lazy.grid.LazyGridSlots;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.pager.PagerState$remeasurementModifier$1;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.TextDelegate;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomDatabase$createConnectionManager$2;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyStaggeredGridState implements ScrollableState {
    public static final CardView.AnonymousClass1 Saver = SaverKt.listSaver(new SaversKt$$ExternalSyntheticLambda0(6), new BasicTextKt$$ExternalSyntheticLambda3(21));
    public final CardView.AnonymousClass1 _lazyLayoutScrollDeltaBetweenPasses;
    public LazyStaggeredGridMeasureResult approachLayoutInfo;
    public final AwaitFirstLayoutModifier awaitLayoutModifier;
    public final LazyLayoutBeyondBoundsInfo beyondBoundsInfo;
    public final ParcelableSnapshotMutableState canScrollBackward$delegate;
    public final ParcelableSnapshotMutableState canScrollForward$delegate;
    public final MutableIntObjectMap currentItemPrefetchHandles;
    public boolean hasLookaheadOccurred;
    public final LazyLayoutItemAnimator itemAnimator;
    public final MutableState measurementScopeInvalidator;
    public final MutableInteractionSourceImpl mutableInteractionSource;
    public final LazyLayoutPinnedItemList pinnedItems;
    public final MutableState placementScopeInvalidator;
    public int prefetchBaseIndex;
    public final LazyLayoutPrefetchState prefetchState;
    public final boolean prefetchingEnabled;
    public LayoutNode remeasurement;
    public final PagerState$remeasurementModifier$1 remeasurementModifier;
    public final TextDelegate scrollPosition;
    public float scrollToBeConsumed;
    public final DefaultScrollableState scrollableState;
    public final ParcelableSnapshotMutableState layoutInfoState = new ParcelableSnapshotMutableState(LazyStaggeredGridMeasureResultKt.EmptyLazyStaggeredGridLayoutInfo, NeverEqualPolicy.INSTANCE);
    public final StatusLine laneInfo = new StatusLine(4);

    public LazyStaggeredGridState(int[] iArr, int[] iArr2) {
        this.scrollPosition = new TextDelegate(iArr, iArr2, new RoomDatabase$createConnectionManager$2(2, this, LazyStaggeredGridState.class, "fillNearestIndices", "fillNearestIndices(II)[I", 0, 2));
        Boolean bool = Boolean.FALSE;
        this.canScrollForward$delegate = Updater.mutableStateOf$default(bool);
        this.canScrollBackward$delegate = Updater.mutableStateOf$default(bool);
        this.remeasurementModifier = new PagerState$remeasurementModifier$1(this, 3);
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.beyondBoundsInfo = new LazyLayoutBeyondBoundsInfo(0);
        this.prefetchingEnabled = true;
        this.prefetchState = new LazyLayoutPrefetchState(null);
        this.scrollableState = new DefaultScrollableState(new AppBarKt$$ExternalSyntheticLambda11(17, this));
        this.prefetchBaseIndex = -1;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
        this.currentItemPrefetchHandles = new MutableIntObjectMap();
        this.mutableInteractionSource = new MutableInteractionSourceImpl();
        this.pinnedItems = new LazyLayoutPinnedItemList();
        this.itemAnimator = new LazyLayoutItemAnimator();
        this.placementScopeInvalidator = LazyLayoutKt.m166constructorimpl$default();
        this.measurementScopeInvalidator = LazyLayoutKt.m166constructorimpl$default();
        this._lazyLayoutScrollDeltaBetweenPasses = new CardView.AnonymousClass1(5);
    }

    public static Object scrollToItem$default(LazyStaggeredGridState lazyStaggeredGridState, int i, SuspendLambda suspendLambda) {
        lazyStaggeredGridState.getClass();
        Object scroll = lazyStaggeredGridState.scroll(MutatePriority.Default, new LazyStaggeredGridState$scrollToItem$2(lazyStaggeredGridState, i, null), suspendLambda);
        return scroll == CoroutineSingletons.COROUTINE_SUSPENDED ? scroll : Unit.INSTANCE;
    }

    public final void applyMeasureResult$foundation(LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult, boolean z, boolean z2) {
        Object obj;
        Snapshot currentThreadSnapshot;
        Function1 readObserver;
        Snapshot makeCurrentNonObservable;
        TextDelegate textDelegate = this.scrollPosition;
        CardView.AnonymousClass1 anonymousClass1 = this._lazyLayoutScrollDeltaBetweenPasses;
        if (!z && this.hasLookaheadOccurred) {
            this.approachLayoutInfo = lazyStaggeredGridMeasureResult;
            currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                if (anonymousClass1.isActive$foundation() && Arrays.equals(lazyStaggeredGridMeasureResult.firstVisibleItemIndices, (int[]) textDelegate.style) && Arrays.equals(lazyStaggeredGridMeasureResult.firstVisibleItemScrollOffsets, (int[]) textDelegate.fontFamilyResolver)) {
                    anonymousClass1.stop$foundation();
                }
                return;
            } finally {
            }
        }
        if (z) {
            this.hasLookaheadOccurred = true;
        }
        float f = this.scrollToBeConsumed;
        float f2 = lazyStaggeredGridMeasureResult.consumedScroll;
        List list = lazyStaggeredGridMeasureResult.visibleItemsInfo;
        int[] iArr = lazyStaggeredGridMeasureResult.firstVisibleItemIndices;
        int[] iArr2 = lazyStaggeredGridMeasureResult.firstVisibleItemScrollOffsets;
        this.scrollToBeConsumed = f - f2;
        this.layoutInfoState.setValue(lazyStaggeredGridMeasureResult);
        if (z2) {
            textDelegate.fontFamilyResolver = iArr2;
            ((ParcelableSnapshotMutableIntState) textDelegate.placeholders).setIntValue(TextDelegate.calculateFirstVisibleScrollOffset((int[]) textDelegate.style, iArr2));
        } else {
            textDelegate.getClass();
            int calculateFirstVisibleIndex = TextDelegate.calculateFirstVisibleIndex(iArr);
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    obj = null;
                    break;
                }
                obj = list.get(i);
                if (((LazyStaggeredGridMeasuredItem) obj).index == calculateFirstVisibleIndex) {
                    break;
                } else {
                    i++;
                }
            }
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = (LazyStaggeredGridMeasuredItem) obj;
            textDelegate.paragraphIntrinsics = lazyStaggeredGridMeasuredItem != null ? lazyStaggeredGridMeasuredItem.key : null;
            ((LazyLayoutNearestRangeState) textDelegate.intrinsicsLayoutDirection).update(calculateFirstVisibleIndex);
            if (textDelegate.softWrap || lazyStaggeredGridMeasureResult.totalItemsCount > 0) {
                textDelegate.softWrap = true;
                currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
                makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
                try {
                    textDelegate.style = iArr;
                    ((ParcelableSnapshotMutableIntState) textDelegate.density).setIntValue(TextDelegate.calculateFirstVisibleIndex(iArr));
                    textDelegate.fontFamilyResolver = iArr2;
                    ((ParcelableSnapshotMutableIntState) textDelegate.placeholders).setIntValue(TextDelegate.calculateFirstVisibleScrollOffset(iArr, iArr2));
                } finally {
                }
            }
            if (this.prefetchBaseIndex != -1 && !list.isEmpty()) {
                int i2 = ((LazyStaggeredGridMeasuredItem) CollectionsKt.first(list)).index;
                int i3 = ((LazyStaggeredGridMeasuredItem) CollectionsKt.last(list)).index;
                int i4 = this.prefetchBaseIndex;
                if (i2 > i4 || i4 > i3) {
                    this.prefetchBaseIndex = -1;
                    MutableIntObjectMap mutableIntObjectMap = this.currentItemPrefetchHandles;
                    Object[] objArr = mutableIntObjectMap.values;
                    long[] jArr = mutableIntObjectMap.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i5 = 0;
                        while (true) {
                            long j = jArr[i5];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i6 = 8 - ((~(i5 - length)) >>> 31);
                                for (int i7 = 0; i7 < i6; i7++) {
                                    if ((j & 255) < 128) {
                                        ((LazyLayoutPrefetchState.PrefetchHandle) objArr[(i5 << 3) + i7]).cancel();
                                    }
                                    j >>= 8;
                                }
                                if (i6 != 8) {
                                    break;
                                }
                            }
                            if (i5 == length) {
                                break;
                            } else {
                                i5++;
                            }
                        }
                    }
                    mutableIntObjectMap.clear();
                }
            }
        }
        this.canScrollBackward$delegate.setValue(Boolean.valueOf(iArr[0] != 0 || iArr2[0] > 0));
        this.canScrollForward$delegate.setValue(Boolean.valueOf(lazyStaggeredGridMeasureResult.canScrollForward));
        if (z) {
            anonymousClass1.updateScrollDeltaForApproach$foundation(lazyStaggeredGridMeasureResult.scrollBackAmount, lazyStaggeredGridMeasureResult.density, lazyStaggeredGridMeasureResult.coroutineScope);
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

    public final LazyStaggeredGridMeasureResult getLayoutInfo() {
        return (LazyStaggeredGridMeasureResult) this.layoutInfoState.getValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    public final void notifyPrefetch(float f, LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult) {
        MutableIntObjectMap mutableIntObjectMap;
        int findPreviousItemIndex;
        int i;
        long createConstraints;
        if (!this.prefetchingEnabled || lazyStaggeredGridMeasureResult.visibleItemsInfo.isEmpty()) {
            return;
        }
        boolean z = f < RecyclerView.DECELERATION_RATE;
        List list = lazyStaggeredGridMeasureResult.visibleItemsInfo;
        int i2 = z ? ((LazyStaggeredGridMeasuredItem) CollectionsKt.last(list)).index : ((LazyStaggeredGridMeasuredItem) CollectionsKt.first(list)).index;
        if (i2 == this.prefetchBaseIndex) {
            return;
        }
        this.prefetchBaseIndex = i2;
        int[] iArr = IntSetKt.EmptyIntArray;
        MutableIntSet mutableIntSet = new MutableIntSet();
        LazyGridSlots lazyGridSlots = lazyStaggeredGridMeasureResult.slots;
        int[] iArr2 = lazyGridSlots.positions;
        int length = iArr2.length;
        int i3 = 0;
        while (true) {
            mutableIntObjectMap = this.currentItemPrefetchHandles;
            if (i3 >= length) {
                break;
            }
            StatusLine statusLine = this.laneInfo;
            if (z) {
                findPreviousItemIndex = i2 + 1;
                int length2 = statusLine.code + ((int[]) statusLine.protocol).length;
                while (true) {
                    if (findPreviousItemIndex >= length2) {
                        findPreviousItemIndex = statusLine.code + ((int[]) statusLine.protocol).length;
                        break;
                    } else if (statusLine.assignedToLane(findPreviousItemIndex, i3)) {
                        break;
                    } else {
                        findPreviousItemIndex++;
                    }
                }
            } else {
                findPreviousItemIndex = statusLine.findPreviousItemIndex(i2, i3);
            }
            int i4 = findPreviousItemIndex;
            if (i4 < 0 || i4 >= lazyStaggeredGridMeasureResult.totalItemsCount || mutableIntSet.contains(i4)) {
                break;
            }
            mutableIntSet.elements[mutableIntSet.findAbsoluteInsertIndex(i4)] = i4;
            if (!mutableIntObjectMap.containsKey(i4)) {
                boolean isFullSpan = lazyStaggeredGridMeasureResult.spanProvider.isFullSpan(i4);
                int i5 = isFullSpan ? 0 : i3;
                int i6 = isFullSpan ? length : 1;
                if (i6 == 1) {
                    i = iArr2[i5];
                } else {
                    int[] iArr3 = lazyGridSlots.sizes;
                    int i7 = iArr3[i5];
                    int i8 = (i5 + i6) - 1;
                    i = (iArr3[i8] + iArr2[i8]) - i7;
                }
                if (lazyStaggeredGridMeasureResult.orientation == Orientation.Vertical) {
                    if (i < 0) {
                        InlineClassHelperKt.throwIllegalArgumentException("width must be >= 0");
                    }
                    createConstraints = ConstraintsKt.createConstraints(i, i, 0, Integer.MAX_VALUE);
                } else {
                    if (i < 0) {
                        InlineClassHelperKt.throwIllegalArgumentException("height must be >= 0");
                    }
                    createConstraints = ConstraintsKt.createConstraints(0, Integer.MAX_VALUE, i, i);
                }
                mutableIntObjectMap.set(i4, this.prefetchState.m168schedulePrecompositionAndPremeasure_EkL_Y$foundation(i4, createConstraints, true, null));
            }
            i3++;
            i2 = i4;
        }
        long[] jArr = mutableIntObjectMap.metadata;
        int length3 = jArr.length - 2;
        if (length3 < 0) {
            return;
        }
        int i9 = 0;
        while (true) {
            long j = jArr[i9];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i10 = 8 - ((~(i9 - length3)) >>> 31);
                for (int i11 = 0; i11 < i10; i11++) {
                    if ((255 & j) < 128) {
                        int i12 = (i9 << 3) + i11;
                        int i13 = mutableIntObjectMap.keys[i12];
                        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle = (LazyLayoutPrefetchState.PrefetchHandle) mutableIntObjectMap.values[i12];
                        boolean contains = mutableIntSet.contains(i13);
                        if (!contains) {
                            prefetchHandle.cancel();
                        }
                        if (!contains) {
                            mutableIntObjectMap.removeValueAt(i12);
                        }
                    }
                    j >>= 8;
                }
                if (i10 != 8) {
                    return;
                }
            }
            if (i9 == length3) {
                return;
            } else {
                i9++;
            }
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
            boolean r0 = r9 instanceof androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1 r0 = (androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1 r0 = new androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1
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
            androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResult r2 = androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResultKt.EmptyLazyStaggeredGridLayoutInfo
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState.scroll(androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
