package androidx.compose.foundation.lazy.layout;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.material3.SnackbarHostKt$animatedOpacity$2$1;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.IntOffset;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyLayoutItemAnimation {
    public final CoroutineScope coroutineScope;
    public FiniteAnimationSpec fadeInSpec;
    public FiniteAnimationSpec fadeOutSpec;
    public long finalOffset;
    public final GraphicsContext graphicsContext;
    public final ParcelableSnapshotMutableState isAppearanceAnimationInProgress$delegate;
    public final ParcelableSnapshotMutableState isDisappearanceAnimationFinished$delegate;
    public final ParcelableSnapshotMutableState isDisappearanceAnimationInProgress$delegate;
    public final ParcelableSnapshotMutableState isPlacementAnimationInProgress$delegate;
    public boolean isRunningMovingAwayAnimation;
    public GraphicsLayer layer;
    public long lookaheadOffset;
    public final OnBackPressedDispatcher$$ExternalSyntheticLambda0 onLayerPropertyChanged;
    public final ParcelableSnapshotMutableState placementDelta$delegate;
    public final Animatable placementDeltaAnimation;
    public FiniteAnimationSpec placementSpec;
    public long rawOffset;
    public final Animatable visibilityAnimation;

    public LazyLayoutItemAnimation(CoroutineScope coroutineScope, GraphicsContext graphicsContext, OnBackPressedDispatcher$$ExternalSyntheticLambda0 onBackPressedDispatcher$$ExternalSyntheticLambda0) {
        this.coroutineScope = coroutineScope;
        this.graphicsContext = graphicsContext;
        this.onLayerPropertyChanged = onBackPressedDispatcher$$ExternalSyntheticLambda0;
        Boolean bool = Boolean.FALSE;
        this.isPlacementAnimationInProgress$delegate = Updater.mutableStateOf$default(bool);
        this.isAppearanceAnimationInProgress$delegate = Updater.mutableStateOf$default(bool);
        this.isDisappearanceAnimationInProgress$delegate = Updater.mutableStateOf$default(bool);
        this.isDisappearanceAnimationFinished$delegate = Updater.mutableStateOf$default(bool);
        this.rawOffset = 9223372034707292159L;
        this.finalOffset = 0L;
        this.layer = graphicsContext != null ? graphicsContext.createGraphicsLayer() : null;
        this.placementDeltaAnimation = new Animatable(new IntOffset(0L), ArcSplineKt.IntOffsetToVector, null, 12);
        this.visibilityAnimation = new Animatable(Float.valueOf(1.0f), ArcSplineKt.FloatToVector, null, 12);
        this.placementDelta$delegate = Updater.mutableStateOf$default(new IntOffset(0L));
        this.lookaheadOffset = 9223372034707292159L;
    }

    public final void animateAppearance() {
        GraphicsLayer graphicsLayer = this.layer;
        FiniteAnimationSpec finiteAnimationSpec = this.fadeInSpec;
        boolean booleanValue = ((Boolean) this.isAppearanceAnimationInProgress$delegate.getValue()).booleanValue();
        CoroutineScope coroutineScope = this.coroutineScope;
        if (booleanValue || finiteAnimationSpec == null || graphicsLayer == null) {
            if (isDisappearanceAnimationInProgress()) {
                if (graphicsLayer != null) {
                    graphicsLayer.setAlpha(1.0f);
                }
                JobKt.launch$default(coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, null, 1), 3);
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
        JobKt.launch$default(coroutineScope, null, null, new SnackbarHostKt$animatedOpacity$2$1(z, this, finiteAnimationSpec, graphicsLayer, (Continuation) null), 3);
    }

    public final boolean isDisappearanceAnimationInProgress() {
        return ((Boolean) this.isDisappearanceAnimationInProgress$delegate.getValue()).booleanValue();
    }

    public final void release() {
        GraphicsContext graphicsContext;
        boolean booleanValue = ((Boolean) this.isPlacementAnimationInProgress$delegate.getValue()).booleanValue();
        CoroutineScope coroutineScope = this.coroutineScope;
        if (booleanValue) {
            setPlacementAnimationInProgress(false);
            JobKt.launch$default(coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, null, 0), 3);
        }
        if (((Boolean) this.isAppearanceAnimationInProgress$delegate.getValue()).booleanValue()) {
            setAppearanceAnimationInProgress(false);
            JobKt.launch$default(coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, null, 3), 3);
        }
        if (isDisappearanceAnimationInProgress()) {
            setDisappearanceAnimationInProgress(false);
            JobKt.launch$default(coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, null, 4), 3);
        }
        this.isRunningMovingAwayAnimation = false;
        m253setPlacementDeltagyyYBs(0L);
        this.rawOffset = 9223372034707292159L;
        GraphicsLayer graphicsLayer = this.layer;
        if (graphicsLayer != null && (graphicsContext = this.graphicsContext) != null) {
            graphicsContext.releaseGraphicsLayer(graphicsLayer);
        }
        this.layer = null;
        this.fadeInSpec = null;
        this.fadeOutSpec = null;
        this.placementSpec = null;
    }

    public final void setAppearanceAnimationInProgress(boolean z) {
        this.isAppearanceAnimationInProgress$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setDisappearanceAnimationInProgress(boolean z) {
        this.isDisappearanceAnimationInProgress$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setPlacementAnimationInProgress(boolean z) {
        this.isPlacementAnimationInProgress$delegate.setValue(Boolean.valueOf(z));
    }

    /* renamed from: setPlacementDelta--gyyYBs, reason: not valid java name */
    public final void m253setPlacementDeltagyyYBs(long j) {
        this.placementDelta$delegate.setValue(new IntOffset(j));
    }
}
