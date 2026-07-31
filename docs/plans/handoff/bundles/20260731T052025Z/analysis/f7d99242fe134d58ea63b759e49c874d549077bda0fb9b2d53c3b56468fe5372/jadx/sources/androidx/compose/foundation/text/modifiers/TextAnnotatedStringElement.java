package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextAnnotatedStringElement extends ModifierNodeElement {
    public final FontFamily$Resolver fontFamilyResolver;
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

    public TextAnnotatedStringElement(AnnotatedString annotatedString, TextStyle textStyle, FontFamily$Resolver fontFamily$Resolver, Function1 function1, int i, boolean z, int i2, int i3, List list, Function1 function12, Function1 function13) {
        this.text = annotatedString;
        this.style = textStyle;
        this.fontFamilyResolver = fontFamily$Resolver;
        this.onTextLayout = function1;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.placeholders = list;
        this.onPlaceholderLayout = function12;
        this.onShowTranslation = function13;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        TextAnnotatedStringNode textAnnotatedStringNode = new TextAnnotatedStringNode();
        textAnnotatedStringNode.text = this.text;
        textAnnotatedStringNode.style = this.style;
        textAnnotatedStringNode.fontFamilyResolver = this.fontFamilyResolver;
        textAnnotatedStringNode.onTextLayout = this.onTextLayout;
        textAnnotatedStringNode.overflow = this.overflow;
        textAnnotatedStringNode.softWrap = this.softWrap;
        textAnnotatedStringNode.maxLines = this.maxLines;
        textAnnotatedStringNode.minLines = this.minLines;
        textAnnotatedStringNode.placeholders = this.placeholders;
        textAnnotatedStringNode.onPlaceholderLayout = this.onPlaceholderLayout;
        textAnnotatedStringNode.onShowTranslation = this.onShowTranslation;
        return textAnnotatedStringNode;
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
        int hashCode = (this.fontFamilyResolver.hashCode() + Modifier.CC.m(this.style, this.text.hashCode() * 31, 31)) * 31;
        Function1 function1 = this.onTextLayout;
        int hashCode2 = (((((((((hashCode + (function1 != null ? function1.hashCode() : 0)) * 31) + this.overflow) * 31) + (this.softWrap ? 1231 : 1237)) * 31) + this.maxLines) * 31) + this.minLines) * 31;
        List list = this.placeholders;
        int hashCode3 = (hashCode2 + (list != null ? list.hashCode() : 0)) * 31;
        Function1 function12 = this.onPlaceholderLayout;
        int hashCode4 = (hashCode3 + (function12 != null ? function12.hashCode() : 0)) * 29791;
        Function1 function13 = this.onShowTranslation;
        return hashCode4 + (function13 != null ? function13.hashCode() : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00a9  */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void update(androidx.compose.ui.Modifier.Node r19) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextAnnotatedStringElement.update(androidx.compose.ui.Modifier$Node):void");
    }
}
