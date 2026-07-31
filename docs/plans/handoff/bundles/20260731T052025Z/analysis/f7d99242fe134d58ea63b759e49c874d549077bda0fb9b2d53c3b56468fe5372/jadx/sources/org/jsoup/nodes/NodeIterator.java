package org.jsoup.nodes;

import java.util.Iterator;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NodeIterator implements Iterator {
    public Node current;
    public Node currentParent;
    public Node next;
    public Node previous;
    public Node root;
    public final Class type;

    public NodeIterator(Element element, Class cls) {
        this.type = cls;
        if (cls.isInstance(element)) {
            this.next = element;
        }
        this.current = element;
        this.previous = element;
        this.root = element;
        this.currentParent = (Element) element.parentNode;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        maybeFindNext();
        return this.next != null;
    }

    public final void maybeFindNext() {
        Node node;
        if (this.next != null) {
            return;
        }
        if (this.currentParent != null && this.current.parentNode == null) {
            this.current = this.previous;
        }
        Node node2 = this.current;
        loop0: while (true) {
            node = null;
            if (node2.childNodeSize() > 0) {
                node2 = node2.childNode(0);
            } else {
                Node node3 = this.root;
                node3.getClass();
                if (node3 == node2) {
                    node2 = null;
                } else if (node2.nextSibling() != null) {
                    node2 = node2.nextSibling();
                } else {
                    do {
                        node2 = node2.parent();
                        if (node2 == null) {
                            break loop0;
                        }
                        Node node4 = this.root;
                        node4.getClass();
                        if (node4 == node2) {
                            break loop0;
                        }
                    } while (node2.nextSibling() == null);
                    node2 = node2.nextSibling();
                }
            }
            if (node2 == null) {
                break;
            } else if (this.type.isInstance(node2)) {
                node = node2;
                break;
            }
        }
        this.next = node;
    }

    @Override // java.util.Iterator
    public final Object next() {
        maybeFindNext();
        Node node = this.next;
        if (node == null) {
            Regex$$ExternalSyntheticBUOutline0.m990m();
            return null;
        }
        this.previous = this.current;
        this.current = node;
        this.currentParent = node.parent();
        this.next = null;
        return node;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.current.remove();
    }
}
