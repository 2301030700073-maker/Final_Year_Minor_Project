package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

import androidx.camera.view.PreviewView;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableKt$NoOpOnDragStarted$1;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.unit.Density;
import androidx.core.view.MenuHostHelper;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function1;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.StandaloneCoroutine;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SwipeableRowState {
    public final ImmutableList accessibilityActions;
    public final ConnectionPool accessibilityState;
    public final ParcelableSnapshotMutableState animatedOffset$delegate;
    public final CoroutineScope coroutineScope;
    public final DecayAnimationSpecImpl decayAnimationSpec;
    public final Density density;
    public StandaloneCoroutine dragAnimationJob;
    public final MenuHostHelper draggableState;
    public final SwipeBehaviour endToStartBehaviour;
    public final ParcelableSnapshotMutableFloatState layoutWidth$delegate;
    public final ParcelableSnapshotMutableFloatState pendingOffset$delegate;
    public final SwipeBehaviour startToEndBehaviour;
    public final DerivedSnapshotState swipeDirection$delegate;
    public final ParcelableSnapshotMutableState swipeState$delegate;

    public SwipeableRowState(CoroutineScope coroutineScope, Density density, SwipeBehaviour swipeBehaviour, SwipeBehaviour swipeBehaviour2, ImmutableList immutableList, float f, SwipeState swipeState, float f2, float f3) {
        immutableList.getClass();
        swipeState.getClass();
        this.coroutineScope = coroutineScope;
        this.density = density;
        this.startToEndBehaviour = swipeBehaviour;
        this.endToStartBehaviour = swipeBehaviour2;
        this.accessibilityActions = immutableList;
        this.animatedOffset$delegate = Updater.mutableStateOf$default(new Animatable(Float.valueOf(f), ArcSplineKt.FloatToVector, null, 4));
        this.swipeDirection$delegate = Updater.derivedStateOf(new SwipeableRowState$$ExternalSyntheticLambda0(this, 0));
        Updater.derivedStateOf(new SwipeableRowState$$ExternalSyntheticLambda0(this, 2));
        this.swipeState$delegate = Updater.mutableStateOf$default(swipeState);
        this.accessibilityState = new ConnectionPool(27, this);
        this.layoutWidth$delegate = new ParcelableSnapshotMutableFloatState(f2);
        this.pendingOffset$delegate = new ParcelableSnapshotMutableFloatState(f3);
        this.decayAnimationSpec = new DecayAnimationSpecImpl(new PreviewView.AnonymousClass1(density));
        SwipeableRowKt$$ExternalSyntheticLambda2 swipeableRowKt$$ExternalSyntheticLambda2 = new SwipeableRowKt$$ExternalSyntheticLambda2(this, 3);
        DraggableKt$NoOpOnDragStarted$1 draggableKt$NoOpOnDragStarted$1 = DraggableKt.NoOpOnDragStarted;
        this.draggableState = new MenuHostHelper((Function1) swipeableRowKt$$ExternalSyntheticLambda2);
    }

    public final float calculateFinalOffset(boolean z, SwipeDirection swipeDirection, SwipeBehaviour swipeBehaviour) {
        boolean z2 = swipeBehaviour instanceof SwipeBehaviour.Dismiss;
        ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = this.layoutWidth$delegate;
        float floatValue = (z2 && z) ? parcelableSnapshotMutableFloatState.getFloatValue() * 1.2f : ((swipeBehaviour instanceof SwipeBehaviour.Action) && z) ? getPercentageThreshold(swipeBehaviour) * parcelableSnapshotMutableFloatState.getFloatValue() : 0.0f;
        int ordinal = swipeDirection.ordinal();
        int i = 1;
        if (ordinal != 0) {
            if (ordinal == 1) {
                i = -1;
            } else if (ordinal != 2) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return 0.0f;
            }
        }
        float f = floatValue * i;
        if ((f <= 0.0f || !(this.startToEndBehaviour instanceof SwipeBehaviour.Disabled)) && (f >= 0.0f || !(this.endToStartBehaviour instanceof SwipeBehaviour.Disabled))) {
            return f;
        }
        return 0.0f;
    }

    public final SwipeBehaviour getActiveBehaviour$tfa_core_ui_compose_designsystem() {
        return (((Number) getAnimatedOffset().getValue()).floatValue() <= 0.0f && ((Number) getAnimatedOffset().getValue()).floatValue() < 0.0f) ? this.endToStartBehaviour : this.startToEndBehaviour;
    }

    public final Animatable getAnimatedOffset() {
        return (Animatable) this.animatedOffset$delegate.getValue();
    }

    public final SwipeBehaviour getBehaviour(SwipeDirection swipeDirection) {
        int ordinal = swipeDirection.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return this.endToStartBehaviour;
            }
            if (ordinal != 2) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
        }
        return this.startToEndBehaviour;
    }

    public final float getPercentageThreshold(SwipeBehaviour swipeBehaviour) {
        return this.density.mo177toPx0680j_4(swipeBehaviour.mo1031getThresholdD9Ej5fM()) / this.layoutWidth$delegate.getFloatValue();
    }

    public final SwipeState getSwipeState$tfa_core_ui_compose_designsystem() {
        return (SwipeState) this.swipeState$delegate.getValue();
    }

    public final boolean isClosingGesture(float f) {
        if (((Number) getAnimatedOffset().getValue()).floatValue() <= 0.0f || f >= 0.0f) {
            return ((Number) getAnimatedOffset().getValue()).floatValue() < 0.0f && f > 0.0f;
        }
        return true;
    }
}
