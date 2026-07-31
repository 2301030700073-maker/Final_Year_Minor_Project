package org.jsoup.nodes;

import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DocumentType extends LeafNode {
    public final boolean has(String str) {
        return !StringUtil.isBlank(attr(str));
    }

    @Override // org.jsoup.nodes.Node
    public final String nodeName() {
        return "#doctype";
    }

    @Override // org.jsoup.nodes.Node
    public final void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        if (this.siblingIndex > 0 && outputSettings.prettyPrint) {
            appendable.append('\n');
        }
        if (outputSettings.syntax != 1 || has("publicId") || has("systemId")) {
            appendable.append("<!DOCTYPE");
        } else {
            appendable.append("<!doctype");
        }
        if (has("name")) {
            appendable.append(" ").append(attr("name"));
        }
        if (has("pubSysKey")) {
            appendable.append(" ").append(attr("pubSysKey"));
        }
        if (has("publicId")) {
            appendable.append(" \"").append(attr("publicId")).append('\"');
        }
        if (has("systemId")) {
            appendable.append(" \"").append(attr("systemId")).append('\"');
        }
        appendable.append('>');
    }

    @Override // org.jsoup.nodes.Node
    public final void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }
}
