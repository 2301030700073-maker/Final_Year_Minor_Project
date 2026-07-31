package androidx.compose.foundation.text.modifiers;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.text.AutoSizeStepBased;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SelectableTextAnnotatedStringElement extends ModifierNodeElement {
    public final AutoSizeStepBased autoSize;
    public final FontFamily.Resolver fontFamilyResolver;
    public final int maxLines;
    public final int minLines;
    public final Function1 onPlaceholderLayout;
    public final Function1 onTextLayout;
    public final int overflow;
    public final List placeholders;
    public final SelectionController selectionController;
    public final boolean softWrap;
    public final TextStyle style;
    public final AnnotatedString text;

    public SelectableTextAnnotatedStringElement(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, Function1 function1, int i, boolean z, int i2, int i3, List list, Function1 function12, SelectionController selectionController, AutoSizeStepBased autoSizeStepBased) {
        this.text = annotatedString;
        this.style = textStyle;
        this.fontFamilyResolver = resolver;
        this.onTextLayout = function1;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.placeholders = list;
        this.onPlaceholderLayout = function12;
        this.selectionController = selectionController;
        this.autoSize = autoSizeStepBased;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new SelectableTextAnnotatedStringNode(this.text, this.style, this.fontFamilyResolver, this.onTextLayout, this.overflow, this.softWrap, this.maxLines, this.minLines, this.placeholders, this.onPlaceholderLayout, this.selectionController, this.autoSize);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectableTextAnnotatedStringElement)) {
            return false;
        }
        SelectableTextAnnotatedStringElement selectableTextAnnotatedStringElement = (SelectableTextAnnotatedStringElement) obj;
        return Intrinsics.areEqual(this.text, selectableTextAnnotatedStringElement.text) && Intrinsics.areEqual(this.style, selectableTextAnnotatedStringElement.style) && Intrinsics.areEqual(this.placeholders, selectableTextAnnotatedStringElement.placeholders) && Intrinsics.areEqual(this.fontFamilyResolver, selectableTextAnnotatedStringElement.fontFamilyResolver) && Intrinsics.areEqual(this.autoSize, selectableTextAnnotatedStringElement.autoSize) && this.onTextLayout == selectableTextAnnotatedStringElement.onTextLayout && this.overflow == selectableTextAnnotatedStringElement.overflow && this.softWrap == selectableTextAnnotatedStringElement.softWrap && this.maxLines == selectableTextAnnotatedStringElement.maxLines && this.minLines == selectableTextAnnotatedStringElement.minLines && this.onPlaceholderLayout == selectableTextAnnotatedStringElement.onPlaceholderLayout && Intrinsics.areEqual(this.selectionController, selectableTextAnnotatedStringElement.selectionController);
    }

    public final int hashCode() {
        int hashCode = (this.fontFamilyResolver.hashCode() + Animation.CC.m(this.style, this.text.hashCode() * 31, 31)) * 31;
        Function1 function1 = this.onTextLayout;
        int hashCode2 = (((((((((hashCode + (function1 != null ? function1.hashCode() : 0)) * 31) + this.overflow) * 31) + (this.softWrap ? 1231 : 1237)) * 31) + this.maxLines) * 31) + this.minLines) * 31;
        List list = this.placeholders;
        int hashCode3 = (hashCode2 + (list != null ? list.hashCode() : 0)) * 31;
        Function1 function12 = this.onPlaceholderLayout;
        int hashCode4 = (hashCode3 + (function12 != null ? function12.hashCode() : 0)) * 31;
        SelectionController selectionController = this.selectionController;
        int hashCode5 = (hashCode4 + (selectionController != null ? selectionController.hashCode() : 0)) * 31;
        AutoSizeStepBased autoSizeStepBased = this.autoSize;
        return (hashCode5 + (autoSizeStepBased != null ? autoSizeStepBased.hashCode() : 0)) * 31;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        boolean z;
        SelectableTextAnnotatedStringNode selectableTextAnnotatedStringNode = (SelectableTextAnnotatedStringNode) node;
        TextAnnotatedStringNode textAnnotatedStringNode = selectableTextAnnotatedStringNode.textAnnotatedStringNode;
        TextStyle textStyle = textAnnotatedStringNode.style;
        TextStyle textStyle2 = this.style;
        if (textStyle2 == textStyle) {
            textStyle2.getClass();
        } else if (!textStyle2.spanStyle.hasSameNonLayoutAttributes$ui_text(textStyle.spanStyle)) {
            z = true;
            boolean updateText$foundation = textAnnotatedStringNode.updateText$foundation(this.text);
            boolean m220updateLayoutRelatedArgsy0kMQk = selectableTextAnnotatedStringNode.textAnnotatedStringNode.m220updateLayoutRelatedArgsy0kMQk(textStyle2, this.placeholders, this.minLines, this.maxLines, this.softWrap, this.fontFamilyResolver, this.overflow, this.autoSize);
            Function1 function1 = this.onTextLayout;
            Function1 function12 = this.onPlaceholderLayout;
            SelectionController selectionController = this.selectionController;
            textAnnotatedStringNode.doInvalidations(z, updateText$foundation, m220updateLayoutRelatedArgsy0kMQk, textAnnotatedStringNode.updateCallbacks(function1, function12, selectionController, null));
            selectableTextAnnotatedStringNode.selectionController = selectionController;
            HitTestResultKt.invalidateMeasurement(selectableTextAnnotatedStringNode);
        }
        z = false;
        boolean updateText$foundation2 = textAnnotatedStringNode.updateText$foundation(this.text);
        boolean m220updateLayoutRelatedArgsy0kMQk2 = selectableTextAnnotatedStringNode.textAnnotatedStringNode.m220updateLayoutRelatedArgsy0kMQk(textStyle2, this.placeholders, this.minLines, this.maxLines, this.softWrap, this.fontFamilyResolver, this.overflow, this.autoSize);
        Function1 function13 = this.onTextLayout;
        Function1 function122 = this.onPlaceholderLayout;
        SelectionController selectionController2 = this.selectionController;
        textAnnotatedStringNode.doInvalidations(z, updateText$foundation2, m220updateLayoutRelatedArgsy0kMQk2, textAnnotatedStringNode.updateCallbacks(function13, function122, selectionController2, null));
        selectableTextAnnotatedStringNode.selectionController = selectionController2;
        HitTestResultKt.invalidateMeasurement(selectableTextAnnotatedStringNode);
    }
}
