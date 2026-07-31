package androidx.compose.material3;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/material3/ThumbElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/material3/ThumbNode;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
final /* data */ class ThumbElement extends ModifierNodeElement {
    public final SpringSpec animationSpec;
    public final boolean checked;
    public final MutableInteractionSourceImpl interactionSource;

    public ThumbElement(MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, SpringSpec springSpec) {
        this.interactionSource = mutableInteractionSourceImpl;
        this.checked = z;
        this.animationSpec = springSpec;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        ThumbNode thumbNode = new ThumbNode();
        thumbNode.interactionSource = this.interactionSource;
        thumbNode.checked = this.checked;
        thumbNode.animationSpec = this.animationSpec;
        thumbNode.initialOffset = Float.NaN;
        thumbNode.initialSize = Float.NaN;
        return thumbNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThumbElement)) {
            return false;
        }
        ThumbElement thumbElement = (ThumbElement) obj;
        return Intrinsics.areEqual(this.interactionSource, thumbElement.interactionSource) && this.checked == thumbElement.checked && this.animationSpec.equals(thumbElement.animationSpec);
    }

    public final int hashCode() {
        return this.animationSpec.hashCode() + (((this.interactionSource.hashCode() * 31) + (this.checked ? 1231 : 1237)) * 31);
    }

    public final String toString() {
        return "ThumbElement(interactionSource=" + this.interactionSource + ", checked=" + this.checked + ", animationSpec=" + this.animationSpec + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ThumbNode thumbNode = (ThumbNode) node;
        thumbNode.interactionSource = this.interactionSource;
        boolean z = thumbNode.checked;
        boolean z2 = this.checked;
        if (z != z2) {
            HitTestResultKt.invalidateMeasurement(thumbNode);
        }
        thumbNode.checked = z2;
        thumbNode.animationSpec = this.animationSpec;
        if (thumbNode.sizeAnim == null && !Float.isNaN(thumbNode.initialSize)) {
            thumbNode.sizeAnim = ArcSplineKt.Animatable$default(thumbNode.initialSize);
        }
        if (thumbNode.offsetAnim != null || Float.isNaN(thumbNode.initialOffset)) {
            return;
        }
        thumbNode.offsetAnim = ArcSplineKt.Animatable$default(thumbNode.initialOffset);
    }
}
