package org.jsoup.nodes;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Collector;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.regex.Pattern;
import kotlin.uuid.UuidKt;
import org.jsoup.helper.Validate;
import org.jsoup.internal.SoftPool;
import org.jsoup.internal.StringUtil;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda1;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda2;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda3;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Tag;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class Element extends Node implements Iterable, Iterable {
    public Attributes attributes;
    public List childNodes;
    public WeakReference shadowChildrenRef;
    public final Tag tag;
    public static final List EmptyChildren = Collections.EMPTY_LIST;
    public static final Pattern ClassSplit = Pattern.compile("\\s+");
    public static final String BaseUriKey = "/baseUri";

    public Element(Tag tag, String str, Attributes attributes) {
        Validate.notNull(tag);
        this.childNodes = Node.EmptyNodes;
        this.attributes = attributes;
        this.tag = tag;
        if (str != null) {
            doSetBaseUri(str);
        }
    }

    public static boolean preserveWhitespace(Node node) {
        if (node instanceof Element) {
            Element element = (Element) node;
            int i = 0;
            while (!element.tag.preserveWhitespace) {
                element = (Element) element.parentNode;
                i++;
                if (i < 6 && element != null) {
                }
            }
            return true;
        }
        return false;
    }

    public final void appendChild(Node node) {
        Validate.notNull(node);
        Node node2 = node.parentNode;
        if (node2 != null) {
            node2.removeChild(node);
        }
        node.parentNode = this;
        ensureChildNodes();
        this.childNodes.add(node);
        node.siblingIndex = this.childNodes.size() - 1;
    }

    public final Element appendElement(String str) {
        Element element = new Element(Tag.valueOf(str, this.tag.namespace, NodeUtils.parser(this).settings), baseUri(), null);
        appendChild(element);
        return element;
    }

    @Override // org.jsoup.nodes.Node
    public final Attributes attributes() {
        if (this.attributes == null) {
            this.attributes = new Attributes();
        }
        return this.attributes;
    }

    @Override // org.jsoup.nodes.Node
    public final String baseUri() {
        while (this != null) {
            Attributes attributes = this.attributes;
            if (attributes != null) {
                String str = BaseUriKey;
                if (attributes.indexOfKey(str) != -1) {
                    return this.attributes.get(str);
                }
            }
            this = (Element) this.parentNode;
        }
        return "";
    }

    public final List childElementsList() {
        List list;
        if (this.childNodes.size() == 0) {
            return EmptyChildren;
        }
        WeakReference weakReference = this.shadowChildrenRef;
        if (weakReference != null && (list = (List) weakReference.get()) != null) {
            return list;
        }
        int size = this.childNodes.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            Node node = (Node) this.childNodes.get(i);
            if (node instanceof Element) {
                arrayList.add((Element) node);
            }
        }
        this.shadowChildrenRef = new WeakReference(arrayList);
        return arrayList;
    }

    @Override // org.jsoup.nodes.Node
    public final int childNodeSize() {
        return this.childNodes.size();
    }

    @Override // org.jsoup.nodes.Node
    public Element clone() {
        return (Element) super.clone();
    }

    @Override // org.jsoup.nodes.Node
    public final Node doClone(Node node) {
        Element element = (Element) super.doClone(node);
        Attributes attributes = this.attributes;
        element.attributes = attributes != null ? attributes.clone() : null;
        NodeList nodeList = new NodeList(element, this.childNodes.size());
        element.childNodes = nodeList;
        nodeList.addAll(this.childNodes);
        return element;
    }

    public final void doSetBaseUri(String str) {
        attributes().put(BaseUriKey, str);
    }

    public final int elementSiblingIndex() {
        Node node = this.parentNode;
        if (((Element) node) == null) {
            return 0;
        }
        List childElementsList = ((Element) node).childElementsList();
        int size = childElementsList.size();
        for (int i = 0; i < size; i++) {
            if (childElementsList.get(i) == this) {
                return i;
            }
        }
        return 0;
    }

    @Override // org.jsoup.nodes.Node
    public final Node empty() {
        Iterator it = this.childNodes.iterator();
        while (it.hasNext()) {
            ((Node) it.next()).parentNode = null;
        }
        this.childNodes.clear();
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public final List ensureChildNodes() {
        if (this.childNodes == Node.EmptyNodes) {
            this.childNodes = new NodeList(this, 4);
        }
        return this.childNodes;
    }

    public final Element firstElementChild() {
        for (Node node = childNodeSize() == 0 ? null : (Node) ensureChildNodes().get(0); node != null; node = node.nextSibling()) {
            if (node instanceof Element) {
                return (Element) node;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        NodeUtils.stream(this, Element.class).forEach(consumer);
    }

    @Override // org.jsoup.nodes.Node
    public final boolean hasAttributes() {
        return this.attributes != null;
    }

    public final String html() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        int size = this.childNodes.size();
        for (int i = 0; i < size; i++) {
            Node node = (Node) this.childNodes.get(i);
            Document ownerDocument = node.ownerDocument();
            if (ownerDocument == null) {
                ownerDocument = new Document("");
            }
            UuidKt.traverse(new SoftPool(7, borrowBuilder, ownerDocument.outputSettings), node);
        }
        String releaseBuilder = StringUtil.releaseBuilder(borrowBuilder);
        Document ownerDocument2 = ownerDocument();
        if (ownerDocument2 == null) {
            ownerDocument2 = new Document("");
        }
        return ownerDocument2.outputSettings.prettyPrint ? releaseBuilder.trim() : releaseBuilder;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new NodeIterator(this, Element.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.jsoup.nodes.Element] */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.jsoup.nodes.Node] */
    /* JADX WARN: Type inference failed for: r1v2, types: [org.jsoup.nodes.Node] */
    public final Element nextElementSibling() {
        do {
            this = this.nextSibling();
            if (this == 0) {
                return null;
            }
        } while (!(this instanceof Element));
        return (Element) this;
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return this.tag.tagName;
    }

    @Override // org.jsoup.nodes.Node
    public final String normalName() {
        return this.tag.normalName;
    }

    @Override // org.jsoup.nodes.Node
    public void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        boolean z;
        boolean shouldIndent = shouldIndent(outputSettings);
        int i2 = outputSettings.syntax;
        if (shouldIndent) {
            if (!(appendable instanceof StringBuilder)) {
                Node.indent(appendable, i, outputSettings);
            } else if (((StringBuilder) appendable).length() > 0) {
                Node.indent(appendable, i, outputSettings);
            }
        }
        Appendable append = appendable.append('<');
        Tag tag = this.tag;
        append.append(i2 == 2 ? tag.tagName.replace('<', '_') : tag.tagName);
        Attributes attributes = this.attributes;
        if (attributes != null) {
            attributes.html(appendable, outputSettings);
        }
        if (!this.childNodes.isEmpty() || (!(z = tag.empty) && !tag.selfClosing)) {
            appendable.append('>');
        } else if (i2 == 1 && z) {
            appendable.append('>');
        } else {
            appendable.append(" />");
        }
    }

    @Override // org.jsoup.nodes.Node
    public void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        boolean isEmpty = this.childNodes.isEmpty();
        Tag tag = this.tag;
        if (isEmpty && (tag.empty || tag.selfClosing)) {
            return;
        }
        if (outputSettings.prettyPrint && !this.childNodes.isEmpty() && tag.formatAsBlock && !preserveWhitespace(this.parentNode)) {
            Node.indent(appendable, i, outputSettings);
        }
        appendable.append("</").append(outputSettings.syntax == 2 ? tag.tagName.replace('<', '_') : tag.tagName).append('>');
    }

    public final String ownText() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        for (int i = 0; i < this.childNodes.size(); i++) {
            Node node = (Node) this.childNodes.get(i);
            if (node instanceof TextNode) {
                TextNode textNode = (TextNode) node;
                String coreValue = textNode.coreValue();
                if (preserveWhitespace(textNode.parentNode) || (textNode instanceof CDataNode)) {
                    borrowBuilder.append(coreValue);
                } else {
                    StringUtil.appendNormalisedWhitespace(coreValue, borrowBuilder, TextNode.lastCharIsWhitespace(borrowBuilder));
                }
            } else if (node.nameIs("br") && !TextNode.lastCharIsWhitespace(borrowBuilder)) {
                borrowBuilder.append(" ");
            }
        }
        return StringUtil.releaseBuilder(borrowBuilder).trim();
    }

    @Override // org.jsoup.nodes.Node
    public final Node parent() {
        return (Element) this.parentNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.nodes.Node] */
    @Override // org.jsoup.nodes.Node
    public final Node root() {
        while (true) {
            ?? r0 = this.parentNode;
            if (r0 == 0) {
                return this;
            }
            this = r0;
        }
    }

    public Element shallowClone() {
        String baseUri = baseUri();
        if (baseUri.isEmpty()) {
            baseUri = null;
        }
        Attributes attributes = this.attributes;
        return new Element(this.tag, baseUri, attributes != null ? attributes.clone() : null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0040, code lost:
    
        if (org.jsoup.internal.StringUtil.isBlank(((org.jsoup.nodes.TextNode) r3).coreValue()) != false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean shouldIndent(org.jsoup.nodes.Document.OutputSettings r3) {
        /*
            r2 = this;
            boolean r3 = r3.prettyPrint
            if (r3 == 0) goto L55
            org.jsoup.parser.Tag r3 = r2.tag
            boolean r3 = r3.isBlock
            if (r3 != 0) goto L17
            org.jsoup.nodes.Node r0 = r2.parentNode
            org.jsoup.nodes.Element r0 = (org.jsoup.nodes.Element) r0
            if (r0 == 0) goto L55
            org.jsoup.parser.Tag r0 = r0.tag
            boolean r0 = r0.formatAsBlock
            if (r0 != 0) goto L17
            goto L55
        L17:
            r0 = 1
            if (r3 == 0) goto L1b
            goto L4c
        L1b:
            org.jsoup.nodes.Node r3 = r2.parentNode
            org.jsoup.nodes.Element r3 = (org.jsoup.nodes.Element) r3
            if (r3 == 0) goto L27
            org.jsoup.parser.Tag r3 = r3.tag
            boolean r3 = r3.isBlock
            if (r3 == 0) goto L4c
        L27:
            int r3 = r2.siblingIndex
            if (r3 != 0) goto L2c
            goto L4c
        L2c:
            if (r3 != r0) goto L43
            org.jsoup.nodes.Node r3 = r2.previousSibling()
            boolean r1 = r3 instanceof org.jsoup.nodes.TextNode
            if (r1 == 0) goto L43
            org.jsoup.nodes.TextNode r3 = (org.jsoup.nodes.TextNode) r3
            java.lang.String r3 = r3.coreValue()
            boolean r3 = org.jsoup.internal.StringUtil.isBlank(r3)
            if (r3 == 0) goto L43
            goto L4c
        L43:
            java.lang.String r3 = "br"
            boolean r3 = r2.nameIs(r3)
            if (r3 != 0) goto L4c
            goto L55
        L4c:
            org.jsoup.nodes.Node r2 = r2.parentNode
            boolean r2 = preserveWhitespace(r2)
            if (r2 != 0) goto L55
            return r0
        L55:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.Element.shouldIndent(org.jsoup.nodes.Document$OutputSettings):boolean");
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public final List textNodes() {
        return (List) Collection.EL.stream(this.childNodes).filter(new Element$$ExternalSyntheticLambda0()).map(new Element$$ExternalSyntheticLambda1(0)).collect(Collectors.collectingAndThen(Collectors.toList(), new Element$$ExternalSyntheticLambda1(6)));
    }

    public final String wholeOwnText() {
        Stream map = Collection.EL.stream(this.childNodes).map(new Element$$ExternalSyntheticLambda1(7));
        String[] strArr = StringUtil.padding;
        return (String) map.collect(Collector.CC.of(new StringUtil$$ExternalSyntheticLambda1(""), new StringUtil$$ExternalSyntheticLambda2(), new StringUtil$$ExternalSyntheticLambda3(), new Element$$ExternalSyntheticLambda1(5), new Collector.Characteristics[0]));
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NodeList extends ArrayList {
        public final Element owner;

        public NodeList(Element element, int i) {
            super(i);
            this.owner = element;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean add(Object obj) {
            onContentsChanged();
            return super.add(obj);
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean addAll(java.util.Collection collection) {
            onContentsChanged();
            return super.addAll(collection);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            onContentsChanged();
            super.clear();
        }

        public final void onContentsChanged() {
            this.owner.shadowChildrenRef = null;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final Object remove(int i) {
            onContentsChanged();
            return super.remove(i);
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean removeAll(java.util.Collection collection) {
            onContentsChanged();
            return super.removeAll(collection);
        }

        @Override // java.util.ArrayList, java.util.AbstractList
        public final void removeRange(int i, int i2) {
            onContentsChanged();
            super.removeRange(i, i2);
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean retainAll(java.util.Collection collection) {
            onContentsChanged();
            return super.retainAll(collection);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final Object set(int i, Object obj) {
            onContentsChanged();
            return super.set(i, obj);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final void add(int i, Object obj) {
            onContentsChanged();
            super.add(i, obj);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final boolean addAll(int i, java.util.Collection collection) {
            onContentsChanged();
            return super.addAll(i, collection);
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean remove(Object obj) {
            onContentsChanged();
            return super.remove(obj);
        }
    }

    @Override // java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public /* synthetic */ j$.util.Spliterator spliterator() {
        j$.util.Spliterator spliteratorUnknownSize;
        spliteratorUnknownSize = Spliterators.spliteratorUnknownSize(iterator(), 0);
        return spliteratorUnknownSize;
    }
}
