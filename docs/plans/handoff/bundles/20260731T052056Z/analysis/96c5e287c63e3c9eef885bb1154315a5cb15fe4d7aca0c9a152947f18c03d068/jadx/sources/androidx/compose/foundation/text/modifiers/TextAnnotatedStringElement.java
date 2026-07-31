package androidx.compose.foundation.text.modifiers;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.text.AutoSizeStepBased;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextAnnotatedStringElement extends ModifierNodeElement {
    public final AutoSizeStepBased autoSize;
    public final FontFamily.Resolver fontFamilyResolver;
    public final int maxLines;
    public final int minLines;
    public final Function1 onPlaceholderLayout;
    public final Function1 onShowTranslation;
    public final Function1 onTextLayout;
    public final int overflow;
    public final List placeholders;
    public final boolean softWrap;
    public final TextStyle style;
    public final AnnotatedString text;

    public TextAnnotatedStringElement(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, Function1 function1, int i, boolean z, int i2, int i3, List list, Function1 function12, AutoSizeStepBased autoSizeStepBased, Function1 function13) {
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
        this.autoSize = autoSizeStepBased;
        this.onShowTranslation = function13;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new TextAnnotatedStringNode(this.text, this.style, this.fontFamilyResolver, this.onTextLayout, this.overflow, this.softWrap, this.maxLines, this.minLines, this.placeholders, this.onPlaceholderLayout, null, this.autoSize, this.onShowTranslation);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextAnnotatedStringElement)) {
            return false;
        }
        TextAnnotatedStringElement textAnnotatedStringElement = (TextAnnotatedStringElement) obj;
        return Intrinsics.areEqual(this.text, textAnnotatedStringElement.text) && Intrinsics.areEqual(this.style, textAnnotatedStringElement.style) && Intrinsics.areEqual(this.placeholders, textAnnotatedStringElement.placeholders) && Intrinsics.areEqual(this.fontFamilyResolver, textAnnotatedStringElement.fontFamilyResolver) && this.onTextLayout == textAnnotatedStringElement.onTextLayout && this.onShowTranslation == textAnnotatedStringElement.onShowTranslation && this.overflow == textAnnotatedStringElement.overflow && this.softWrap == textAnnotatedStringElement.softWrap && this.maxLines == textAnnotatedStringElement.maxLines && this.minLines == textAnnotatedStringElement.minLines && this.onPlaceholderLayout == textAnnotatedStringElement.onPlaceholderLayout;
    }

    public final int hashCode() {
        int hashCode = (this.fontFamilyResolver.hashCode() + Animation.CC.m(this.style, this.text.hashCode() * 31, 31)) * 31;
        Function1 function1 = this.onTextLayout;
        int hashCode2 = (((((((((hashCode + (function1 != null ? function1.hashCode() : 0)) * 31) + this.overflow) * 31) + (this.softWrap ? 1231 : 1237)) * 31) + this.maxLines) * 31) + this.minLines) * 31;
        List list = this.placeholders;
        int hashCode3 = (hashCode2 + (list != null ? list.hashCode() : 0)) * 31;
        Function1 function12 = this.onPlaceholderLayout;
        int hashCode4 = (hashCode3 + (function12 != null ? function12.hashCode() : 0)) * 29791;
        Function1 function13 = this.onShowTranslation;
        return hashCode4 + (function13 != null ? function13.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        boolean z;
        TextAnnotatedStringNode textAnnotatedStringNode = (TextAnnotatedStringNode) node;
        TextStyle textStyle = textAnnotatedStringNode.style;
        TextStyle textStyle2 = this.style;
        if (textStyle2 == textStyle) {
            textStyle2.getClass();
        } else if (!textStyle2.spanStyle.hasSameNonLayoutAttributes$ui_text(textStyle.spanStyle)) {
            z = true;
            textAnnotatedStringNode.doInvalidations(z, textAnnotatedStringNode.updateText$foundation(this.text), textAnnotatedStringNode.m220updateLayoutRelatedArgsy0kMQk(this.style, this.placeholders, this.minLines, this.maxLines, this.softWrap, this.fontFamilyResolver, this.overflow, this.autoSize), textAnnotatedStringNode.updateCallbacks(this.onTextLayout, this.onPlaceholderLayout, null, this.onShowTranslation));
        }
        z = false;
        textAnnotatedStringNode.doInvalidations(z, textAnnotatedStringNode.updateText$foundation(this.text), textAnnotatedStringNode.m220updateLayoutRelatedArgsy0kMQk(this.style, this.placeholders, this.minLines, this.maxLines, this.softWrap, this.fontFamilyResolver, this.overflow, this.autoSize), textAnnotatedStringNode.updateCallbacks(this.onTextLayout, this.onPlaceholderLayout, null, this.onShowTranslation));
    }
}
