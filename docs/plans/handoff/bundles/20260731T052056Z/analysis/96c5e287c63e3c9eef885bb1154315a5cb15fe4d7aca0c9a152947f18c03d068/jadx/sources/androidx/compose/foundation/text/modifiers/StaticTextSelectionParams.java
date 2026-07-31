package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.text.TextLayoutResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StaticTextSelectionParams {
    public static final StaticTextSelectionParams Empty = new StaticTextSelectionParams(null, null);
    public final LayoutCoordinates layoutCoordinates;
    public final TextLayoutResult textLayoutResult;

    public StaticTextSelectionParams(LayoutCoordinates layoutCoordinates, TextLayoutResult textLayoutResult) {
        this.layoutCoordinates = layoutCoordinates;
        this.textLayoutResult = textLayoutResult;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.layout.LayoutCoordinates] */
    public static StaticTextSelectionParams copy$default(StaticTextSelectionParams staticTextSelectionParams, NodeCoordinator nodeCoordinator, TextLayoutResult textLayoutResult, int i) {
        NodeCoordinator nodeCoordinator2 = nodeCoordinator;
        if ((i & 1) != 0) {
            nodeCoordinator2 = staticTextSelectionParams.layoutCoordinates;
        }
        if ((i & 2) != 0) {
            textLayoutResult = staticTextSelectionParams.textLayoutResult;
        }
        staticTextSelectionParams.getClass();
        return new StaticTextSelectionParams(nodeCoordinator2, textLayoutResult);
    }
}
