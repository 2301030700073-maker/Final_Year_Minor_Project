package androidx.compose.animation;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContentTransform {
    public final ExitTransitionImpl initialContentExit;
    public final SizeTransformImpl sizeTransform;
    public final EnterTransitionImpl targetContentEnter;
    public final ParcelableSnapshotMutableFloatState targetContentZIndex$delegate;

    public ContentTransform(EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl, float f, SizeTransformImpl sizeTransformImpl) {
        this.targetContentEnter = enterTransitionImpl;
        this.initialContentExit = exitTransitionImpl;
        this.targetContentZIndex$delegate = new ParcelableSnapshotMutableFloatState(f);
        this.sizeTransform = sizeTransformImpl;
    }
}
