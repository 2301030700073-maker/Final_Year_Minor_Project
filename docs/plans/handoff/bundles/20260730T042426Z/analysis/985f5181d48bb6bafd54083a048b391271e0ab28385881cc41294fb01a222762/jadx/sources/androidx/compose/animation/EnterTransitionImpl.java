package androidx.compose.animation;

/* compiled from: EnterExitTransition.kt */
/* loaded from: classes.dex */
final class EnterTransitionImpl extends EnterTransition {
    private final TransitionData data;

    public EnterTransitionImpl(TransitionData transitionData) {
        super(null);
        this.data = transitionData;
    }

    @Override // androidx.compose.animation.EnterTransition
    public TransitionData getData$animation_release() {
        return this.data;
    }
}
