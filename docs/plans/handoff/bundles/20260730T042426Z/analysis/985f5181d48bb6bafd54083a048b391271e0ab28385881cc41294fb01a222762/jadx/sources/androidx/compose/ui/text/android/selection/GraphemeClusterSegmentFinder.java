package androidx.compose.ui.text.android.selection;

/* compiled from: SegmentFinder.android.kt */
/* loaded from: classes.dex */
public abstract class GraphemeClusterSegmentFinder implements SegmentFinder {
    public abstract int next(int i);

    public abstract int previous(int i);

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int previousStartBoundary(int i) {
        return previous(i);
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int previousEndBoundary(int i) {
        int previous = previous(i);
        if (previous == -1 || previous(previous) == -1) {
            return -1;
        }
        return previous;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int nextStartBoundary(int i) {
        int next = next(i);
        if (next == -1 || next(next) == -1) {
            return -1;
        }
        return next;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int nextEndBoundary(int i) {
        return next(i);
    }
}
