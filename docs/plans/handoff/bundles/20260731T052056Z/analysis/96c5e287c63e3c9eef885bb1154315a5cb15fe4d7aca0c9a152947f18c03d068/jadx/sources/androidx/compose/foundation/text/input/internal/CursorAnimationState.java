package androidx.compose.foundation.text.input.internal;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CursorAnimationState {
    public final boolean animate;
    public final AtomicReference animationJob = new AtomicReference(null);
    public final ParcelableSnapshotMutableFloatState cursorAlpha$delegate = new ParcelableSnapshotMutableFloatState(RecyclerView.DECELERATION_RATE);

    public CursorAnimationState(boolean z) {
        this.animate = z;
    }
}
