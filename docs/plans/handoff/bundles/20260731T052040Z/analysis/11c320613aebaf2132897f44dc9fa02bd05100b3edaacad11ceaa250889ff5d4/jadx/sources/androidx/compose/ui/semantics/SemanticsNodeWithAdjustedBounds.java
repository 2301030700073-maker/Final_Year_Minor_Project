package androidx.compose.ui.semantics;

import androidx.compose.ui.unit.IntRect;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SemanticsNodeWithAdjustedBounds {
    public final IntRect adjustedBounds;
    public final SemanticsNode semanticsNode;

    public SemanticsNodeWithAdjustedBounds(SemanticsNode semanticsNode, IntRect intRect) {
        this.semanticsNode = semanticsNode;
        this.adjustedBounds = intRect;
    }
}
