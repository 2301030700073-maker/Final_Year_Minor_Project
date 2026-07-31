package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class BackgroundElement extends ModifierNodeElement {
    public final float alpha = 1.0f;
    public final long color;
    public final Shape shape;

    public BackgroundElement(long j, Shape shape) {
        this.color = j;
        this.shape = shape;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        BackgroundNode backgroundNode = new BackgroundNode();
        backgroundNode.color = this.color;
        backgroundNode.shape = this.shape;
        backgroundNode.lastSize = 9205357640488583168L;
        return backgroundNode;
    }

    public final boolean equals(Object obj) {
        BackgroundElement backgroundElement = obj instanceof BackgroundElement ? (BackgroundElement) obj : null;
        return backgroundElement != null && Color.m244equalsimpl0(this.color, backgroundElement.color) && this.alpha == backgroundElement.alpha && Intrinsics.areEqual(this.shape, backgroundElement.shape);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return this.shape.hashCode() + Modifier.CC.m(this.alpha, ULong.m658hashCodeimpl(this.color) * 961, 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        BackgroundNode backgroundNode = (BackgroundNode) node;
        backgroundNode.color = this.color;
        Shape shape = backgroundNode.shape;
        Shape shape2 = this.shape;
        if (!Intrinsics.areEqual(shape, shape2)) {
            backgroundNode.shape = shape2;
            HitTestResultKt.invalidateSemantics(backgroundNode);
        }
        HitTestResultKt.invalidateDraw(backgroundNode);
    }
}
