package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.DensityImpl;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LayoutNodeKt {
    public static final DensityImpl DefaultDensity = UuidKt.Density$default();

    public static final Owner requireOwner(LayoutNode layoutNode) {
        Owner owner = layoutNode.owner;
        if (owner != null) {
            return owner;
        }
        throw Modifier.CC.m("LayoutNode should be attached to an owner");
    }
}
