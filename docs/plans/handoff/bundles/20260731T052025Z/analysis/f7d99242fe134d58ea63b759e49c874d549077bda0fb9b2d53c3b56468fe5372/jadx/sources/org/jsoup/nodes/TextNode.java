package org.jsoup.nodes;

import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class TextNode extends LeafNode {
    public static boolean lastCharIsWhitespace(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    @Override // org.jsoup.nodes.Node
    public TextNode clone() {
        return (TextNode) super.clone();
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#text";
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if (r3.formatAsBlock == false) goto L16;
     */
    @Override // org.jsoup.nodes.Node
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void outerHtmlHead(java.lang.Appendable r8, int r9, org.jsoup.nodes.Document.OutputSettings r10) {
        /*
            r7 = this;
            boolean r0 = r10.prettyPrint
            r1 = 1
            if (r0 == 0) goto L9b
            org.jsoup.nodes.Node r0 = r7.parentNode
            boolean r0 = org.jsoup.nodes.Element.preserveWhitespace(r0)
            if (r0 != 0) goto L9b
            org.jsoup.nodes.Node r0 = r7.parentNode
            boolean r2 = r0 instanceof org.jsoup.nodes.Element
            if (r2 == 0) goto L17
            r2 = r0
            org.jsoup.nodes.Element r2 = (org.jsoup.nodes.Element) r2
            goto L18
        L17:
            r2 = 0
        L18:
            if (r2 == 0) goto L25
            org.jsoup.parser.Tag r3 = r2.tag
            boolean r4 = r3.isBlock
            if (r4 != 0) goto L26
            boolean r3 = r3.formatAsBlock
            if (r3 == 0) goto L25
            goto L26
        L25:
            r1 = 0
        L26:
            if (r1 == 0) goto L2c
            int r3 = r7.siblingIndex
            if (r3 == 0) goto L30
        L2c:
            boolean r0 = r0 instanceof org.jsoup.nodes.Document
            if (r0 == 0) goto L33
        L30:
            r0 = 13
            goto L34
        L33:
            r0 = 5
        L34:
            if (r1 == 0) goto L3e
            org.jsoup.nodes.Node r1 = r7.nextSibling()
            if (r1 != 0) goto L3e
            r0 = r0 | 16
        L3e:
            r1 = r0
            org.jsoup.nodes.Node r0 = r7.nextSibling()
            org.jsoup.nodes.Node r3 = r7.previousSibling()
            java.lang.String r4 = r7.coreValue()
            boolean r4 = org.jsoup.internal.StringUtil.isBlank(r4)
            boolean r5 = r0 instanceof org.jsoup.nodes.Element
            java.lang.String r6 = "br"
            if (r5 == 0) goto L5e
            r5 = r0
            org.jsoup.nodes.Element r5 = (org.jsoup.nodes.Element) r5
            boolean r5 = r5.shouldIndent(r10)
            if (r5 != 0) goto L81
        L5e:
            boolean r5 = r0 instanceof org.jsoup.nodes.TextNode
            if (r5 == 0) goto L6e
            org.jsoup.nodes.TextNode r0 = (org.jsoup.nodes.TextNode) r0
            java.lang.String r0 = r0.coreValue()
            boolean r0 = org.jsoup.internal.StringUtil.isBlank(r0)
            if (r0 != 0) goto L81
        L6e:
            boolean r0 = r3 instanceof org.jsoup.nodes.Element
            if (r0 == 0) goto L84
            r0 = r3
            org.jsoup.nodes.Element r0 = (org.jsoup.nodes.Element) r0
            org.jsoup.parser.Tag r0 = r0.tag
            boolean r0 = r0.isBlock
            if (r0 != 0) goto L81
            boolean r0 = r3.nameIs(r6)
            if (r0 == 0) goto L84
        L81:
            if (r4 == 0) goto L84
            return
        L84:
            if (r3 != 0) goto L90
            if (r2 == 0) goto L90
            org.jsoup.parser.Tag r0 = r2.tag
            boolean r0 = r0.formatAsBlock
            if (r0 == 0) goto L90
            if (r4 == 0) goto L98
        L90:
            if (r3 == 0) goto L9b
            boolean r0 = r3.nameIs(r6)
            if (r0 == 0) goto L9b
        L98:
            org.jsoup.nodes.Node.indent(r8, r9, r10)
        L9b:
            java.lang.String r7 = r7.coreValue()
            org.jsoup.nodes.Entities.escape(r8, r7, r10, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.TextNode.outerHtmlHead(java.lang.Appendable, int, org.jsoup.nodes.Document$OutputSettings):void");
    }

    public String text() {
        String coreValue = coreValue();
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        StringUtil.appendNormalisedWhitespace(coreValue, borrowBuilder, false);
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    @Override // org.jsoup.nodes.Node
    public final String toString() {
        return outerHtml();
    }

    @Override // org.jsoup.nodes.Node
    public void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }
}
