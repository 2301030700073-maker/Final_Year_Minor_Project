package org.jsoup.nodes;

import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DocumentType extends LeafNode {
    public static final String InternalSubsetKey = "/".concat("doctypeInternalSubset");

    public final boolean has(String str) {
        return !StringUtil.isBlank(attr(str));
    }

    @Override // org.jsoup.nodes.Node
    public final String nodeName() {
        return "#doctype";
    }

    @Override // org.jsoup.nodes.Node
    public final void outerHtmlHead(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        if (outputSettings.syntax != Document.OutputSettings.Syntax.html || has("publicId") || has("systemId")) {
            quietAppendable$BaseAppendable.append("<!DOCTYPE");
        } else {
            quietAppendable$BaseAppendable.append("<!doctype");
        }
        if (has("name")) {
            quietAppendable$BaseAppendable.append(" ").append(attr("name"));
        }
        if (has("pubSysKey")) {
            quietAppendable$BaseAppendable.append(" ").append(attr("pubSysKey"));
        }
        if (has("publicId")) {
            quietAppendable$BaseAppendable.append(" \"").append(attr("publicId")).append('\"');
        }
        if (has("systemId")) {
            quietAppendable$BaseAppendable.append(" \"").append(attr("systemId")).append('\"');
        }
        Attributes attributes = attributes();
        String str = InternalSubsetKey;
        if (attributes.hasKey(str)) {
            quietAppendable$BaseAppendable.append(" [").append(attr(str)).append(']');
        }
        quietAppendable$BaseAppendable.append('>');
    }
}
