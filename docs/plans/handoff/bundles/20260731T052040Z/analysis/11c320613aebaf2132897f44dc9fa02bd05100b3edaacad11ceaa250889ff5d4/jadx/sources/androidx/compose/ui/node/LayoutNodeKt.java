package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.DensityImpl;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class LayoutNodeKt {
    public static final DensityImpl DefaultDensity = UStringsKt.Density$default();

    public static final Owner requireOwner(LayoutNode layoutNode) {
        Owner owner = layoutNode.owner;
        if (owner != null) {
            return owner;
        }
        throw Modifier.CC.m("LayoutNode should be attached to an owner");
    }
}
