package org.jsoup.nodes;

import androidx.sqlite.SQLite;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DocumentType extends LeafNode {
    public static final String InternalSubsetKey = "/".concat("doctypeInternalSubset");

    public DocumentType(String str, String str2, String str3) {
        super(str);
        SQLite.notNull(str2);
        SQLite.notNull(str3);
        Attributes attributes = attributes();
        attributes.addObject("name", str);
        attributes.addObject("publicId", str2);
        attributes.addObject("systemId", str3);
        if (has("publicId")) {
            attributes().addObject("pubSysKey", "PUBLIC");
        } else if (has("systemId")) {
            attributes().addObject("pubSysKey", "SYSTEM");
        }
    }

    public final boolean has(String str) {
        return !StringUtil.isBlank(attr(str));
    }

    @Override // org.jsoup.nodes.Node
    public final String nodeName() {
        return "#doctype";
    }

    @Override // org.jsoup.nodes.Node
    public final void outerHtmlHead(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        if (outputSettings.syntax != 1 || has("publicId") || has("systemId")) {
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
