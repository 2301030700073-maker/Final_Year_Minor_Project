package androidx.compose.ui.draw;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlockGraphicsLayerModifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.Dp;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ShadowGraphicsLayerElement extends ModifierNodeElement {
    public final long ambientColor;
    public final boolean clip;
    public final Shape shape;
    public final long spotColor;

    public ShadowGraphicsLayerElement(Shape shape, boolean z, long j, long j2) {
        this.shape = shape;
        this.clip = z;
        this.ambientColor = j;
        this.spotColor = j2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new BlockGraphicsLayerModifier(new NodeChainKt$fillVector$1(7, this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShadowGraphicsLayerElement)) {
            return false;
        }
        ShadowGraphicsLayerElement shadowGraphicsLayerElement = (ShadowGraphicsLayerElement) obj;
        return Dp.m745equalsimpl0(3.0f, 3.0f) && Intrinsics.areEqual(this.shape, shadowGraphicsLayerElement.shape) && this.clip == shadowGraphicsLayerElement.clip && Color.m482equalsimpl0(this.ambientColor, shadowGraphicsLayerElement.ambientColor) && Color.m482equalsimpl0(this.spotColor, shadowGraphicsLayerElement.spotColor);
    }

    public final int hashCode() {
        int hashCode = (((this.shape.hashCode() + (Float.floatToIntBits(3.0f) * 31)) * 31) + (this.clip ? 1231 : 1237)) * 31;
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.spotColor) + Config.CC.m(hashCode, 31, this.ambientColor);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShadowGraphicsLayerElement(elevation=");
        sb.append((Object) Dp.m746toStringimpl(3.0f));
        sb.append(", shape=");
        sb.append(this.shape);
        sb.append(", clip=");
        sb.append(this.clip);
        sb.append(", ambientColor=");
        Config.CC.m(this.ambientColor, sb, ", spotColor=");
        sb.append((Object) Color.m488toStringimpl(this.spotColor));
        sb.append(')');
        return sb.toString();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        NodeCoordinator nodeCoordinator;
        BlockGraphicsLayerModifier blockGraphicsLayerModifier = (BlockGraphicsLayerModifier) node;
        NodeChainKt$fillVector$1 nodeChainKt$fillVector$1 = new NodeChainKt$fillVector$1(7, this);
        blockGraphicsLayerModifier.layerBlock = nodeChainKt$fillVector$1;
        if (blockGraphicsLayerModifier.node.isAttached && (nodeCoordinator = HitTestResultKt.m604requireCoordinator64DMado(blockGraphicsLayerModifier, 2).wrapped) != null) {
            nodeCoordinator.updateLayerBlock(nodeChainKt$fillVector$1, true);
        }
    }
}
