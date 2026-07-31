package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationState;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimationResult {
    public final AnimationState currentAnimationState;
    public final Float remainingOffset;

    public AnimationResult(Float f, AnimationState animationState) {
        this.remainingOffset = f;
        this.currentAnimationState = animationState;
    }
}
