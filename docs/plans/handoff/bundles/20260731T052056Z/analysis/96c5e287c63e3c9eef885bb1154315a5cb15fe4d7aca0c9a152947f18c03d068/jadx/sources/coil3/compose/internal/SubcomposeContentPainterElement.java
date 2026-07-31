package coil3.compose.internal;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcoil3/compose/internal/SubcomposeContentPainterElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Lcoil3/compose/internal/SubcomposeContentPainterNode;", "coil-compose-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class SubcomposeContentPainterElement extends ModifierNodeElement {
    public final Alignment alignment;
    public final float alpha;
    public final boolean clipToBounds;
    public final String contentDescription;
    public final ContentScale contentScale;
    public final Painter painter;

    public SubcomposeContentPainterElement(Painter painter, Alignment alignment, ContentScale contentScale, float f, boolean z, String str) {
        this.painter = painter;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = f;
        this.clipToBounds = z;
        this.contentDescription = str;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        SubcomposeContentPainterNode subcomposeContentPainterNode = new SubcomposeContentPainterNode(this.alignment, this.contentScale, this.alpha, this.clipToBounds, this.contentDescription, null);
        subcomposeContentPainterNode.painter = this.painter;
        return subcomposeContentPainterNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubcomposeContentPainterElement)) {
            return false;
        }
        SubcomposeContentPainterElement subcomposeContentPainterElement = (SubcomposeContentPainterElement) obj;
        return Intrinsics.areEqual(this.painter, subcomposeContentPainterElement.painter) && Intrinsics.areEqual(this.alignment, subcomposeContentPainterElement.alignment) && Intrinsics.areEqual(this.contentScale, subcomposeContentPainterElement.contentScale) && Float.compare(this.alpha, subcomposeContentPainterElement.alpha) == 0 && this.clipToBounds == subcomposeContentPainterElement.clipToBounds && Intrinsics.areEqual(this.contentDescription, subcomposeContentPainterElement.contentDescription);
    }

    public final int hashCode() {
        int m = (Animation.CC.m((this.contentScale.hashCode() + ((this.alignment.hashCode() + (this.painter.hashCode() * 31)) * 31)) * 31, this.alpha, 961) + (this.clipToBounds ? 1231 : 1237)) * 31;
        String str = this.contentDescription;
        return m + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "SubcomposeContentPainterElement(painter=" + this.painter + ", alignment=" + this.alignment + ", contentScale=" + this.contentScale + ", alpha=" + this.alpha + ", colorFilter=null, clipToBounds=" + this.clipToBounds + ", contentDescription=" + this.contentDescription + ")";
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        SubcomposeContentPainterNode subcomposeContentPainterNode = (SubcomposeContentPainterNode) node;
        long mo493getIntrinsicSizeNHjbRc = subcomposeContentPainterNode.painter.mo493getIntrinsicSizeNHjbRc();
        Painter painter = this.painter;
        boolean m394equalsimpl0 = Size.m394equalsimpl0(mo493getIntrinsicSizeNHjbRc, painter.mo493getIntrinsicSizeNHjbRc());
        subcomposeContentPainterNode.painter = painter;
        subcomposeContentPainterNode.alignment = this.alignment;
        subcomposeContentPainterNode.contentScale = this.contentScale;
        subcomposeContentPainterNode.alpha = this.alpha;
        subcomposeContentPainterNode.clipToBounds = this.clipToBounds;
        String str = subcomposeContentPainterNode.contentDescription;
        String str2 = this.contentDescription;
        if (!Intrinsics.areEqual(str, str2)) {
            subcomposeContentPainterNode.contentDescription = str2;
            HitTestResultKt.invalidateSemantics(subcomposeContentPainterNode);
        }
        if (!m394equalsimpl0) {
            HitTestResultKt.invalidateMeasurement(subcomposeContentPainterNode);
        }
        HitTestResultKt.invalidateDraw(subcomposeContentPainterNode);
    }
}
