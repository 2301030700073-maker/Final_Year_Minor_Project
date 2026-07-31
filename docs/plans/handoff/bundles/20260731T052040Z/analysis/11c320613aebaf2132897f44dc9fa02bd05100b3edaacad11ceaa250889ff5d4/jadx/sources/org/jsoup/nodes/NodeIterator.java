package org.jsoup.nodes;

import androidx.sqlite.SQLite;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NodeIterator implements Iterator {
    public Node current;
    public Node currentParent;
    public Node next;
    public Node previous;
    public Node root;
    public final Class type;

    public NodeIterator(Node node, Class cls) {
        SQLite.notNull(node);
        this.type = cls;
        if (cls.isInstance(node)) {
            this.next = node;
        }
        this.current = node;
        this.previous = node;
        this.root = node;
        this.currentParent = node.parent$1();
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
                        node2 = node2.parent$1();
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
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
            return null;
        }
        this.previous = this.current;
        this.current = node;
        this.currentParent = node.parent$1();
        this.next = null;
        return node;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.current.remove();
    }
}
