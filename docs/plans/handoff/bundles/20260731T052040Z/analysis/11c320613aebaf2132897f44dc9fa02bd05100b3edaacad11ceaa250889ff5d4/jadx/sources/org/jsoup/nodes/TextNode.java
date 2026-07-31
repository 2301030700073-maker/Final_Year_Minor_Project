package org.jsoup.nodes;

import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    @Override // org.jsoup.nodes.Node
    public void outerHtmlHead(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        Entities.doEscape(coreValue(), quietAppendable$BaseAppendable, outputSettings.escapeMode, outputSettings.charset, 1);
    }

    @Override // org.jsoup.nodes.Node
    public final String toString() {
        return outerHtml();
    }
}
