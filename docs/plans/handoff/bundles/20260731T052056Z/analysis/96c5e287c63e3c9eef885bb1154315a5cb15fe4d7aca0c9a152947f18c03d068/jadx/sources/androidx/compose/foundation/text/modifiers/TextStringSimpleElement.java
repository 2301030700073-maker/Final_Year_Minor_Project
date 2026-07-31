package androidx.compose.foundation.text.modifiers;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextStringSimpleElement extends ModifierNodeElement {
    public final FontFamily.Resolver fontFamilyResolver;
    public final int maxLines;
    public final int minLines;
    public final int overflow;
    public final boolean softWrap;
    public final TextStyle style;
    public final String text;

    public TextStringSimpleElement(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3) {
        this.text = str;
        this.style = textStyle;
        this.fontFamilyResolver = resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        TextStringSimpleNode textStringSimpleNode = new TextStringSimpleNode();
        textStringSimpleNode.text = this.text;
        textStringSimpleNode.style = this.style;
        textStringSimpleNode.fontFamilyResolver = this.fontFamilyResolver;
        textStringSimpleNode.overflow = this.overflow;
        textStringSimpleNode.softWrap = this.softWrap;
        textStringSimpleNode.maxLines = this.maxLines;
        textStringSimpleNode.minLines = this.minLines;
        return textStringSimpleNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextStringSimpleElement)) {
            return false;
        }
        TextStringSimpleElement textStringSimpleElement = (TextStringSimpleElement) obj;
        return Intrinsics.areEqual(this.text, textStringSimpleElement.text) && Intrinsics.areEqual(this.style, textStringSimpleElement.style) && Intrinsics.areEqual(this.fontFamilyResolver, textStringSimpleElement.fontFamilyResolver) && this.overflow == textStringSimpleElement.overflow && this.softWrap == textStringSimpleElement.softWrap && this.maxLines == textStringSimpleElement.maxLines && this.minLines == textStringSimpleElement.minLines;
    }

    public final int hashCode() {
        return (((((((((this.fontFamilyResolver.hashCode() + Animation.CC.m(this.style, this.text.hashCode() * 31, 31)) * 31) + this.overflow) * 31) + (this.softWrap ? 1231 : 1237)) * 31) + this.maxLines) * 31) + this.minLines) * 31;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void update(androidx.compose.ui.Modifier.Node r11) {
        /*
            r10 = this;
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode r11 = (androidx.compose.foundation.text.modifiers.TextStringSimpleNode) r11
            r11.getClass()
            androidx.compose.ui.text.TextStyle r0 = r11.style
            r1 = 0
            r2 = 1
            androidx.compose.ui.text.TextStyle r3 = r10.style
            if (r3 == r0) goto L1a
            androidx.compose.ui.text.SpanStyle r4 = r3.spanStyle
            androidx.compose.ui.text.SpanStyle r0 = r0.spanStyle
            boolean r0 = r4.hasSameNonLayoutAttributes$ui_text(r0)
            if (r0 == 0) goto L18
            goto L1d
        L18:
            r0 = r2
            goto L1e
        L1a:
            r3.getClass()
        L1d:
            r0 = r1
        L1e:
            java.lang.String r4 = r11.text
            java.lang.String r5 = r10.text
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L29
            goto L2f
        L29:
            r11.text = r5
            r1 = 0
            r11.textSubstitution = r1
            r1 = r2
        L2f:
            androidx.compose.ui.text.TextStyle r4 = r11.style
            boolean r4 = r4.hasSameLayoutAffectingAttributes(r3)
            r4 = r4 ^ r2
            r11.style = r3
            int r3 = r11.minLines
            int r5 = r10.minLines
            if (r3 == r5) goto L41
            r11.minLines = r5
            r4 = r2
        L41:
            int r3 = r11.maxLines
            int r5 = r10.maxLines
            if (r3 == r5) goto L4a
            r11.maxLines = r5
            r4 = r2
        L4a:
            boolean r3 = r11.softWrap
            boolean r5 = r10.softWrap
            if (r3 == r5) goto L53
            r11.softWrap = r5
            r4 = r2
        L53:
            androidx.compose.ui.text.font.FontFamily$Resolver r3 = r11.fontFamilyResolver
            androidx.compose.ui.text.font.FontFamily$Resolver r5 = r10.fontFamilyResolver
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r5)
            if (r3 != 0) goto L60
            r11.fontFamilyResolver = r5
            r4 = r2
        L60:
            int r3 = r11.overflow
            int r10 = r10.overflow
            if (r3 != r10) goto L68
            r2 = r4
            goto L6a
        L68:
            r11.overflow = r10
        L6a:
            if (r1 != 0) goto L6e
            if (r2 == 0) goto L9a
        L6e:
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r10 = r11.getLayoutCache()
            java.lang.String r3 = r11.text
            androidx.compose.ui.text.TextStyle r4 = r11.style
            androidx.compose.ui.text.font.FontFamily$Resolver r5 = r11.fontFamilyResolver
            int r6 = r11.overflow
            boolean r7 = r11.softWrap
            int r8 = r11.maxLines
            int r9 = r11.minLines
            r10.text = r3
            r10.style = r4
            r10.fontFamilyResolver = r5
            r10.overflow = r6
            r10.softWrap = r7
            r10.maxLines = r8
            r10.minLines = r9
            long r3 = r10.historyFlag
            r5 = 2
            long r3 = r3 << r5
            r5 = 2
            long r3 = r3 | r5
            r10.historyFlag = r3
            r10.markDirty()
        L9a:
            boolean r10 = r11.isAttached
            if (r10 != 0) goto L9f
            goto Lb9
        L9f:
            if (r1 != 0) goto La7
            if (r0 == 0) goto Laa
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0 r10 = r11.semanticsTextLayoutResult
            if (r10 == 0) goto Laa
        La7:
            androidx.compose.ui.node.HitTestResultKt.invalidateSemantics(r11)
        Laa:
            if (r1 != 0) goto Lae
            if (r2 == 0) goto Lb4
        Lae:
            androidx.compose.ui.node.HitTestResultKt.invalidateMeasurement(r11)
            androidx.compose.ui.node.HitTestResultKt.invalidateDraw(r11)
        Lb4:
            if (r0 == 0) goto Lb9
            androidx.compose.ui.node.HitTestResultKt.invalidateDraw(r11)
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleElement.update(androidx.compose.ui.Modifier$Node):void");
    }
}
