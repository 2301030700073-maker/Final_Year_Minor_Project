package org.jsoup.nodes;

import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CDataNode extends TextNode {
    @Override // org.jsoup.nodes.TextNode, org.jsoup.nodes.Node
    public final Object clone() {
        return (CDataNode) super.clone();
    }

    @Override // org.jsoup.nodes.TextNode, org.jsoup.nodes.Node
    public final String nodeName() {
        return "#cdata";
    }

    @Override // org.jsoup.nodes.TextNode, org.jsoup.nodes.Node
    public final void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        appendable.append("<![CDATA[").append(coreValue());
    }

    @Override // org.jsoup.nodes.TextNode, org.jsoup.nodes.Node
    public final void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        appendable.append("]]>");
    }

    @Override // org.jsoup.nodes.TextNode
    public final String text() {
        return coreValue();
    }

    @Override // org.jsoup.nodes.TextNode, org.jsoup.nodes.Node
    public final Node clone() {
        return (CDataNode) super.clone();
    }

    @Override // org.jsoup.nodes.TextNode, org.jsoup.nodes.Node
    public final TextNode clone() {
        return (CDataNode) super.clone();
    }
}
