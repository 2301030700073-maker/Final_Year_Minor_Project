package androidx.compose.ui.node;

import androidx.compose.ui.platform.AndroidComposeView$snapshotObserver$1;
import androidx.preference.PreferenceManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OwnerSnapshotObserver {
    public final PreferenceManager observer;

    public OwnerSnapshotObserver(AndroidComposeView$snapshotObserver$1 androidComposeView$snapshotObserver$1) {
        this.observer = new PreferenceManager(androidComposeView$snapshotObserver$1);
    }
}
