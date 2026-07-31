package androidx.compose.ui.text.android.selection;

import androidx.compose.ui.unit.IntOffsetKt;
import java.text.BreakIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GraphemeClusterSegmentFinderUnderApi29 extends IntOffsetKt {
    public final BreakIterator breakIterator;

    public GraphemeClusterSegmentFinderUnderApi29(CharSequence charSequence) {
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(charSequence.toString());
        this.breakIterator = characterInstance;
    }

    @Override // androidx.compose.ui.unit.IntOffsetKt
    public final int next(int i) {
        return this.breakIterator.following(i);
    }

    @Override // androidx.compose.ui.unit.IntOffsetKt
    public final int previous(int i) {
        return this.breakIterator.preceding(i);
    }
}
