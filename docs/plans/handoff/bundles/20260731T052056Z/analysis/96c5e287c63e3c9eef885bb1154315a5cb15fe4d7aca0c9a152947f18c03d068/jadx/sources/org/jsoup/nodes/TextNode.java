package org.jsoup.nodes;

import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class TextNode extends LeafNode {
    public static boolean lastCharIsWhitespace(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public TextNode mo886clone() {
        return (TextNode) super.mo886clone();
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#text";
    }

    @Override // org.jsoup.nodes.Node
    public void outerHtmlHead(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        Entities.escape(quietAppendable$BaseAppendable, coreValue(), outputSettings, 1);
    }

    @Override // org.jsoup.nodes.Node
    public final String toString() {
        return outerHtml();
    }
}
