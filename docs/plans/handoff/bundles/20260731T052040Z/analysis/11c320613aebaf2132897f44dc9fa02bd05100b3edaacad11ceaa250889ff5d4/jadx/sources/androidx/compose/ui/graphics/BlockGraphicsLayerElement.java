package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class BlockGraphicsLayerElement extends ModifierNodeElement {
    public final Function1 block;

    public BlockGraphicsLayerElement(Function1 function1) {
        this.block = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        BlockGraphicsLayerModifier blockGraphicsLayerModifier = new BlockGraphicsLayerModifier();
        blockGraphicsLayerModifier.layerBlock = this.block;
        return blockGraphicsLayerModifier;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BlockGraphicsLayerElement) {
            return this.block == ((BlockGraphicsLayerElement) obj).block;
        }
        return false;
    }

    public final int hashCode() {
        return this.block.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        NodeCoordinator nodeCoordinator;
        BlockGraphicsLayerModifier blockGraphicsLayerModifier = (BlockGraphicsLayerModifier) node;
        Function1 function1 = this.block;
        blockGraphicsLayerModifier.layerBlock = function1;
        if (blockGraphicsLayerModifier.node.isAttached && (nodeCoordinator = HitTestResultKt.m317requireCoordinator64DMado(blockGraphicsLayerModifier, 2).wrapped) != null) {
            nodeCoordinator.updateLayerBlock(function1, true);
        }
    }
}
