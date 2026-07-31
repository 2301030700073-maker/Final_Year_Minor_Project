package androidx.compose.ui.draw;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/draw/PainterElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/draw/PainterNode;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class PainterElement extends ModifierNodeElement {
    public final Alignment alignment;
    public final float alpha;
    public final BlendModeColorFilter colorFilter;
    public final ContentScale contentScale;
    public final Painter painter;

    public PainterElement(Painter painter, Alignment alignment, ContentScale contentScale, float f, BlendModeColorFilter blendModeColorFilter) {
        this.painter = painter;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = f;
        this.colorFilter = blendModeColorFilter;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        PainterNode painterNode = new PainterNode();
        painterNode.painter = this.painter;
        painterNode.sizeToIntrinsics = true;
        painterNode.alignment = this.alignment;
        painterNode.contentScale = this.contentScale;
        painterNode.alpha = this.alpha;
        painterNode.colorFilter = this.colorFilter;
        return painterNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PainterElement)) {
            return false;
        }
        PainterElement painterElement = (PainterElement) obj;
        return Intrinsics.areEqual(this.painter, painterElement.painter) && Intrinsics.areEqual(this.alignment, painterElement.alignment) && Intrinsics.areEqual(this.contentScale, painterElement.contentScale) && Float.compare(this.alpha, painterElement.alpha) == 0 && Intrinsics.areEqual(this.colorFilter, painterElement.colorFilter);
    }

    public final int hashCode() {
        int m = Animation.CC.m((this.contentScale.hashCode() + ((this.alignment.hashCode() + (((this.painter.hashCode() * 31) + 1231) * 31)) * 31)) * 31, this.alpha, 31);
        BlendModeColorFilter blendModeColorFilter = this.colorFilter;
        return m + (blendModeColorFilter == null ? 0 : blendModeColorFilter.hashCode());
    }

    public final String toString() {
        return "PainterElement(painter=" + this.painter + ", sizeToIntrinsics=true, alignment=" + this.alignment + ", contentScale=" + this.contentScale + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        PainterNode painterNode = (PainterNode) node;
        boolean z = painterNode.sizeToIntrinsics;
        Painter painter = this.painter;
        boolean z2 = (z && Size.m394equalsimpl0(painterNode.painter.mo493getIntrinsicSizeNHjbRc(), painter.mo493getIntrinsicSizeNHjbRc())) ? false : true;
        painterNode.painter = painter;
        painterNode.sizeToIntrinsics = true;
        painterNode.alignment = this.alignment;
        painterNode.contentScale = this.contentScale;
        painterNode.alpha = this.alpha;
        painterNode.colorFilter = this.colorFilter;
        if (z2) {
            HitTestResultKt.invalidateMeasurement(painterNode);
        }
        HitTestResultKt.invalidateDraw(painterNode);
    }
}
