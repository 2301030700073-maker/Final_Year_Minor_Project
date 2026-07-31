package androidx.compose.ui.text.android.selection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface SegmentFinder {
    int nextEndBoundary(int i);

    int nextStartBoundary(int i);

    int previousEndBoundary(int i);

    int previousStartBoundary(int i);
}
