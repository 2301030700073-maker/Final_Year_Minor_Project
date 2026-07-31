package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.DensityImpl;
import androidx.work.Operation$State;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LayoutNodeKt {
    public static final DensityImpl DefaultDensity = Operation$State.Density$default();

    public static final Owner requireOwner(LayoutNode layoutNode) {
        Owner owner = layoutNode.owner;
        if (owner != null) {
            return owner;
        }
        throw Modifier.CC.m405m("LayoutNode should be attached to an owner");
    }
}
