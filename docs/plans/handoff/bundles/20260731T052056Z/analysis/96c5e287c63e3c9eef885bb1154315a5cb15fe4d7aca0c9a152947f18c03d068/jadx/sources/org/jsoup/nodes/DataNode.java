package org.jsoup.nodes;

import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DataNode extends LeafNode {
    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public final Object mo886clone() {
        return (DataNode) super.mo886clone();
    }

    @Override // org.jsoup.nodes.Node
    public final String nodeName() {
        return "#data";
    }

    @Override // org.jsoup.nodes.Node
    public final void outerHtmlHead(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        String coreValue = coreValue();
        if (outputSettings.syntax != Document.OutputSettings.Syntax.xml || coreValue.contains("<![CDATA[")) {
            quietAppendable$BaseAppendable.append(coreValue);
            return;
        }
        Element element = this.parentNode;
        if (element != null && element.tag.normalName.equals("script")) {
            quietAppendable$BaseAppendable.append("//<![CDATA[\n").append(coreValue).append("\n//]]>");
            return;
        }
        Element element2 = this.parentNode;
        if (element2 == null || !element2.tag.normalName.equals("style")) {
            quietAppendable$BaseAppendable.append("<![CDATA[").append(coreValue).append("]]>");
        } else {
            quietAppendable$BaseAppendable.append("/*<![CDATA[*/\n").append(coreValue).append("\n/*]]>*/");
        }
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public final Node mo886clone() {
        return (DataNode) super.mo886clone();
    }
}
