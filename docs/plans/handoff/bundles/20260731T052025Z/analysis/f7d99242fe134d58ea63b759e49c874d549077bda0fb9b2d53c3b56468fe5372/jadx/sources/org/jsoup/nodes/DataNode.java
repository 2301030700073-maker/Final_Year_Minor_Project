package org.jsoup.nodes;

import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataNode extends LeafNode {
    @Override // org.jsoup.nodes.Node
    public final Object clone() {
        return (DataNode) super.clone();
    }

    @Override // org.jsoup.nodes.Node
    public final String nodeName() {
        return "#data";
    }

    @Override // org.jsoup.nodes.Node
    public final void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        String coreValue = coreValue();
        if (outputSettings.syntax != 2 || coreValue.contains("<![CDATA[")) {
            appendable.append(coreValue());
            return;
        }
        Node node = this.parentNode;
        if (node != null && node.normalName().equals("script")) {
            appendable.append("//<![CDATA[\n").append(coreValue).append("\n//]]>");
            return;
        }
        Node node2 = this.parentNode;
        if (node2 == null || !node2.normalName().equals("style")) {
            appendable.append("<![CDATA[").append(coreValue).append("]]>");
        } else {
            appendable.append("/*<![CDATA[*/\n").append(coreValue).append("\n/*]]>*/");
        }
    }

    @Override // org.jsoup.nodes.Node
    public final Node clone() {
        return (DataNode) super.clone();
    }

    @Override // org.jsoup.nodes.Node
    public final void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }
}
