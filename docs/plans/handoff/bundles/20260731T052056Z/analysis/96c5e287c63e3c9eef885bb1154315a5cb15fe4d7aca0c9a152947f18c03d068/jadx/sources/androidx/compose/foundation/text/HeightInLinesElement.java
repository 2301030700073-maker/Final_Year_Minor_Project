package androidx.compose.foundation.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/text/HeightInLinesElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/HeightInLinesNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
final class HeightInLinesElement extends ModifierNodeElement {
    public final int maxLines;
    public final int minLines;
    public final TextStyle textStyle;

    public HeightInLinesElement(TextStyle textStyle, int i, int i2) {
        this.textStyle = textStyle;
        this.minLines = i;
        this.maxLines = i2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        HeightInLinesNode heightInLinesNode = new HeightInLinesNode();
        heightInLinesNode.textStyle = this.textStyle;
        heightInLinesNode.minLines = this.minLines;
        heightInLinesNode.maxLines = this.maxLines;
        heightInLinesNode.precomputedMinLinesHeight = -1;
        heightInLinesNode.precomputedMaxLinesHeight = -1;
        return heightInLinesNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HeightInLinesElement)) {
            return false;
        }
        HeightInLinesElement heightInLinesElement = (HeightInLinesElement) obj;
        return Intrinsics.areEqual(this.textStyle, heightInLinesElement.textStyle) && this.minLines == heightInLinesElement.minLines && this.maxLines == heightInLinesElement.maxLines;
    }

    public final int hashCode() {
        return (((this.textStyle.hashCode() * 31) + this.minLines) * 31) + this.maxLines;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        HeightInLinesNode heightInLinesNode = (HeightInLinesNode) node;
        TextStyle textStyle = heightInLinesNode.textStyle;
        TextStyle textStyle2 = this.textStyle;
        boolean areEqual = Intrinsics.areEqual(textStyle, textStyle2);
        int i = this.minLines;
        int i2 = this.maxLines;
        if (areEqual && heightInLinesNode.minLines == i && heightInLinesNode.maxLines == i2) {
            return;
        }
        heightInLinesNode.textStyle = textStyle2;
        heightInLinesNode.minLines = i;
        heightInLinesNode.maxLines = i2;
        heightInLinesNode.resolvedStyle = ParagraphKt.resolveDefaults(textStyle2, HitTestResultKt.requireLayoutNode(heightInLinesNode).layoutDirection);
        heightInLinesNode.dirty = true;
        HitTestResultKt.invalidateMeasurement(heightInLinesNode);
    }
}
