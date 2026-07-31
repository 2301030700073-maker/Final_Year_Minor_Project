package org.jsoup.nodes;

import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class XmlDeclaration extends LeafNode {
    public final boolean isDeclaration;

    public XmlDeclaration(String str, boolean z) {
        super(str);
        this.isDeclaration = z;
    }

    @Override // org.jsoup.nodes.Node
    public final Object clone() {
        return (XmlDeclaration) super.clone();
    }

    @Override // org.jsoup.nodes.Node
    public final String nodeName() {
        return "#declaration";
    }

    @Override // org.jsoup.nodes.Node
    public final void outerHtmlHead(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        QuietAppendable$BaseAppendable append = quietAppendable$BaseAppendable.append("<");
        boolean z = this.isDeclaration;
        append.append(z ? "!" : "?").append(coreValue());
        Attributes attributes = attributes();
        attributes.getClass();
        Attributes.AnonymousClass1 anonymousClass1 = new Attributes.AnonymousClass1(attributes);
        while (anonymousClass1.hasNext()) {
            Attribute attribute = (Attribute) anonymousClass1.next();
            String str = attribute.key;
            String checkNotNull = Attributes.checkNotNull(attribute.val);
            if (!str.equals("#declaration")) {
                quietAppendable$BaseAppendable.append(' ');
                quietAppendable$BaseAppendable.append(str);
                if (!checkNotNull.isEmpty()) {
                    quietAppendable$BaseAppendable.append("=\"");
                    Entities.doEscape(checkNotNull, quietAppendable$BaseAppendable, outputSettings.escapeMode, outputSettings.charset, 2);
                    quietAppendable$BaseAppendable.append('\"');
                }
            }
        }
        quietAppendable$BaseAppendable.append(z ? "" : "?").append(">");
    }

    @Override // org.jsoup.nodes.Node
    public final String toString() {
        return outerHtml();
    }

    @Override // org.jsoup.nodes.Node
    public final Node clone() {
        return (XmlDeclaration) super.clone();
    }
}
