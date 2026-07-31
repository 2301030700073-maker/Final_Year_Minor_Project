package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextStringSimpleElement extends ModifierNodeElement {
    public final FontFamily$Resolver fontFamilyResolver;
    public final int maxLines;
    public final int minLines;
    public final int overflow;
    public final boolean softWrap;
    public final TextStyle style;
    public final String text;

    public TextStringSimpleElement(String str, TextStyle textStyle, FontFamily$Resolver fontFamily$Resolver, int i, boolean z, int i2, int i3) {
        this.text = str;
        this.style = textStyle;
        this.fontFamilyResolver = fontFamily$Resolver;
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
        return (((((((((this.fontFamilyResolver.hashCode() + Modifier.CC.m(this.style, this.text.hashCode() * 31, 31)) * 31) + this.overflow) * 31) + (this.softWrap ? 1231 : 1237)) * 31) + this.maxLines) * 31) + this.minLines) * 31;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void update(androidx.compose.ui.Modifier.Node r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode r1 = (androidx.compose.foundation.text.modifiers.TextStringSimpleNode) r1
            r1.getClass()
            androidx.compose.ui.text.TextStyle r2 = r1.style
            r3 = 0
            r4 = 1
            androidx.compose.ui.text.TextStyle r5 = r0.style
            if (r5 == r2) goto L1e
            androidx.compose.ui.text.SpanStyle r6 = r5.spanStyle
            androidx.compose.ui.text.SpanStyle r2 = r2.spanStyle
            boolean r2 = r6.hasSameNonLayoutAttributes$ui_text(r2)
            if (r2 == 0) goto L1c
            goto L21
        L1c:
            r2 = r4
            goto L22
        L1e:
            r5.getClass()
        L21:
            r2 = r3
        L22:
            java.lang.String r6 = r1.text
            java.lang.String r7 = r0.text
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r7)
            r8 = 0
            if (r6 == 0) goto L2e
            goto L33
        L2e:
            r1.text = r7
            r1.textSubstitution = r8
            r3 = r4
        L33:
            androidx.compose.ui.text.TextStyle r6 = r1.style
            boolean r6 = r6.hasSameLayoutAffectingAttributes(r5)
            r6 = r6 ^ r4
            r1.style = r5
            int r5 = r1.minLines
            int r7 = r0.minLines
            if (r5 == r7) goto L45
            r1.minLines = r7
            r6 = r4
        L45:
            int r5 = r1.maxLines
            int r7 = r0.maxLines
            if (r5 == r7) goto L4e
            r1.maxLines = r7
            r6 = r4
        L4e:
            boolean r5 = r1.softWrap
            boolean r7 = r0.softWrap
            if (r5 == r7) goto L57
            r1.softWrap = r7
            r6 = r4
        L57:
            androidx.compose.ui.text.font.FontFamily$Resolver r5 = r1.fontFamilyResolver
            androidx.compose.ui.text.font.FontFamily$Resolver r7 = r0.fontFamilyResolver
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r7)
            if (r5 != 0) goto L64
            r1.fontFamilyResolver = r7
            r6 = r4
        L64:
            int r5 = r1.overflow
            int r0 = r0.overflow
            if (r5 != r0) goto L6c
            r4 = r6
            goto L6e
        L6c:
            r1.overflow = r0
        L6e:
            if (r2 != 0) goto L74
            if (r3 != 0) goto L74
            if (r4 == 0) goto L76
        L74:
            r1.resolvedInheritedStyle = r8
        L76:
            if (r3 != 0) goto L7a
            if (r4 == 0) goto L91
        L7a:
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r9 = r1.getLayoutCache()
            java.lang.String r10 = r1.text
            androidx.compose.ui.text.TextStyle r11 = r1.style
            androidx.compose.ui.text.font.FontFamily$Resolver r12 = r1.fontFamilyResolver
            int r13 = r1.overflow
            boolean r14 = r1.softWrap
            int r15 = r1.maxLines
            int r0 = r1.minLines
            r16 = r0
            r9.m302updateL6sJoHM(r10, r11, r12, r13, r14, r15, r16)
        L91:
            boolean r0 = r1.isAttached
            if (r0 != 0) goto L96
            goto Lb0
        L96:
            if (r3 != 0) goto L9e
            if (r2 == 0) goto La1
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0 r0 = r1.semanticsTextLayoutResult
            if (r0 == 0) goto La1
        L9e:
            androidx.compose.ui.node.HitTestResultKt.invalidateSemantics(r1)
        La1:
            if (r3 != 0) goto La5
            if (r4 == 0) goto Lab
        La5:
            androidx.compose.ui.node.HitTestResultKt.invalidateMeasurement(r1)
            androidx.compose.ui.node.HitTestResultKt.invalidateDraw(r1)
        Lab:
            if (r2 == 0) goto Lb0
            androidx.compose.ui.node.HitTestResultKt.invalidateDraw(r1)
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleElement.update(androidx.compose.ui.Modifier$Node):void");
    }
}
