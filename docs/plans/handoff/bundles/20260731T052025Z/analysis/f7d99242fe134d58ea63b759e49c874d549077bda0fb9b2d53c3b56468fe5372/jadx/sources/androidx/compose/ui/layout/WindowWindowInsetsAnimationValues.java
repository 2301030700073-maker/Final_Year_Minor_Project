package androidx.compose.ui.layout;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableLongState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WindowWindowInsetsAnimationValues {
    public final RectRulersImpl source;
    public final RectRulersImpl target;
    public final ParcelableSnapshotMutableState isVisible$delegate = Updater.mutableStateOf$default(Boolean.TRUE);
    public final ParcelableSnapshotMutableState isAnimating$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
    public final ParcelableSnapshotMutableFloatState fraction$delegate = new ParcelableSnapshotMutableFloatState(0.0f);
    public final ParcelableSnapshotMutableLongState durationMillis$delegate = new ParcelableSnapshotMutableLongState(0);
    public final ParcelableSnapshotMutableFloatState alpha$delegate = new ParcelableSnapshotMutableFloatState(1.0f);
    public long current = -1;
    public long maximum = -1;
    public long sourceValueInsets = -1;
    public long targetValueInsets = -1;

    public WindowWindowInsetsAnimationValues(String str) {
        this.source = new RectRulersImpl(str.concat(" source"));
        this.target = new RectRulersImpl(str.concat(" target"));
    }
}
