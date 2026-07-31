package org.jsoup.nodes;

import androidx.room.Room;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LeafNode extends Node {
    public Object value;

    public LeafNode(String str) {
        Room.notNull(str);
        this.value = str;
    }

    @Override // org.jsoup.nodes.Node
    public final String absUrl(String str) {
        ensureAttributes();
        return super.absUrl(str);
    }

    @Override // org.jsoup.nodes.Node
    public final String attr(String str) {
        return !(this.value instanceof Attributes) ? nodeName().equals(str) ? (String) this.value : "" : super.attr(str);
    }

    @Override // org.jsoup.nodes.Node
    public final Attributes attributes() {
        ensureAttributes();
        return (Attributes) this.value;
    }

    @Override // org.jsoup.nodes.Node
    public final String baseUri() {
        Element element = this.parentNode;
        return element != null ? element.baseUri() : "";
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
    public final boolean hasAttributes() {
        return this.value instanceof Attributes;
    }

    @Override // org.jsoup.nodes.Node
    public final String nodeValue() {
        return coreValue();
    }

    @Override // org.jsoup.nodes.Node
    public final Element parent() {
        return this.parentNode;
    }
}
