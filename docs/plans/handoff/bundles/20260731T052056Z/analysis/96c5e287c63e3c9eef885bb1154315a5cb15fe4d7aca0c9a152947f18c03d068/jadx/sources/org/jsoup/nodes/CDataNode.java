package org.jsoup.nodes;

import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CDataNode extends TextNode {
    @Override // org.jsoup.nodes.TextNode, org.jsoup.nodes.Node
    /* renamed from: clone */
    public final Object mo886clone() {
        return (CDataNode) super.mo886clone();
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
    /* renamed from: clone, reason: collision with other method in class */
    public final Node mo886clone() {
        return (CDataNode) super.mo886clone();
    }

    @Override // org.jsoup.nodes.TextNode, org.jsoup.nodes.Node
    /* renamed from: clone */
    public final TextNode mo886clone() {
        return (CDataNode) super.mo886clone();
    }
}
