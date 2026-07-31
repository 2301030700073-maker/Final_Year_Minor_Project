package org.jsoup.select;

import java.util.Iterator;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Elements extends Nodes {
    @Override // java.util.ArrayList
    public final Object clone() {
        Elements elements = new Elements(size());
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            elements.add(((Element) it.next()).mo886clone());
        }
        return elements;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        return (Element) super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        return (Element) super.set(i, (Node) obj);
    }

    @Override // org.jsoup.select.Nodes, java.util.ArrayList, java.util.AbstractList, java.util.List
    public final Node remove(int i) {
        return (Element) super.remove(i);
    }

    @Override // org.jsoup.select.Nodes
    public final Node set(int i, Node node) {
        return (Element) super.set(i, node);
    }
}
