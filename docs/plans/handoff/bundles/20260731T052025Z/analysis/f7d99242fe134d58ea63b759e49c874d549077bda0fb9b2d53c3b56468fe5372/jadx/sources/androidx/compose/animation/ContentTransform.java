package androidx.compose.animation;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContentTransform {
    public final ExitTransitionImpl initialContentExit;
    public SizeTransformImpl sizeTransform;
    public final EnterTransitionImpl targetContentEnter;
    public final ParcelableSnapshotMutableFloatState targetContentZIndex$delegate;

    public ContentTransform(EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl, float f, SizeTransformImpl sizeTransformImpl) {
        this.targetContentEnter = enterTransitionImpl;
        this.initialContentExit = exitTransitionImpl;
        this.targetContentZIndex$delegate = new ParcelableSnapshotMutableFloatState(f);
        this.sizeTransform = sizeTransformImpl;
    }
}
