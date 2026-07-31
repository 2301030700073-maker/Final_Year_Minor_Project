package androidx.compose.ui.text.android.selection;

import androidx.room.Room;
import java.text.BreakIterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GraphemeClusterSegmentFinderUnderApi29 extends Room {
    public final BreakIterator breakIterator;

    public GraphemeClusterSegmentFinderUnderApi29(CharSequence charSequence) {
        super(7);
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(charSequence.toString());
        this.breakIterator = characterInstance;
    }

    @Override // androidx.room.Room
    public final int next(int i) {
        return this.breakIterator.following(i);
    }

    @Override // androidx.room.Room
    public final int previous(int i) {
        return this.breakIterator.preceding(i);
    }
}
