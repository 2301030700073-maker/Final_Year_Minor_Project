package org.jsoup.nodes;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final void outerHtmlHead(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        String coreValue = coreValue();
        if (outputSettings.syntax != 2 || coreValue.contains("<![CDATA[")) {
            quietAppendable$BaseAppendable.append(coreValue);
            return;
        }
        Element element = this.parentNode;
        if (element != null && element.tag.normalName.equals("script")) {
            quietAppendable$BaseAppendable.append("//<![CDATA[\n").append(coreValue).append("\n//]]>");
            return;
        }
        Element element2 = this.parentNode;
        if (element2 == null || !element2.tag.normalName.equals(TtmlNode.TAG_STYLE)) {
            quietAppendable$BaseAppendable.append("<![CDATA[").append(coreValue).append("]]>");
        } else {
            quietAppendable$BaseAppendable.append("/*<![CDATA[*/\n").append(coreValue).append("\n/*]]>*/");
        }
    }

    @Override // org.jsoup.nodes.Node
    public final Node clone() {
        return (DataNode) super.clone();
    }
}
