package androidx.compose.foundation.text.input.internal;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CursorAnimationState {
    public final boolean animate;
    public final AtomicReference animationJob = new AtomicReference(null);
    public final ParcelableSnapshotMutableFloatState cursorAlpha$delegate = new ParcelableSnapshotMutableFloatState(0.0f);

    public CursorAnimationState(boolean z) {
        this.animate = z;
    }
}
