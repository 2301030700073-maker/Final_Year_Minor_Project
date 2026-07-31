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
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import com.caverock.androidsvg.SVG;
import com.fasterxml.jackson.databind.ser.PropertyBuilder;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final PropertyBuilder scrollPosition;
    public final DefaultScrollableState scrollableState;
    public final ParcelableSnapshotMutableIntState settledPageState$delegate;
    public final ParcelableSnapshotMutableState upDownDifference$delegate;

    public PagerState(int i, float f) {
        double d = f;
        if (-0.5d > d || d > 0.5d) {
            InlineClassHelperKt.throwIllegalArgumentException("currentPageOffsetFraction " + f + " is not within the range -0.5 to 0.5");
        }
        this.upDownDifference$delegate = Updater.mutableStateOf$default(new Offset(0L));
        this.scrollPosition = new PropertyBuilder(i, f, this);
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
            /* JADX WARN: Type inference failed for: r14v1, types: [java.lang.Float] */
            /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.Number] */
            /* JADX WARN: Type inference failed for: r14v3, types: [java.lang.Long] */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invoke(java.lang.Object r14) {
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
        SVG svg = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
        new AtomicInt(0);
        new DerivedSnapshotState.ResultRecord(SnapshotKt.currentSnapshot().getSnapshotId());
        new AtomicInt(0);
        new DerivedSnapshotState.ResultRecord(SnapshotKt.currentSnapshot().getSnapshotId());
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
        this.cacheWindowLogic = new PagerCacheWindowLogic(new PopupMenu$1(20, this), lazyLayoutPrefetchState, new PagerState$$ExternalSyntheticLambda2(this, 0));
        this.beyondBoundsInfo = new LazyLayoutBeyondBoundsInfo(0);
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.remeasurement$delegate = Updater.mutableStateOf$default(null);
        this.remeasurementModifier = new PagerState$remeasurementModifier$1(this, i2);
        ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);
        this.pinnedPages = new LazyLayoutPinnedItemList();
        this.placementScopeInvalidator = LazyLayoutKt.m166constructorimpl$default();
        this.measurementScopeInvalidator = LazyLayoutKt.m166constructorimpl$default();
        Boolean bool = Boolean.FALSE;
        this.canScrollForward$delegate = Updater.mutableStateOf$default(bool);
        this.canScrollBackward$delegate = Updater.mutableStateOf$default(bool);
        this.isLastScrollForwardState = Updater.mutableStateOf$default(bool);
        this.isLastScrollBackwardState = Updater.mutableStateOf$default(bool);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0074, code lost:
    
        if (r9.scroll(r7, r8, r0) != r1) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0076, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        if (r6.awaitScrollDependencies(r0) == r1) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object scroll$suspendImpl(androidx.compose.foundation.pager.PagerState r6, androidx.compose.foundation.MutatePriority r7, kotlin.jvm.functions.Function2 r8, kotlin.coroutines.Continuation r9) {
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
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L40
            if (r2 == r5) goto L33
            if (r2 != r4) goto L2d
            androidx.compose.foundation.pager.PagerState r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L77
        L2d:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L33:
            kotlin.coroutines.jvm.internal.SuspendLambda r6 = r0.L$2
            r8 = r6
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            androidx.compose.foundation.MutatePriority r7 = r0.L$1
            androidx.compose.foundation.pager.PagerState r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L55
        L40:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.L$0 = r6
            r0.L$1 = r7
            r9 = r8
            kotlin.coroutines.jvm.internal.SuspendLambda r9 = (kotlin.coroutines.jvm.internal.SuspendLambda) r9
            r0.L$2 = r9
            r0.label = r5
            java.lang.Object r9 = r6.awaitScrollDependencies(r0)
            if (r9 != r1) goto L55
            goto L76
        L55:
            androidx.compose.foundation.gestures.DefaultScrollableState r9 = r6.scrollableState
            boolean r9 = r9.isScrollInProgress()
            if (r9 != 0) goto L66
            int r9 = r6.getCurrentPage()
            androidx.compose.runtime.ParcelableSnapshotMutableIntState r2 = r6.settledPageState$delegate
            r2.setIntValue(r9)
        L66:
            androidx.compose.foundation.gestures.DefaultScrollableState r9 = r6.scrollableState
            r0.L$0 = r6
            r0.L$1 = r3
            r0.L$2 = r3
            r0.label = r4
            java.lang.Object r7 = r9.scroll(r7, r8, r0)
            if (r7 != r1) goto L77
        L76:
            return r1
        L77:
            r7 = -1
            androidx.compose.runtime.ParcelableSnapshotMutableIntState r6 = r6.programmaticScrollTargetPage$delegate
            r6.setIntValue(r7)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.scroll$suspendImpl(androidx.compose.foundation.pager.PagerState, androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0087 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0088 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object animateScrollToPage(int r12, androidx.compose.animation.core.SpringSpec r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r11 = this;
            boolean r3 = r14 instanceof androidx.compose.foundation.pager.PagerState$animateScrollToPage$1
            if (r3 == 0) goto L14
            r3 = r14
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$1 r3 = (androidx.compose.foundation.pager.PagerState$animateScrollToPage$1) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L14
            int r4 = r4 - r5
            r3.label = r4
        L12:
            r6 = r3
            goto L1a
        L14:
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$1 r3 = new androidx.compose.foundation.pager.PagerState$animateScrollToPage$1
            r3.<init>(r11, r14)
            goto L12
        L1a:
            java.lang.Object r2 = r6.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r6.label
            r8 = 0
            r4 = 0
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            r10 = 2
            r5 = 1
            if (r3 == 0) goto L40
            if (r3 == r5) goto L36
            if (r3 != r10) goto L30
            kotlin.ResultKt.throwOnFailure(r2)
            return r9
        L30:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r0)
            return r8
        L36:
            int r0 = r6.I$0
            androidx.compose.animation.core.SpringSpec r3 = r6.L$0
            kotlin.ResultKt.throwOnFailure(r2)
            r2 = r4
            r4 = r3
            goto L69
        L40:
            kotlin.ResultKt.throwOnFailure(r2)
            int r2 = r11.getCurrentPage()
            if (r12 != r2) goto L52
            float r2 = r11.getCurrentPageOffsetFraction()
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 != 0) goto L52
            goto L88
        L52:
            int r2 = r11.getPageCount()
            if (r2 != 0) goto L59
            goto L88
        L59:
            r6.L$0 = r13
            r6.I$0 = r12
            r6.label = r5
            java.lang.Object r3 = r11.awaitScrollDependencies(r6)
            if (r3 != r7) goto L66
            goto L87
        L66:
            r0 = r12
            r2 = r4
            r4 = r13
        L69:
            int r0 = r11.coerceInPageRange(r0)
            int r3 = r11.getPageSizeWithSpacing$foundation()
            float r3 = (float) r3
            float r3 = r3 * r2
            r2 = r0
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$3 r0 = new androidx.compose.foundation.pager.PagerState$animateScrollToPage$3
            r5 = 0
            r1 = r11
            r0.<init>(r1, r2, r3, r4, r5)
            r6.L$0 = r8
            r6.label = r10
            androidx.compose.foundation.MutatePriority r2 = androidx.compose.foundation.MutatePriority.Default
            java.lang.Object r0 = r11.scroll(r2, r0, r6)
            if (r0 != r7) goto L88
        L87:
            return r7
        L88:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.animateScrollToPage(int, androidx.compose.animation.core.SpringSpec, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x033c, code lost:
    
        if (isNotGestureAction$foundation() == false) goto L136;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0233 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x02e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02af  */
    /* JADX WARN: Type inference failed for: r5v22, types: [int] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void applyMeasureResult$foundation(androidx.compose.foundation.pager.PagerMeasureResult r21, boolean r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 900
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
            return RegexKt.coerceIn(i, 0, getPageCount() - 1);
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
        return ((ParcelableSnapshotMutableIntState) this.scrollPosition._beanDesc).getIntValue();
    }

    public final float getCurrentPageOffsetFraction() {
        return ((ParcelableSnapshotMutableFloatState) this.scrollPosition._annotationIntrospector).getFloatValue();
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
    public final long m173getUpDownDifferenceF1C5BW0$foundation() {
        return ((Offset) this.upDownDifference$delegate.getValue()).packedValue;
    }

    public final boolean isNotGestureAction$foundation() {
        return ((int) Float.intBitsToFloat((int) (m173getUpDownDifferenceF1C5BW0$foundation() >> 32))) == 0 && ((int) Float.intBitsToFloat((int) (m173getUpDownDifferenceF1C5BW0$foundation() & 4294967295L))) == 0;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object scroll(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        return scroll$suspendImpl(this, mutatePriority, function2, continuation);
    }

    public final void snapToItem$foundation(float f, int i, boolean z) {
        PropertyBuilder propertyBuilder = this.scrollPosition;
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) propertyBuilder._beanDesc;
        ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = (ParcelableSnapshotMutableFloatState) propertyBuilder._annotationIntrospector;
        if (parcelableSnapshotMutableIntState.getIntValue() != i || parcelableSnapshotMutableFloatState.getFloatValue() != f) {
            this.cacheWindowLogic.resetStrategy();
        }
        ((ParcelableSnapshotMutableIntState) propertyBuilder._beanDesc).setIntValue(i);
        ((LazyLayoutNearestRangeState) propertyBuilder._defaultInclusion).update(i);
        parcelableSnapshotMutableFloatState.setFloatValue(f);
        propertyBuilder._defaultBean = null;
        if (!z) {
            LazyLayoutKt.m167invalidateScopeimpl(this.measurementScopeInvalidator);
            return;
        }
        LayoutNode layoutNode = (LayoutNode) this.remeasurement$delegate.getValue();
        if (layoutNode != null) {
            layoutNode.forceRemeasure();
        }
    }
}
