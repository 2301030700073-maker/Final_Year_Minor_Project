package androidx.compose.foundation.text;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.TextRange;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextFieldScrollerPosition {
    public static final CardView.AnonymousClass1 Saver = SaverKt.listSaver(new SaversKt$$ExternalSyntheticLambda0(8), new ChipKt$$ExternalSyntheticLambda2(5));
    public final ParcelableSnapshotMutableFloatState offset$delegate;
    public final ParcelableSnapshotMutableState orientation$delegate;
    public final ParcelableSnapshotMutableFloatState maximum$delegate = new ParcelableSnapshotMutableFloatState(RecyclerView.DECELERATION_RATE);
    public final ParcelableSnapshotMutableIntState viewportSize$delegate = new ParcelableSnapshotMutableIntState(0);
    public Rect previousCursorRect = Rect.Zero;
    public long previousSelection = TextRange.Zero;

    public TextFieldScrollerPosition(Orientation orientation, float f) {
        this.offset$delegate = new ParcelableSnapshotMutableFloatState(f);
        this.orientation$delegate = new ParcelableSnapshotMutableState(orientation, NeverEqualPolicy.INSTANCE$3);
    }

    public final void update(Orientation orientation, Rect rect, int i, int i2) {
        float f = i2 - i;
        this.maximum$delegate.setFloatValue(f);
        float f2 = rect.left;
        float f3 = rect.top;
        Rect rect2 = this.previousCursorRect;
        float f4 = rect2.left;
        ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = this.offset$delegate;
        if (f2 != f4 || f3 != rect2.top) {
            boolean z = orientation == Orientation.Vertical;
            if (z) {
                f2 = f3;
            }
            float f5 = z ? rect.bottom : rect.right;
            float floatValue = parcelableSnapshotMutableFloatState.getFloatValue();
            float f6 = i;
            float f7 = floatValue + f6;
            parcelableSnapshotMutableFloatState.setFloatValue(parcelableSnapshotMutableFloatState.getFloatValue() + ((f5 <= f7 && (f2 >= floatValue || f5 - f2 <= f6)) ? (f2 >= floatValue || f5 - f2 > f6) ? 0.0f : f2 - floatValue : f5 - f7));
            this.previousCursorRect = rect;
        }
        parcelableSnapshotMutableFloatState.setFloatValue(RegexKt.coerceIn(parcelableSnapshotMutableFloatState.getFloatValue(), RecyclerView.DECELERATION_RATE, f));
        this.viewportSize$delegate.setIntValue(i);
    }
}
