package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GraphicsLayerElement extends ModifierNodeElement {
    public final long ambientShadowColor;
    public final boolean clip;
    public final float shadowElevation;
    public final Shape shape;
    public final long spotShadowColor;
    public final long transformOrigin;

    public GraphicsLayerElement(float f, long j, Shape shape, boolean z, long j2, long j3) {
        this.shadowElevation = f;
        this.transformOrigin = j;
        this.shape = shape;
        this.clip = z;
        this.ambientShadowColor = j2;
        this.spotShadowColor = j3;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.compose.ui.graphics.SimpleGraphicsLayerModifier$layerBlock$1] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        final SimpleGraphicsLayerModifier simpleGraphicsLayerModifier = new SimpleGraphicsLayerModifier();
        simpleGraphicsLayerModifier.scaleX = 1.0f;
        simpleGraphicsLayerModifier.scaleY = 1.0f;
        simpleGraphicsLayerModifier.alpha = 1.0f;
        simpleGraphicsLayerModifier.shadowElevation = this.shadowElevation;
        simpleGraphicsLayerModifier.cameraDistance = 8.0f;
        simpleGraphicsLayerModifier.transformOrigin = this.transformOrigin;
        simpleGraphicsLayerModifier.shape = this.shape;
        simpleGraphicsLayerModifier.clip = this.clip;
        simpleGraphicsLayerModifier.ambientShadowColor = this.ambientShadowColor;
        simpleGraphicsLayerModifier.spotShadowColor = this.spotShadowColor;
        simpleGraphicsLayerModifier.blendMode = 3;
        simpleGraphicsLayerModifier.layerBlock = new Function1() { // from class: androidx.compose.ui.graphics.SimpleGraphicsLayerModifier$layerBlock$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj;
                reusableGraphicsLayerScope.setScaleX(SimpleGraphicsLayerModifier.this.scaleX);
                reusableGraphicsLayerScope.setScaleY(SimpleGraphicsLayerModifier.this.scaleY);
                reusableGraphicsLayerScope.setAlpha(SimpleGraphicsLayerModifier.this.alpha);
                SimpleGraphicsLayerModifier.this.getClass();
                SimpleGraphicsLayerModifier.this.getClass();
                reusableGraphicsLayerScope.setShadowElevation(SimpleGraphicsLayerModifier.this.shadowElevation);
                SimpleGraphicsLayerModifier.this.getClass();
                SimpleGraphicsLayerModifier.this.getClass();
                SimpleGraphicsLayerModifier.this.getClass();
                SimpleGraphicsLayerModifier simpleGraphicsLayerModifier2 = SimpleGraphicsLayerModifier.this;
                float f = simpleGraphicsLayerModifier2.cameraDistance;
                if (reusableGraphicsLayerScope.cameraDistance != f) {
                    reusableGraphicsLayerScope.mutatedFields |= 2048;
                    reusableGraphicsLayerScope.cameraDistance = f;
                }
                reusableGraphicsLayerScope.m252setTransformOrigin__ExYCQ(simpleGraphicsLayerModifier2.transformOrigin);
                reusableGraphicsLayerScope.setShape(SimpleGraphicsLayerModifier.this.shape);
                reusableGraphicsLayerScope.setClip(SimpleGraphicsLayerModifier.this.clip);
                SimpleGraphicsLayerModifier.this.getClass();
                long j = SimpleGraphicsLayerModifier.this.ambientShadowColor;
                if (!Color.m244equalsimpl0(reusableGraphicsLayerScope.ambientShadowColor, j)) {
                    reusableGraphicsLayerScope.mutatedFields |= 64;
                    reusableGraphicsLayerScope.ambientShadowColor = j;
                }
                long j2 = SimpleGraphicsLayerModifier.this.spotShadowColor;
                if (!Color.m244equalsimpl0(reusableGraphicsLayerScope.spotShadowColor, j2)) {
                    reusableGraphicsLayerScope.mutatedFields |= 128;
                    reusableGraphicsLayerScope.spotShadowColor = j2;
                }
                SimpleGraphicsLayerModifier.this.getClass();
                SimpleGraphicsLayerModifier simpleGraphicsLayerModifier3 = SimpleGraphicsLayerModifier.this;
                int i = simpleGraphicsLayerModifier3.blendMode;
                if (reusableGraphicsLayerScope.blendMode != i) {
                    reusableGraphicsLayerScope.mutatedFields |= 524288;
                    reusableGraphicsLayerScope.blendMode = i;
                }
                simpleGraphicsLayerModifier3.getClass();
                return Unit.INSTANCE;
            }
        };
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
        return Float.compare(1.0f, 1.0f) == 0 && Float.compare(1.0f, 1.0f) == 0 && Float.compare(1.0f, 1.0f) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(this.shadowElevation, graphicsLayerElement.shadowElevation) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(8.0f, 8.0f) == 0 && TransformOrigin.m253equalsimpl0(this.transformOrigin, graphicsLayerElement.transformOrigin) && Intrinsics.areEqual(this.shape, graphicsLayerElement.shape) && this.clip == graphicsLayerElement.clip && Color.m244equalsimpl0(this.ambientShadowColor, graphicsLayerElement.ambientShadowColor) && Color.m244equalsimpl0(this.spotShadowColor, graphicsLayerElement.spotShadowColor);
    }

    public final int hashCode() {
        int m = Modifier.CC.m(8.0f, Modifier.CC.m(0.0f, Modifier.CC.m(0.0f, Modifier.CC.m(0.0f, Modifier.CC.m(this.shadowElevation, Modifier.CC.m(0.0f, Modifier.CC.m(0.0f, Modifier.CC.m(1.0f, Modifier.CC.m(1.0f, Float.floatToIntBits(1.0f) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31);
        int i = TransformOrigin.$r8$clinit;
        long j = this.transformOrigin;
        int hashCode = (((this.shape.hashCode() + ((((int) (j ^ (j >>> 32))) + m) * 31)) * 31) + (this.clip ? 1231 : 1237)) * 961;
        int i2 = Color.$r8$clinit;
        return (((ULong.m658hashCodeimpl(this.spotShadowColor) + Modifier.CC.m(hashCode, this.ambientShadowColor, 31)) * 961) + 3) * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GraphicsLayerElement(scaleX=1.0, scaleY=1.0, alpha=1.0, translationX=0.0, translationY=0.0, shadowElevation=");
        sb.append(this.shadowElevation);
        sb.append(", rotationX=0.0, rotationY=0.0, rotationZ=0.0, cameraDistance=8.0, transformOrigin=");
        sb.append((Object) TransformOrigin.m254toStringimpl(this.transformOrigin));
        sb.append(", shape=");
        sb.append(this.shape);
        sb.append(", clip=");
        sb.append(this.clip);
        sb.append(", renderEffect=null, ambientShadowColor=");
        Modifier.CC.m181m(this.ambientShadowColor, ", spotShadowColor=", sb);
        sb.append((Object) Color.m250toStringimpl(this.spotShadowColor));
        sb.append(", compositingStrategy=CompositingStrategy(value=0), blendMode=");
        sb.append((Object) Brush.m236toStringimpl(3));
        sb.append(", colorFilter=null)");
        return sb.toString();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        NodeCoordinator nodeCoordinator;
        SimpleGraphicsLayerModifier simpleGraphicsLayerModifier = (SimpleGraphicsLayerModifier) node;
        simpleGraphicsLayerModifier.scaleX = 1.0f;
        simpleGraphicsLayerModifier.scaleY = 1.0f;
        simpleGraphicsLayerModifier.alpha = 1.0f;
        simpleGraphicsLayerModifier.shadowElevation = this.shadowElevation;
        simpleGraphicsLayerModifier.cameraDistance = 8.0f;
        simpleGraphicsLayerModifier.transformOrigin = this.transformOrigin;
        simpleGraphicsLayerModifier.shape = this.shape;
        simpleGraphicsLayerModifier.clip = this.clip;
        simpleGraphicsLayerModifier.ambientShadowColor = this.ambientShadowColor;
        simpleGraphicsLayerModifier.spotShadowColor = this.spotShadowColor;
        simpleGraphicsLayerModifier.blendMode = 3;
        SimpleGraphicsLayerModifier$layerBlock$1 simpleGraphicsLayerModifier$layerBlock$1 = simpleGraphicsLayerModifier.layerBlock;
        if (simpleGraphicsLayerModifier.node.isAttached && (nodeCoordinator = HitTestResultKt.m317requireCoordinator64DMado(simpleGraphicsLayerModifier, 2).wrapped) != null) {
            nodeCoordinator.updateLayerBlock(simpleGraphicsLayerModifier$layerBlock$1, true);
        }
    }
}
