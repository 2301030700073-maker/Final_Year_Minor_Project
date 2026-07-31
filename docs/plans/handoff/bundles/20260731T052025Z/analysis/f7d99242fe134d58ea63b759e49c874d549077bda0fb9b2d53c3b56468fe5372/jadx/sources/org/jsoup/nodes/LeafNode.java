package org.jsoup.nodes;

import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Functions;
import org.jsoup.parser.ParseSettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LeafNode extends Node {
    public Object value;

    public LeafNode(String str) {
        Validate.notNull(str);
        this.value = str;
    }

    @Override // org.jsoup.nodes.Node
    public final String absUrl(String str) {
        ensureAttributes();
        return super.absUrl(str);
    }

    public final void attr(String str, String str2) {
        if (!(this.value instanceof Attributes) && str.equals("#doctype")) {
            this.value = str2;
            return;
        }
        ensureAttributes();
        ParseSettings parseSettings = NodeUtils.parser(this).settings;
        parseSettings.getClass();
        String trim = str.trim();
        if (!parseSettings.preserveAttributeCase) {
            trim = Functions.lowerCase(trim);
        }
        attributes().putIgnoreCase(trim, str2);
    }

    @Override // org.jsoup.nodes.Node
    public final Attributes attributes() {
        ensureAttributes();
        return (Attributes) this.value;
    }

    @Override // org.jsoup.nodes.Node
    public final String baseUri() {
        Node node = this.parentNode;
        return node != null ? node.baseUri() : "";
    }

    @Override // org.jsoup.nodes.Node
    public final int childNodeSize() {
        return 0;
    }

    public final String coreValue() {
        return attr(nodeName());
    }

    @Override // org.jsoup.nodes.Node
    public final Node doClone(Node node) {
        LeafNode leafNode = (LeafNode) super.doClone(node);
        Object obj = this.value;
        if (obj instanceof Attributes) {
            leafNode.value = ((Attributes) obj).clone();
        }
        return leafNode;
    }

    public final void ensureAttributes() {
        Object obj = this.value;
        if (obj instanceof Attributes) {
            return;
        }
        Attributes attributes = new Attributes();
        this.value = attributes;
        attributes.put(nodeName(), (String) obj);
    }

    @Override // org.jsoup.nodes.Node
    public final List ensureChildNodes() {
        return Node.EmptyNodes;
    }

    @Override // org.jsoup.nodes.Node
    public final boolean hasAttr(String str) {
        ensureAttributes();
        return super.hasAttr("href");
    }

    @Override // org.jsoup.nodes.Node
    public final boolean hasAttributes() {
        return this.value instanceof Attributes;
    }

    @Override // org.jsoup.nodes.Node
    public final Node empty() {
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public final String attr(String str) {
        if (this.value instanceof Attributes) {
            return super.attr(str);
        }
        return nodeName().equals(str) ? (String) this.value : "";
    }
}
