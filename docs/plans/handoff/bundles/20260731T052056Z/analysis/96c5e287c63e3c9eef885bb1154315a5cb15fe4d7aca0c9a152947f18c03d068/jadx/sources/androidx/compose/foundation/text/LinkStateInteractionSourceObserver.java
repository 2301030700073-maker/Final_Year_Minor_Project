package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinkStateInteractionSourceObserver {
    public final MutableInteractionSourceImpl interactionSource;
    public final ParcelableSnapshotMutableIntState interactionState = new ParcelableSnapshotMutableIntState(0);

    public LinkStateInteractionSourceObserver(MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        this.interactionSource = mutableInteractionSourceImpl;
    }
}
