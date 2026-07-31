package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawModifierNodeImpl;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BorderModifierNodeElement extends ModifierNodeElement {
    public final Brush brush;
    public final Shape shape;
    public final float width;

    public BorderModifierNodeElement(float f, Brush brush, Shape shape) {
        this.width = f;
        this.brush = brush;
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
        return Dp.m745equalsimpl0(this.width, borderModifierNodeElement.width) && Intrinsics.areEqual(this.brush, borderModifierNodeElement.brush) && Intrinsics.areEqual(this.shape, borderModifierNodeElement.shape);
    }

    public final int hashCode() {
        return this.shape.hashCode() + ((this.brush.hashCode() + (Float.floatToIntBits(this.width) * 31)) * 31);
    }

    public final String toString() {
        return "BorderModifierNodeElement(width=" + ((Object) Dp.m746toStringimpl(this.width)) + ", brush=" + this.brush + ", shape=" + this.shape + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        BorderModifierNode borderModifierNode = (BorderModifierNode) node;
        float f = borderModifierNode.width;
        CacheDrawModifierNodeImpl cacheDrawModifierNodeImpl = borderModifierNode.drawWithCacheModifierNode;
        float f2 = this.width;
        if (!Dp.m745equalsimpl0(f, f2)) {
            borderModifierNode.width = f2;
            cacheDrawModifierNodeImpl.invalidateDrawCache();
        }
        Brush brush = borderModifierNode.brush;
        Brush brush2 = this.brush;
        if (!Intrinsics.areEqual(brush, brush2)) {
            borderModifierNode.brush = brush2;
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
