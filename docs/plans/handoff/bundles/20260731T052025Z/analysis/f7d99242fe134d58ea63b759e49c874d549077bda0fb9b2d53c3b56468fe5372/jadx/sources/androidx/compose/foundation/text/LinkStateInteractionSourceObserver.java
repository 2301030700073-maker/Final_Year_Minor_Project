package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LinkStateInteractionSourceObserver {
    public final MutableInteractionSourceImpl interactionSource;
    public final ParcelableSnapshotMutableIntState interactionState = new ParcelableSnapshotMutableIntState(0);

    public LinkStateInteractionSourceObserver(MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        this.interactionSource = mutableInteractionSourceImpl;
    }
}
