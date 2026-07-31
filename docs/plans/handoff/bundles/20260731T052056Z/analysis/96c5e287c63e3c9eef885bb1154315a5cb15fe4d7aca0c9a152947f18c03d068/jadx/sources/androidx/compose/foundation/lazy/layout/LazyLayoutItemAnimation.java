package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.IntOffset;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.talk.TalkTopicsViewModel$watchOrUnwatch$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final NavBackStackEntry$$ExternalSyntheticLambda0 onLayerPropertyChanged;
    public final ParcelableSnapshotMutableState placementDelta$delegate;
    public final Animatable placementDeltaAnimation;
    public FiniteAnimationSpec placementSpec;
    public long rawOffset;
    public final Animatable visibilityAnimation;

    public LazyLayoutItemAnimation(CoroutineScope coroutineScope, GraphicsContext graphicsContext, NavBackStackEntry$$ExternalSyntheticLambda0 navBackStackEntry$$ExternalSyntheticLambda0) {
        this.coroutineScope = coroutineScope;
        this.graphicsContext = graphicsContext;
        this.onLayerPropertyChanged = navBackStackEntry$$ExternalSyntheticLambda0;
        Boolean bool = Boolean.FALSE;
        this.isPlacementAnimationInProgress$delegate = Updater.mutableStateOf$default(bool);
        this.isAppearanceAnimationInProgress$delegate = Updater.mutableStateOf$default(bool);
        this.isDisappearanceAnimationInProgress$delegate = Updater.mutableStateOf$default(bool);
        this.isDisappearanceAnimationFinished$delegate = Updater.mutableStateOf$default(bool);
        this.rawOffset = 9223372034707292159L;
        this.finalOffset = 0L;
        Object obj = null;
        this.layer = graphicsContext != null ? graphicsContext.createGraphicsLayer() : null;
        int i = 12;
        this.placementDeltaAnimation = new Animatable(new IntOffset(0L), ArcSplineKt.IntOffsetToVector, obj, i);
        this.visibilityAnimation = new Animatable(Float.valueOf(1.0f), ArcSplineKt.FloatToVector, obj, i);
        this.placementDelta$delegate = Updater.mutableStateOf$default(new IntOffset(0L));
        this.lookaheadOffset = 9223372034707292159L;
    }

    public final void animateAppearance() {
        GraphicsLayer graphicsLayer = this.layer;
        FiniteAnimationSpec finiteAnimationSpec = this.fadeInSpec;
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = this.isAppearanceAnimationInProgress$delegate;
        boolean booleanValue = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
        CoroutineScope coroutineScope = this.coroutineScope;
        Continuation continuation = null;
        if (booleanValue || finiteAnimationSpec == null || graphicsLayer == null) {
            if (isDisappearanceAnimationInProgress()) {
                if (graphicsLayer != null) {
                    graphicsLayer.setAlpha(1.0f);
                }
                AwaitKt.launch$default(coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, continuation, 1), 3);
                return;
            }
            return;
        }
        parcelableSnapshotMutableState.setValue(Boolean.TRUE);
        boolean isDisappearanceAnimationInProgress = isDisappearanceAnimationInProgress();
        boolean z = !isDisappearanceAnimationInProgress;
        if (!isDisappearanceAnimationInProgress) {
            graphicsLayer.setAlpha(RecyclerView.DECELERATION_RATE);
        }
        AwaitKt.launch$default(coroutineScope, null, null, new TalkTopicsViewModel$watchOrUnwatch$1(z, this, finiteAnimationSpec, graphicsLayer, null, 1), 3);
    }

    public final void cancelPlacementAnimation() {
        if (((Boolean) this.isPlacementAnimationInProgress$delegate.getValue()).booleanValue()) {
            AwaitKt.launch$default(this.coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, null, 2), 3);
        }
    }

    public final boolean isDisappearanceAnimationInProgress() {
        return ((Boolean) this.isDisappearanceAnimationInProgress$delegate.getValue()).booleanValue();
    }

    public final void release() {
        GraphicsContext graphicsContext;
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = this.isPlacementAnimationInProgress$delegate;
        boolean booleanValue = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
        int i = 3;
        CoroutineScope coroutineScope = this.coroutineScope;
        int i2 = 0;
        Continuation continuation = null;
        if (booleanValue) {
            parcelableSnapshotMutableState.setValue(Boolean.FALSE);
            AwaitKt.launch$default(coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, continuation, i2), 3);
        }
        ParcelableSnapshotMutableState parcelableSnapshotMutableState2 = this.isAppearanceAnimationInProgress$delegate;
        if (((Boolean) parcelableSnapshotMutableState2.getValue()).booleanValue()) {
            parcelableSnapshotMutableState2.setValue(Boolean.FALSE);
            AwaitKt.launch$default(coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, continuation, i), 3);
        }
        if (isDisappearanceAnimationInProgress()) {
            this.isDisappearanceAnimationInProgress$delegate.setValue(Boolean.FALSE);
            AwaitKt.launch$default(coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, continuation, 4), 3);
        }
        this.isRunningMovingAwayAnimation = false;
        m163setPlacementDeltagyyYBs(0L);
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

    /* renamed from: setPlacementDelta--gyyYBs, reason: not valid java name */
    public final void m163setPlacementDeltagyyYBs(long j) {
        this.placementDelta$delegate.setValue(new IntOffset(j));
    }
}
