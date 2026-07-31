package androidx.compose.material3;

import androidx.cardview.widget.CardView;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TopAppBarState {
    public static final CardView.AnonymousClass1 Saver = SaverKt.listSaver(new SaversKt$$ExternalSyntheticLambda0(18), new ChipKt$$ExternalSyntheticLambda2(24));
    public final ParcelableSnapshotMutableFloatState _heightOffset;
    public final ParcelableSnapshotMutableFloatState contentOffset$delegate;
    public float heightOffsetLimit;

    public TopAppBarState(float f, float f2, float f3) {
        this.heightOffsetLimit = f;
        this.contentOffset$delegate = new ParcelableSnapshotMutableFloatState(f3);
        this._heightOffset = new ParcelableSnapshotMutableFloatState(f2);
    }
}
