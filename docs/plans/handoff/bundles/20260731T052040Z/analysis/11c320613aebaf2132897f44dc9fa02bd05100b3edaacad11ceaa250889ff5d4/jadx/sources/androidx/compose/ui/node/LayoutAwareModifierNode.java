package androidx.compose.ui.node;

import androidx.compose.ui.layout.LayoutCoordinates;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface LayoutAwareModifierNode extends MeasuredSizeAwareModifierNode, DelegatableNode {
    void onPlaced(LayoutCoordinates layoutCoordinates);
}
