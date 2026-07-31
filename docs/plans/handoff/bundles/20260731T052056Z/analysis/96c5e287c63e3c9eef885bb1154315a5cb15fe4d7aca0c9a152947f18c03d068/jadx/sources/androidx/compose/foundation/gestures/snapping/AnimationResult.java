package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimationResult {
    public final AnimationState currentAnimationState;
    public final Float remainingOffset;

    public AnimationResult(Float f, AnimationState animationState) {
        this.remainingOffset = f;
        this.currentAnimationState = animationState;
    }
}
