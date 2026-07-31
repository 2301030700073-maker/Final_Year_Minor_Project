package org.jsoup.nodes;

import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final void outerHtmlHead(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        quietAppendable$BaseAppendable.append("<![CDATA[").append(coreValue()).append("]]>");
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
