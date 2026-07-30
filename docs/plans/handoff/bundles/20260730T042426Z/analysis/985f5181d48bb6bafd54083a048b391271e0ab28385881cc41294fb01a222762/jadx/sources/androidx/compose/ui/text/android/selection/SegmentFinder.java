package androidx.compose.ui.text.android.selection;

/* compiled from: SegmentFinder.android.kt */
/* loaded from: classes.dex */
public interface SegmentFinder {
    int nextEndBoundary(int i);

    int nextStartBoundary(int i);

    int previousEndBoundary(int i);

    int previousStartBoundary(int i);
}
