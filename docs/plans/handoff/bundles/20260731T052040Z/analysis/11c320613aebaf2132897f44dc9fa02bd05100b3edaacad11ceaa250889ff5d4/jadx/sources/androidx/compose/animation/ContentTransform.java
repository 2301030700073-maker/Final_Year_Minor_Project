package androidx.compose.animation;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ContentTransform {
    public final ExitTransition initialContentExit;
    public final SizeTransformImpl sizeTransform;
    public final EnterTransition targetContentEnter;
    public final ParcelableSnapshotMutableFloatState targetContentZIndex$delegate;

    public ContentTransform(EnterTransition enterTransition, ExitTransition exitTransition, float f, SizeTransformImpl sizeTransformImpl) {
        this.targetContentEnter = enterTransition;
        this.initialContentExit = exitTransition;
        this.targetContentZIndex$delegate = new ParcelableSnapshotMutableFloatState(f);
        this.sizeTransform = sizeTransformImpl;
    }

    public ContentTransform(EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl) {
        this(enterTransitionImpl, exitTransitionImpl, 0.0f, new SizeTransformImpl(AnimatedContentKt$SizeTransform$1.INSTANCE));
    }
}
