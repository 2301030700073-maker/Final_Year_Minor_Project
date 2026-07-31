package androidx.compose.ui.draw;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlockGraphicsLayerModifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class ShadowGraphicsLayerElement extends ModifierNodeElement {
    public final long ambientColor;
    public final boolean clip;
    public final float elevation;
    public final Shape shape;
    public final long spotColor;

    public ShadowGraphicsLayerElement(float f, Shape shape, boolean z, long j, long j2) {
        this.elevation = f;
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
        if (!Dp.m693equalsimpl0(this.elevation, shadowGraphicsLayerElement.elevation) || !Intrinsics.areEqual(this.shape, shadowGraphicsLayerElement.shape) || this.clip != shadowGraphicsLayerElement.clip) {
            return false;
        }
        long j = shadowGraphicsLayerElement.ambientColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.ambientColor, j) && ULong.m820equalsimpl0(this.spotColor, shadowGraphicsLayerElement.spotColor);
    }

    public final int hashCode() {
        int hashCode = (((this.shape.hashCode() + (Float.floatToIntBits(this.elevation) * 31)) * 31) + (this.clip ? 1231 : 1237)) * 31;
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.spotColor) + Animation.CC.m(hashCode, 31, this.ambientColor);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShadowGraphicsLayerElement(elevation=");
        sb.append((Object) Dp.m694toStringimpl(this.elevation));
        sb.append(", shape=");
        sb.append(this.shape);
        sb.append(", clip=");
        sb.append(this.clip);
        sb.append(", ambientColor=");
        Animation.CC.m(this.ambientColor, sb, ", spotColor=");
        sb.append((Object) Color.m434toStringimpl(this.spotColor));
        sb.append(')');
        return sb.toString();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        NodeCoordinator nodeCoordinator;
        BlockGraphicsLayerModifier blockGraphicsLayerModifier = (BlockGraphicsLayerModifier) node;
        NodeChainKt$fillVector$1 nodeChainKt$fillVector$1 = new NodeChainKt$fillVector$1(7, this);
        blockGraphicsLayerModifier.layerBlock = nodeChainKt$fillVector$1;
        if (blockGraphicsLayerModifier.node.isAttached && (nodeCoordinator = HitTestResultKt.m547requireCoordinator64DMado(blockGraphicsLayerModifier, 2).wrapped) != null) {
            nodeCoordinator.updateLayerBlock(nodeChainKt$fillVector$1, true);
        }
    }
}
