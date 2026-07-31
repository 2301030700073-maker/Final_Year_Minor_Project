package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.text.AutoSizeStepBased;
import androidx.compose.foundation.text.selection.SelectionManager$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectableTextAnnotatedStringNode extends DelegatingNode implements LayoutModifierNode, DrawModifierNode, GlobalPositionAwareModifierNode {
    public SelectionController selectionController;
    public final TextAnnotatedStringNode textAnnotatedStringNode;

    public SelectableTextAnnotatedStringNode(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, Function1 function1, int i, boolean z, int i2, int i3, List list, Function1 function12, SelectionController selectionController, AutoSizeStepBased autoSizeStepBased) {
        this.selectionController = selectionController;
        TextAnnotatedStringNode textAnnotatedStringNode = new TextAnnotatedStringNode(annotatedString, textStyle, resolver, function1, i, z, i2, i3, list, function12, selectionController, autoSizeStepBased, null);
        delegate(textAnnotatedStringNode);
        this.textAnnotatedStringNode = textAnnotatedStringNode;
        if (this.selectionController == null) {
            throw LazyItemScope$CC.m("Do not use SelectionCapableStaticTextModifier unless selectionController != null");
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        this.textAnnotatedStringNode.draw(layoutNodeDrawScope);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return this.textAnnotatedStringNode.maxIntrinsicHeight(lookaheadCapablePlaceable, measurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return this.textAnnotatedStringNode.maxIntrinsicWidth(lookaheadCapablePlaceable, measurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        return this.textAnnotatedStringNode.mo16measure3p2s80s(measureScope, measurable, j);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return this.textAnnotatedStringNode.minIntrinsicHeight(lookaheadCapablePlaceable, measurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return this.textAnnotatedStringNode.minIntrinsicWidth(lookaheadCapablePlaceable, measurable, i);
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void onGloballyPositioned(NodeCoordinator nodeCoordinator) {
        SelectionController selectionController = this.selectionController;
        if (selectionController != null) {
            selectionController.params = StaticTextSelectionParams.copy$default(selectionController.params, nodeCoordinator, null, 2);
            SelectionRegistrarImpl selectionRegistrarImpl = selectionController.selectionRegistrar;
            long j = selectionController.selectableId;
            selectionRegistrarImpl.sorted = false;
            SelectionManager$$ExternalSyntheticLambda0 selectionManager$$ExternalSyntheticLambda0 = selectionRegistrarImpl.onPositionChangeCallback;
            if (selectionManager$$ExternalSyntheticLambda0 != null) {
                selectionManager$$ExternalSyntheticLambda0.invoke(Long.valueOf(j));
            }
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
    }
}
