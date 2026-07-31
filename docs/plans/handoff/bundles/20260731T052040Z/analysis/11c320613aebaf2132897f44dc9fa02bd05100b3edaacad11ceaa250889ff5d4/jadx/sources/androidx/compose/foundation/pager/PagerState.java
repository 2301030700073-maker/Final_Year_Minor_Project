package androidx.compose.foundation.pager;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DefaultScrollableState;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import org.schabi.newpipe.streams.WebMReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PagerState implements ScrollableState {
    public float accumulator;
    public PagerMeasureResult approachLayoutInfo;
    public final AwaitFirstLayoutModifier awaitLayoutModifier;
    public final LazyLayoutBeyondBoundsInfo beyondBoundsInfo;
    public final PagerCacheWindowLogic cacheWindowLogic;
    public final ParcelableSnapshotMutableState canScrollBackward$delegate;
    public final ParcelableSnapshotMutableState canScrollForward$delegate;
    public Density density;
    public int firstVisiblePage;
    public int firstVisiblePageOffset;
    public boolean hasLookaheadOccurred;
    public final MutableInteractionSourceImpl internalInteractionSource;
    public final ParcelableSnapshotMutableState isLastScrollBackwardState;
    public final ParcelableSnapshotMutableState isLastScrollForwardState;
    public int latestPageSizeWithSpacing;
    public long maxScrollOffset;
    public final MutableState measurementScopeInvalidator;
    public long minScrollOffset;
    public final ParcelableSnapshotMutableState pagerLayoutInfoState;
    public final LazyLayoutPinnedItemList pinnedPages;
    public final MutableState placementScopeInvalidator;
    public final LazyLayoutPrefetchState prefetchState;
    public final boolean prefetchingEnabled;
    public float previousPassDelta;
    public final ParcelableSnapshotMutableIntState programmaticScrollTargetPage$delegate;
    public final ParcelableSnapshotMutableState remeasurement$delegate;
    public final PagerState$remeasurementModifier$1 remeasurementModifier;
    public final WebMReader.Segment scrollPosition;
    public final DefaultScrollableState scrollableState;
    public final ParcelableSnapshotMutableIntState settledPageState$delegate;
    public final ParcelableSnapshotMutableState upDownDifference$delegate;

    public PagerState(int i, float f) {
        double d = f;
        if (-0.5d > d || d > 0.5d) {
            InlineClassHelperKt.throwIllegalArgumentException("currentPageOffsetFraction " + f + " is not within the range -0.5 to 0.5");
        }
        this.upDownDifference$delegate = Updater.mutableStateOf$default(new Offset(0L));
        WebMReader.Segment segment = new WebMReader.Segment();
        segment.info = this;
        segment.tracks = new ParcelableSnapshotMutableIntState(i);
        segment.currentCluster = new ParcelableSnapshotMutableFloatState(f);
        segment.this$0 = new LazyLayoutNearestRangeState(i);
        this.scrollPosition = segment;
        this.firstVisiblePage = i;
        this.maxScrollOffset = Long.MAX_VALUE;
        final int i2 = 0;
        this.scrollableState = new DefaultScrollableState(new Function1(this) { // from class: androidx.compose.foundation.pager.PagerState$$ExternalSyntheticLambda0
            public final /* synthetic */ PagerState f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00ab  */
            /* JADX WARN: Removed duplicated region for block: B:41:0x00e6  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00b6  */
            /* JADX WARN: Type inference failed for: r0v4 */
            /* JADX WARN: Type inference failed for: r0v5 */
            /* JADX WARN: Type inference failed for: r0v7 */
            /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Float] */
            /* JADX WARN: Type inference failed for: r15v2, types: [java.lang.Number] */
            /* JADX WARN: Type inference failed for: r15v3, types: [java.lang.Long] */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invoke(java.lang.Object r15) {
                /*
                    Method dump skipped, instructions count: 250
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState$$ExternalSyntheticLambda0.invoke(java.lang.Object):java.lang.Object");
            }
        });
        final int i3 = 1;
        this.prefetchingEnabled = true;
        this.pagerLayoutInfoState = new ParcelableSnapshotMutableState(PagerStateKt.EmptyLayoutInfo, NeverEqualPolicy.INSTANCE);
        this.density = PagerStateKt.UnitDensity;
        this.internalInteractionSource = new MutableInteractionSourceImpl();
        this.programmaticScrollTargetPage$delegate = new ParcelableSnapshotMutableIntState(-1);
        this.settledPageState$delegate = new ParcelableSnapshotMutableIntState(i);
        NeverEqualPolicy neverEqualPolicy = NeverEqualPolicy.INSTANCE$3;
        Updater.derivedStateOf(neverEqualPolicy, new PagerState$$ExternalSyntheticLambda1(this, i2));
        Updater.derivedStateOf(neverEqualPolicy, new PagerState$$ExternalSyntheticLambda1(this, i3));
        LazyLayoutPrefetchState lazyLayoutPrefetchState = new LazyLayoutPrefetchState(new Function1(this) { // from class: androidx.compose.foundation.pager.PagerState$$ExternalSyntheticLambda0
            public final /* synthetic */ PagerState f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                /*
                    Method dump skipped, instructions count: 250
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState$$ExternalSyntheticLambda0.invoke(java.lang.Object):java.lang.Object");
            }
        });
        this.prefetchState = lazyLayoutPrefetchState;
        this.cacheWindowLogic = new PagerCacheWindowLogic(new PopupMenu$1(this, 17), lazyLayoutPrefetchState, new PagerState$$ExternalSyntheticLambda1(this, 2));
        this.beyondBoundsInfo = new LazyLayoutBeyondBoundsInfo(0);
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.remeasurement$delegate = Updater.mutableStateOf$default(null);
        this.remeasurementModifier = new PagerState$remeasurementModifier$1(this, i2);
        ConstraintsKt.Constraints$default(0, 0, 15);
        this.pinnedPages = new LazyLayoutPinnedItemList();
        this.placementScopeInvalidator = LazyLayoutKt.m110constructorimpl$default();
        this.measurementScopeInvalidator = LazyLayoutKt.m110constructorimpl$default();
        Boolean bool = Boolean.FALSE;
        this.canScrollForward$delegate = Updater.mutableStateOf$default(bool);
        this.canScrollBackward$delegate = Updater.mutableStateOf$default(bool);
        this.isLastScrollForwardState = Updater.mutableStateOf$default(bool);
        this.isLastScrollBackwardState = Updater.mutableStateOf$default(bool);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0078, code lost:
    
        if (r9.scroll(r7, r8, r0) != r5) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007a, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
    
        if (r6.awaitScrollDependencies(r0) == r5) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object scroll$suspendImpl(androidx.compose.foundation.pager.PagerState r6, androidx.compose.foundation.MutatePriority r7, kotlin.jvm.functions.Function2 r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            boolean r0 = r9 instanceof androidx.compose.foundation.pager.PagerState$scroll$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.pager.PagerState$scroll$1 r0 = (androidx.compose.foundation.pager.PagerState$scroll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.pager.PagerState$scroll$1 r0 = new androidx.compose.foundation.pager.PagerState$scroll$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L47
            if (r1 == r4) goto L35
            if (r1 != r3) goto L2f
            java.lang.Object r6 = r0.L$0
            androidx.compose.foundation.pager.PagerState r6 = (androidx.compose.foundation.pager.PagerState) r6
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7b
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            return r2
        L35:
            java.lang.Object r6 = r0.L$2
            r8 = r6
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            java.lang.Object r6 = r0.L$1
            r7 = r6
            androidx.compose.foundation.MutatePriority r7 = (androidx.compose.foundation.MutatePriority) r7
            java.lang.Object r6 = r0.L$0
            androidx.compose.foundation.pager.PagerState r6 = (androidx.compose.foundation.pager.PagerState) r6
            kotlin.ResultKt.throwOnFailure(r9)
            goto L59
        L47:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.L$2 = r8
            r0.label = r4
            java.lang.Object r9 = r6.awaitScrollDependencies(r0)
            if (r9 != r5) goto L59
            goto L7a
        L59:
            androidx.compose.foundation.gestures.DefaultScrollableState r9 = r6.scrollableState
            boolean r9 = r9.isScrollInProgress()
            if (r9 != 0) goto L6a
            int r9 = r6.getCurrentPage()
            androidx.compose.runtime.ParcelableSnapshotMutableIntState r1 = r6.settledPageState$delegate
            r1.setIntValue(r9)
        L6a:
            androidx.compose.foundation.gestures.DefaultScrollableState r9 = r6.scrollableState
            r0.L$0 = r6
            r0.L$1 = r2
            r0.L$2 = r2
            r0.label = r3
            java.lang.Object r7 = r9.scroll(r7, r8, r0)
            if (r7 != r5) goto L7b
        L7a:
            return r5
        L7b:
            r7 = -1
            androidx.compose.runtime.ParcelableSnapshotMutableIntState r6 = r6.programmaticScrollTargetPage$delegate
            r6.setIntValue(r7)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.scroll$suspendImpl(androidx.compose.foundation.pager.PagerState, androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object animateScrollToPage(int r17, androidx.compose.animation.core.SpringSpec r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            r16 = this;
            r1 = r16
            r0 = r17
            r2 = r19
            boolean r3 = r2 instanceof androidx.compose.foundation.pager.PagerState$animateScrollToPage$1
            if (r3 == 0) goto L1a
            r3 = r2
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$1 r3 = (androidx.compose.foundation.pager.PagerState$animateScrollToPage$1) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L1a
            int r4 = r4 - r5
            r3.label = r4
        L18:
            r6 = r3
            goto L20
        L1a:
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$1 r3 = new androidx.compose.foundation.pager.PagerState$animateScrollToPage$1
            r3.<init>(r1, r2)
            goto L18
        L20:
            java.lang.Object r2 = r6.result
            int r3 = r6.label
            r7 = 0
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            r9 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r3 == 0) goto L4a
            if (r3 == r4) goto L3b
            if (r3 != r9) goto L35
            kotlin.ResultKt.throwOnFailure(r2)
            return r8
        L35:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r0)
            return r7
        L3b:
            float r0 = r6.F$0
            int r3 = r6.I$0
            java.lang.Object r4 = r6.L$0
            androidx.compose.animation.core.AnimationSpec r4 = (androidx.compose.animation.core.AnimationSpec) r4
            kotlin.ResultKt.throwOnFailure(r2)
            r15 = r3
            r3 = r0
            r0 = r15
            goto L76
        L4a:
            kotlin.ResultKt.throwOnFailure(r2)
            int r2 = r1.getCurrentPage()
            r3 = 0
            if (r0 != r2) goto L5d
            float r2 = r1.getCurrentPageOffsetFraction()
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 != 0) goto L5d
            goto Lb7
        L5d:
            int r2 = r1.getPageCount()
            if (r2 != 0) goto L64
            goto Lb7
        L64:
            r2 = r18
            r6.L$0 = r2
            r6.I$0 = r0
            r6.F$0 = r3
            r6.label = r4
            java.lang.Object r4 = r1.awaitScrollDependencies(r6)
            if (r4 != r10) goto L75
            goto Lb6
        L75:
            r4 = r2
        L76:
            double r11 = (double) r3
            r13 = -4620693217682128896(0xbfe0000000000000, double:-0.5)
            int r2 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r2 > 0) goto L84
            r13 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            int r2 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r2 > 0) goto L84
            goto L9a
        L84:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r5 = "pageOffsetFraction "
            r2.<init>(r5)
            r2.append(r3)
            java.lang.String r5 = " is not within the range -0.5 to 0.5"
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            androidx.compose.foundation.internal.InlineClassHelperKt.throwIllegalArgumentException(r2)
        L9a:
            int r2 = r1.coerceInPageRange(r0)
            int r0 = r1.getPageSizeWithSpacing$foundation()
            float r0 = (float) r0
            float r3 = r3 * r0
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$3 r0 = new androidx.compose.foundation.pager.PagerState$animateScrollToPage$3
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            r6.L$0 = r7
            r6.label = r9
            androidx.compose.foundation.MutatePriority r2 = androidx.compose.foundation.MutatePriority.Default
            java.lang.Object r0 = r1.scroll(r2, r0, r6)
            if (r0 != r10) goto Lb7
        Lb6:
            return r10
        Lb7:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.animateScrollToPage(int, androidx.compose.animation.core.SpringSpec, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0338, code lost:
    
        if (isNotGestureAction$foundation() == false) goto L136;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x022a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x02e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02aa  */
    /* JADX WARN: Type inference failed for: r2v14, types: [int] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void applyMeasureResult$foundation(androidx.compose.foundation.pager.PagerMeasureResult r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 890
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.applyMeasureResult$foundation(androidx.compose.foundation.pager.PagerMeasureResult, boolean, boolean):void");
    }

    public final Object awaitScrollDependencies(ContinuationImpl continuationImpl) {
        Object waitForFirstLayout;
        return (this.pagerLayoutInfoState.getValue() == PagerStateKt.EmptyLayoutInfo && (waitForFirstLayout = this.awaitLayoutModifier.waitForFirstLayout(continuationImpl)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? waitForFirstLayout : Unit.INSTANCE;
    }

    public final int coerceInPageRange(int i) {
        if (getPageCount() > 0) {
            return RangesKt.coerceIn(i, 0, getPageCount() - 1);
        }
        return 0;
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

    public final int getCurrentPage() {
        return ((ParcelableSnapshotMutableIntState) this.scrollPosition.tracks).getIntValue();
    }

    public final float getCurrentPageOffsetFraction() {
        return ((ParcelableSnapshotMutableFloatState) this.scrollPosition.currentCluster).getFloatValue();
    }

    public final PagerMeasureResult getLayoutInfo() {
        return (PagerMeasureResult) this.pagerLayoutInfoState.getValue();
    }

    public abstract int getPageCount();

    public final int getPageSize$foundation() {
        return ((PagerMeasureResult) this.pagerLayoutInfoState.getValue()).pageSize;
    }

    public final int getPageSizeWithSpacing$foundation() {
        return ((PagerMeasureResult) this.pagerLayoutInfoState.getValue()).pageSpacing + getPageSize$foundation();
    }

    /* renamed from: getUpDownDifference-F1C5BW0$foundation, reason: not valid java name */
    public final long m113getUpDownDifferenceF1C5BW0$foundation() {
        return ((Offset) this.upDownDifference$delegate.getValue()).packedValue;
    }

    public final boolean isNotGestureAction$foundation() {
        return ((int) Float.intBitsToFloat((int) (m113getUpDownDifferenceF1C5BW0$foundation() >> 32))) == 0 && ((int) Float.intBitsToFloat((int) (m113getUpDownDifferenceF1C5BW0$foundation() & 4294967295L))) == 0;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object scroll(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        return scroll$suspendImpl(this, mutatePriority, function2, continuationImpl);
    }

    public final void snapToItem$foundation(float f, int i, boolean z) {
        WebMReader.Segment segment = this.scrollPosition;
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) segment.tracks;
        ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = (ParcelableSnapshotMutableFloatState) segment.currentCluster;
        if (parcelableSnapshotMutableIntState.getIntValue() != i || parcelableSnapshotMutableFloatState.getFloatValue() != f) {
            this.cacheWindowLogic.resetStrategy();
        }
        ((ParcelableSnapshotMutableIntState) segment.tracks).setIntValue(i);
        ((LazyLayoutNearestRangeState) segment.this$0).update(i);
        parcelableSnapshotMutableFloatState.setFloatValue(f);
        segment.ref = null;
        if (!z) {
            this.measurementScopeInvalidator.setValue(Unit.INSTANCE);
            return;
        }
        LayoutNode layoutNode = (LayoutNode) this.remeasurement$delegate.getValue();
        if (layoutNode != null) {
            layoutNode.forceRemeasure();
        }
    }
}
