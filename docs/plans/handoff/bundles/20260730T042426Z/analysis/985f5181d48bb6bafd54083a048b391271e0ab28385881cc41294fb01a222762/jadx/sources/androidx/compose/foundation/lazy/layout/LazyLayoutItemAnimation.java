package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: LazyLayoutItemAnimation.kt */
/* loaded from: classes.dex */
public final class LazyLayoutItemAnimation {
    private final CoroutineScope coroutineScope;
    private FiniteAnimationSpec fadeInSpec;
    private FiniteAnimationSpec fadeOutSpec;
    private long finalOffset;
    private final GraphicsContext graphicsContext;
    private final MutableState isAppearanceAnimationInProgress$delegate;
    private final MutableState isDisappearanceAnimationFinished$delegate;
    private final MutableState isDisappearanceAnimationInProgress$delegate;
    private final MutableState isPlacementAnimationInProgress$delegate;
    private boolean isRunningMovingAwayAnimation;
    private GraphicsLayer layer;
    private long lookaheadOffset;
    private final Function0 onLayerPropertyChanged;
    private final MutableState placementDelta$delegate;
    private final Animatable placementDeltaAnimation;
    private FiniteAnimationSpec placementSpec;
    private long rawOffset;
    private final Animatable visibilityAnimation;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final long NotInitialized = IntOffsetKt.IntOffset(Integer.MAX_VALUE, Integer.MAX_VALUE);

    public LazyLayoutItemAnimation(CoroutineScope coroutineScope, GraphicsContext graphicsContext, Function0 function0) {
        this.coroutineScope = coroutineScope;
        this.graphicsContext = graphicsContext;
        this.onLayerPropertyChanged = function0;
        Boolean bool = Boolean.FALSE;
        this.isPlacementAnimationInProgress$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.isAppearanceAnimationInProgress$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.isDisappearanceAnimationInProgress$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.isDisappearanceAnimationFinished$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        long j = NotInitialized;
        this.rawOffset = j;
        IntOffset.Companion companion = IntOffset.Companion;
        this.finalOffset = companion.m2472getZeronOccac();
        this.layer = graphicsContext != null ? graphicsContext.createGraphicsLayer() : null;
        this.placementDeltaAnimation = new Animatable(IntOffset.m2459boximpl(companion.m2472getZeronOccac()), VectorConvertersKt.getVectorConverter(companion), null, null, 12, null);
        this.visibilityAnimation = new Animatable(Float.valueOf(1.0f), VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE), null, null, 12, null);
        this.placementDelta$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntOffset.m2459boximpl(companion.m2472getZeronOccac()), null, 2, null);
        this.lookaheadOffset = j;
    }

    public final void setFadeInSpec(FiniteAnimationSpec finiteAnimationSpec) {
        this.fadeInSpec = finiteAnimationSpec;
    }

    public final void setPlacementSpec(FiniteAnimationSpec finiteAnimationSpec) {
        this.placementSpec = finiteAnimationSpec;
    }

    public final void setFadeOutSpec(FiniteAnimationSpec finiteAnimationSpec) {
        this.fadeOutSpec = finiteAnimationSpec;
    }

    public final boolean isRunningMovingAwayAnimation() {
        return this.isRunningMovingAwayAnimation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setPlacementAnimationInProgress(boolean z) {
        this.isPlacementAnimationInProgress$delegate.setValue(Boolean.valueOf(z));
    }

    public final boolean isPlacementAnimationInProgress() {
        return ((Boolean) this.isPlacementAnimationInProgress$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setAppearanceAnimationInProgress(boolean z) {
        this.isAppearanceAnimationInProgress$delegate.setValue(Boolean.valueOf(z));
    }

    public final boolean isAppearanceAnimationInProgress() {
        return ((Boolean) this.isAppearanceAnimationInProgress$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDisappearanceAnimationInProgress(boolean z) {
        this.isDisappearanceAnimationInProgress$delegate.setValue(Boolean.valueOf(z));
    }

    public final boolean isDisappearanceAnimationInProgress() {
        return ((Boolean) this.isDisappearanceAnimationInProgress$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDisappearanceAnimationFinished(boolean z) {
        this.isDisappearanceAnimationFinished$delegate.setValue(Boolean.valueOf(z));
    }

    public final boolean isDisappearanceAnimationFinished() {
        return ((Boolean) this.isDisappearanceAnimationFinished$delegate.getValue()).booleanValue();
    }

    /* renamed from: getRawOffset-nOcc-ac, reason: not valid java name */
    public final long m341getRawOffsetnOccac() {
        return this.rawOffset;
    }

    /* renamed from: setRawOffset--gyyYBs, reason: not valid java name */
    public final void m344setRawOffsetgyyYBs(long j) {
        this.rawOffset = j;
    }

    /* renamed from: getFinalOffset-nOcc-ac, reason: not valid java name */
    public final long m338getFinalOffsetnOccac() {
        return this.finalOffset;
    }

    /* renamed from: setFinalOffset--gyyYBs, reason: not valid java name */
    public final void m342setFinalOffsetgyyYBs(long j) {
        this.finalOffset = j;
    }

    public final GraphicsLayer getLayer() {
        return this.layer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setPlacementDelta--gyyYBs, reason: not valid java name */
    public final void m336setPlacementDeltagyyYBs(long j) {
        this.placementDelta$delegate.setValue(IntOffset.m2459boximpl(j));
    }

    /* renamed from: getPlacementDelta-nOcc-ac, reason: not valid java name */
    public final long m340getPlacementDeltanOccac() {
        return ((IntOffset) this.placementDelta$delegate.getValue()).m2471unboximpl();
    }

    public final void cancelPlacementAnimation() {
        if (isPlacementAnimationInProgress()) {
            BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new LazyLayoutItemAnimation$cancelPlacementAnimation$1(this, null), 3, null);
        }
    }

    /* renamed from: getLookaheadOffset-nOcc-ac, reason: not valid java name */
    public final long m339getLookaheadOffsetnOccac() {
        return this.lookaheadOffset;
    }

    /* renamed from: setLookaheadOffset--gyyYBs, reason: not valid java name */
    public final void m343setLookaheadOffsetgyyYBs(long j) {
        this.lookaheadOffset = j;
    }

    /* renamed from: animatePlacementDelta-ar5cAso, reason: not valid java name */
    public final void m337animatePlacementDeltaar5cAso(long j, boolean z) {
        FiniteAnimationSpec finiteAnimationSpec = this.placementSpec;
        if (finiteAnimationSpec == null) {
            return;
        }
        long m2468minusqkQi6aY = IntOffset.m2468minusqkQi6aY(m340getPlacementDeltanOccac(), j);
        m336setPlacementDeltagyyYBs(m2468minusqkQi6aY);
        setPlacementAnimationInProgress(true);
        this.isRunningMovingAwayAnimation = z;
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new LazyLayoutItemAnimation$animatePlacementDelta$1(this, finiteAnimationSpec, m2468minusqkQi6aY, null), 3, null);
    }

    public final void animateAppearance() {
        GraphicsLayer graphicsLayer = this.layer;
        FiniteAnimationSpec finiteAnimationSpec = this.fadeInSpec;
        if (isAppearanceAnimationInProgress() || finiteAnimationSpec == null || graphicsLayer == null) {
            if (isDisappearanceAnimationInProgress()) {
                if (graphicsLayer != null) {
                    graphicsLayer.setAlpha(1.0f);
                }
                BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new LazyLayoutItemAnimation$animateAppearance$1(this, null), 3, null);
                return;
            }
            return;
        }
        setAppearanceAnimationInProgress(true);
        boolean isDisappearanceAnimationInProgress = isDisappearanceAnimationInProgress();
        boolean z = !isDisappearanceAnimationInProgress;
        if (!isDisappearanceAnimationInProgress) {
            graphicsLayer.setAlpha(0.0f);
        }
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new LazyLayoutItemAnimation$animateAppearance$2(z, this, finiteAnimationSpec, graphicsLayer, null), 3, null);
    }

    public final void animateDisappearance() {
        GraphicsLayer graphicsLayer = this.layer;
        FiniteAnimationSpec finiteAnimationSpec = this.fadeOutSpec;
        if (graphicsLayer == null || isDisappearanceAnimationInProgress() || finiteAnimationSpec == null) {
            return;
        }
        setDisappearanceAnimationInProgress(true);
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new LazyLayoutItemAnimation$animateDisappearance$1(this, finiteAnimationSpec, graphicsLayer, null), 3, null);
    }

    public final void release() {
        GraphicsContext graphicsContext;
        if (isPlacementAnimationInProgress()) {
            setPlacementAnimationInProgress(false);
            BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, null), 3, null);
        }
        if (isAppearanceAnimationInProgress()) {
            setAppearanceAnimationInProgress(false);
            BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new LazyLayoutItemAnimation$release$2(this, null), 3, null);
        }
        if (isDisappearanceAnimationInProgress()) {
            setDisappearanceAnimationInProgress(false);
            BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new LazyLayoutItemAnimation$release$3(this, null), 3, null);
        }
        this.isRunningMovingAwayAnimation = false;
        m336setPlacementDeltagyyYBs(IntOffset.Companion.m2472getZeronOccac());
        this.rawOffset = NotInitialized;
        GraphicsLayer graphicsLayer = this.layer;
        if (graphicsLayer != null && (graphicsContext = this.graphicsContext) != null) {
            graphicsContext.releaseGraphicsLayer(graphicsLayer);
        }
        this.layer = null;
        this.fadeInSpec = null;
        this.fadeOutSpec = null;
        this.placementSpec = null;
    }

    /* compiled from: LazyLayoutItemAnimation.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getNotInitialized-nOcc-ac, reason: not valid java name */
        public final long m345getNotInitializednOccac() {
            return LazyLayoutItemAnimation.NotInitialized;
        }
    }
}
