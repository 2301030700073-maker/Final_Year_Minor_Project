package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawModifierNodeImpl;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/BorderModifierNodeElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/BorderModifierNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class BorderModifierNodeElement extends ModifierNodeElement {
    public final SolidColor brush;
    public final Shape shape;
    public final float width;

    public BorderModifierNodeElement(float f, SolidColor solidColor, Shape shape) {
        this.width = f;
        this.brush = solidColor;
        this.shape = shape;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new BorderModifierNode(this.width, this.brush, this.shape);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderModifierNodeElement)) {
            return false;
        }
        BorderModifierNodeElement borderModifierNodeElement = (BorderModifierNodeElement) obj;
        return Dp.m693equalsimpl0(this.width, borderModifierNodeElement.width) && this.brush.equals(borderModifierNodeElement.brush) && Intrinsics.areEqual(this.shape, borderModifierNodeElement.shape);
    }

    public final int hashCode() {
        return this.shape.hashCode() + ((this.brush.hashCode() + (Float.floatToIntBits(this.width) * 31)) * 31);
    }

    public final String toString() {
        return "BorderModifierNodeElement(width=" + ((Object) Dp.m694toStringimpl(this.width)) + ", brush=" + this.brush + ", shape=" + this.shape + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        BorderModifierNode borderModifierNode = (BorderModifierNode) node;
        float f = borderModifierNode.width;
        CacheDrawModifierNodeImpl cacheDrawModifierNodeImpl = borderModifierNode.drawWithCacheModifierNode;
        float f2 = this.width;
        if (!Dp.m693equalsimpl0(f, f2)) {
            borderModifierNode.width = f2;
            cacheDrawModifierNodeImpl.invalidateDrawCache();
        }
        SolidColor solidColor = borderModifierNode.brush;
        SolidColor solidColor2 = this.brush;
        if (!Intrinsics.areEqual(solidColor, solidColor2)) {
            borderModifierNode.brush = solidColor2;
            cacheDrawModifierNodeImpl.invalidateDrawCache();
        }
        Shape shape = borderModifierNode.shape;
        Shape shape2 = this.shape;
        if (Intrinsics.areEqual(shape, shape2)) {
            return;
        }
        borderModifierNode.shape = shape2;
        cacheDrawModifierNodeImpl.invalidateDrawCache();
        HitTestResultKt.invalidateSemantics(borderModifierNode);
    }
}
