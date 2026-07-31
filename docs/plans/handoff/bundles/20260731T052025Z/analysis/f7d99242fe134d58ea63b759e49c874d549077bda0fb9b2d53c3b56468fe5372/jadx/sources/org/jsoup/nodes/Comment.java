package org.jsoup.nodes;

import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Comment extends LeafNode {
    @Override // org.jsoup.nodes.Node
    public final Object clone() {
        return (Comment) super.clone();
    }

    @Override // org.jsoup.nodes.Node
    public final String nodeName() {
        return "#comment";
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        if (org.jsoup.internal.StringUtil.isBlank(((org.jsoup.nodes.TextNode) r0).coreValue()) != false) goto L13;
     */
    @Override // org.jsoup.nodes.Node
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void outerHtmlHead(java.lang.Appendable r3, int r4, org.jsoup.nodes.Document.OutputSettings r5) {
        /*
            r2 = this;
            boolean r0 = r5.prettyPrint
            if (r0 == 0) goto L32
            int r0 = r2.siblingIndex
            if (r0 != 0) goto L9
            goto L20
        L9:
            r1 = 1
            if (r0 != r1) goto L32
            org.jsoup.nodes.Node r0 = r2.previousSibling()
            boolean r1 = r0 instanceof org.jsoup.nodes.TextNode
            if (r1 == 0) goto L32
            org.jsoup.nodes.TextNode r0 = (org.jsoup.nodes.TextNode) r0
            java.lang.String r0 = r0.coreValue()
            boolean r0 = org.jsoup.internal.StringUtil.isBlank(r0)
            if (r0 == 0) goto L32
        L20:
            org.jsoup.nodes.Node r0 = r2.parentNode
            boolean r1 = r0 instanceof org.jsoup.nodes.Element
            if (r1 == 0) goto L32
            org.jsoup.nodes.Element r0 = (org.jsoup.nodes.Element) r0
            org.jsoup.parser.Tag r0 = r0.tag
            boolean r0 = r0.formatAsBlock
            if (r0 != 0) goto L2f
            goto L32
        L2f:
            org.jsoup.nodes.Node.indent(r3, r4, r5)
        L32:
            java.lang.String r4 = "<!--"
            java.lang.Appendable r3 = r3.append(r4)
            java.lang.String r2 = r2.coreValue()
            java.lang.Appendable r2 = r3.append(r2)
            java.lang.String r3 = "-->"
            r2.append(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.Comment.outerHtmlHead(java.lang.Appendable, int, org.jsoup.nodes.Document$OutputSettings):void");
    }

    @Override // org.jsoup.nodes.Node
    public final Node clone() {
        return (Comment) super.clone();
    }

    @Override // org.jsoup.nodes.Node
    public final void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }
}
