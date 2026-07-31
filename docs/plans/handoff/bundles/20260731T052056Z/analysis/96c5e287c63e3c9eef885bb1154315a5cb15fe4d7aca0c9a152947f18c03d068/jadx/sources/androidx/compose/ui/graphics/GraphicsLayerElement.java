package androidx.compose.ui.graphics;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/GraphicsLayerElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class GraphicsLayerElement extends ModifierNodeElement {
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
        if (Float.compare(this.scaleX, graphicsLayerElement.scaleX) != 0 || Float.compare(this.scaleY, graphicsLayerElement.scaleY) != 0 || Float.compare(this.alpha, graphicsLayerElement.alpha) != 0 || Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) != 0 || Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) != 0 || Float.compare(this.shadowElevation, graphicsLayerElement.shadowElevation) != 0 || Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) != 0 || Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) != 0 || Float.compare(this.rotationZ, graphicsLayerElement.rotationZ) != 0 || Float.compare(8.0f, 8.0f) != 0 || !TransformOrigin.m455equalsimpl0(this.transformOrigin, graphicsLayerElement.transformOrigin) || !Intrinsics.areEqual(this.shape, graphicsLayerElement.shape) || this.clip != graphicsLayerElement.clip) {
            return false;
        }
        long j = graphicsLayerElement.ambientShadowColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.ambientShadowColor, j) && ULong.m820equalsimpl0(this.spotShadowColor, graphicsLayerElement.spotShadowColor);
    }

    public final int hashCode() {
        int m = Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Float.floatToIntBits(this.scaleX) * 31, this.scaleY, 31), this.alpha, 31), RecyclerView.DECELERATION_RATE, 31), RecyclerView.DECELERATION_RATE, 31), this.shadowElevation, 31), RecyclerView.DECELERATION_RATE, 31), RecyclerView.DECELERATION_RATE, 31), this.rotationZ, 31), 8.0f, 31);
        int i = TransformOrigin.$r8$clinit;
        long j = this.transformOrigin;
        int hashCode = (((this.shape.hashCode() + ((((int) (j ^ (j >>> 32))) + m) * 31)) * 31) + (this.clip ? 1231 : 1237)) * 961;
        int i2 = Color.$r8$clinit;
        return (((Modifier.CC.m(this.spotShadowColor) + Animation.CC.m(hashCode, 31, this.ambientShadowColor)) * 961) + 3) * 31;
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
        sb.append((Object) TransformOrigin.m456toStringimpl(this.transformOrigin));
        sb.append(", shape=");
        sb.append(this.shape);
        sb.append(", clip=");
        sb.append(this.clip);
        sb.append(", renderEffect=null, ambientShadowColor=");
        Animation.CC.m(this.ambientShadowColor, sb, ", spotShadowColor=");
        sb.append((Object) Color.m434toStringimpl(this.spotShadowColor));
        sb.append(", compositingStrategy=CompositingStrategy(value=0), blendMode=");
        sb.append((Object) ColorKt.m445toStringimpl(3));
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
        if (simpleGraphicsLayerModifier.node.isAttached && (nodeCoordinator = HitTestResultKt.m547requireCoordinator64DMado(simpleGraphicsLayerModifier, 2).wrapped) != null) {
            nodeCoordinator.updateLayerBlock(nodeChainKt$fillVector$1, true);
        }
    }
}
