package androidx.compose.ui.graphics;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GraphicsLayerElement extends ModifierNodeElement {
    public final float alpha;
    public final long ambientShadowColor;
    public final boolean clip;
    public final float rotationZ;
    public final float scaleX;
    public final float scaleY;
    public final float shadowElevation;
    public final Shape shape;
    public final long spotShadowColor;
    public final long transformOrigin;

    public GraphicsLayerElement(float f, float f2, float f3, float f4, float f5, long j, Shape shape, boolean z, long j2, long j3) {
        this.scaleX = f;
        this.scaleY = f2;
        this.alpha = f3;
        this.shadowElevation = f4;
        this.rotationZ = f5;
        this.transformOrigin = j;
        this.shape = shape;
        this.clip = z;
        this.ambientShadowColor = j2;
        this.spotShadowColor = j3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        SimpleGraphicsLayerModifier simpleGraphicsLayerModifier = new SimpleGraphicsLayerModifier();
        simpleGraphicsLayerModifier.scaleX = this.scaleX;
        simpleGraphicsLayerModifier.scaleY = this.scaleY;
        simpleGraphicsLayerModifier.alpha = this.alpha;
        simpleGraphicsLayerModifier.shadowElevation = this.shadowElevation;
        simpleGraphicsLayerModifier.rotationZ = this.rotationZ;
        simpleGraphicsLayerModifier.cameraDistance = 8.0f;
        simpleGraphicsLayerModifier.transformOrigin = this.transformOrigin;
        simpleGraphicsLayerModifier.shape = this.shape;
        simpleGraphicsLayerModifier.clip = this.clip;
        simpleGraphicsLayerModifier.ambientShadowColor = this.ambientShadowColor;
        simpleGraphicsLayerModifier.spotShadowColor = this.spotShadowColor;
        simpleGraphicsLayerModifier.blendMode = 3;
        simpleGraphicsLayerModifier.layerBlock = new NodeChainKt$fillVector$1(8, simpleGraphicsLayerModifier);
        return simpleGraphicsLayerModifier;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GraphicsLayerElement)) {
            return false;
        }
        GraphicsLayerElement graphicsLayerElement = (GraphicsLayerElement) obj;
        return Float.compare(this.scaleX, graphicsLayerElement.scaleX) == 0 && Float.compare(this.scaleY, graphicsLayerElement.scaleY) == 0 && Float.compare(this.alpha, graphicsLayerElement.alpha) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(this.shadowElevation, graphicsLayerElement.shadowElevation) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(this.rotationZ, graphicsLayerElement.rotationZ) == 0 && Float.compare(8.0f, 8.0f) == 0 && TransformOrigin.m512equalsimpl0(this.transformOrigin, graphicsLayerElement.transformOrigin) && Intrinsics.areEqual(this.shape, graphicsLayerElement.shape) && this.clip == graphicsLayerElement.clip && Color.m482equalsimpl0(this.ambientShadowColor, graphicsLayerElement.ambientShadowColor) && Color.m482equalsimpl0(this.spotShadowColor, graphicsLayerElement.spotShadowColor);
    }

    public final int hashCode() {
        int m = CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(this.scaleX) * 31, this.scaleY, 31), this.alpha, 31), 0.0f, 31), 0.0f, 31), this.shadowElevation, 31), 0.0f, 31), 0.0f, 31), this.rotationZ, 31), 8.0f, 31);
        int i = TransformOrigin.$r8$clinit;
        long j = this.transformOrigin;
        int hashCode = (((this.shape.hashCode() + ((((int) (j ^ (j >>> 32))) + m) * 31)) * 31) + (this.clip ? 1231 : 1237)) * 961;
        int i2 = Color.$r8$clinit;
        return (((ULong.m980hashCodeimpl(this.spotShadowColor) + Config.CC.m(hashCode, 31, this.ambientShadowColor)) * 961) + 3) * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GraphicsLayerElement(scaleX=");
        sb.append(this.scaleX);
        sb.append(", scaleY=");
        sb.append(this.scaleY);
        sb.append(", alpha=");
        sb.append(this.alpha);
        sb.append(", translationX=0.0, translationY=0.0, shadowElevation=");
        sb.append(this.shadowElevation);
        sb.append(", rotationX=0.0, rotationY=0.0, rotationZ=");
        sb.append(this.rotationZ);
        sb.append(", cameraDistance=8.0, transformOrigin=");
        sb.append((Object) TransformOrigin.m513toStringimpl(this.transformOrigin));
        sb.append(", shape=");
        sb.append(this.shape);
        sb.append(", clip=");
        sb.append(this.clip);
        sb.append(", renderEffect=null, ambientShadowColor=");
        Config.CC.m(this.ambientShadowColor, sb, ", spotShadowColor=");
        sb.append((Object) Color.m488toStringimpl(this.spotShadowColor));
        sb.append(", compositingStrategy=CompositingStrategy(value=0), blendMode=");
        sb.append((Object) ColorKt.m501toStringimpl(3));
        sb.append(", colorFilter=null)");
        return sb.toString();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        NodeCoordinator nodeCoordinator;
        SimpleGraphicsLayerModifier simpleGraphicsLayerModifier = (SimpleGraphicsLayerModifier) node;
        simpleGraphicsLayerModifier.scaleX = this.scaleX;
        simpleGraphicsLayerModifier.scaleY = this.scaleY;
        simpleGraphicsLayerModifier.alpha = this.alpha;
        simpleGraphicsLayerModifier.shadowElevation = this.shadowElevation;
        simpleGraphicsLayerModifier.rotationZ = this.rotationZ;
        simpleGraphicsLayerModifier.cameraDistance = 8.0f;
        simpleGraphicsLayerModifier.transformOrigin = this.transformOrigin;
        simpleGraphicsLayerModifier.shape = this.shape;
        simpleGraphicsLayerModifier.clip = this.clip;
        simpleGraphicsLayerModifier.ambientShadowColor = this.ambientShadowColor;
        simpleGraphicsLayerModifier.spotShadowColor = this.spotShadowColor;
        simpleGraphicsLayerModifier.blendMode = 3;
        NodeChainKt$fillVector$1 nodeChainKt$fillVector$1 = simpleGraphicsLayerModifier.layerBlock;
        if (simpleGraphicsLayerModifier.node.isAttached && (nodeCoordinator = HitTestResultKt.m604requireCoordinator64DMado(simpleGraphicsLayerModifier, 2).wrapped) != null) {
            nodeCoordinator.updateLayerBlock(nodeChainKt$fillVector$1, true);
        }
    }
}
