package org.jsoup.nodes;

import androidx.room.Room;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.function.Function$CC;
import j$.util.stream.Collector;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.regex.Pattern;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda1;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda2;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda3;
import org.jsoup.nodes.Document;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;
import org.jsoup.parser.TagSet;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Element extends Node implements Iterable, Iterable {
    public static final String BaseUriKey;
    public static final List EmptyChildren = Collections.EMPTY_LIST;
    public static final NodeList EmptyNodeList = new NodeList(0);
    public Attributes attributes;
    public NodeList childNodes;
    public final Tag tag;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NodeList extends ArrayList {
        public boolean validChildren;

        public NodeList(int i) {
            super(i);
            this.validChildren = true;
        }

        public final void incrementMod() {
            ((ArrayList) this).modCount++;
        }

        public final int modCount() {
            return ((ArrayList) this).modCount;
        }
    }

    static {
        Pattern.compile("\\s+");
        BaseUriKey = "/".concat("baseUri");
    }

    public Element(Tag tag, String str, Attributes attributes) {
        Room.notNull(tag);
        this.childNodes = EmptyNodeList;
        this.attributes = attributes;
        this.tag = tag;
        if (StringUtil.isBlank(str)) {
            return;
        }
        Room.notNull(str);
        doSetBaseUri(str);
    }

    public static void appendNormalisedText(StringBuilder sb, TextNode textNode) {
        String coreValue = textNode.coreValue();
        Element element = textNode.parentNode;
        if (element != null) {
            int i = 0;
            while ((element.tag.options & 64) == 0) {
                element = element.parentNode;
                i++;
                if (i < 6 && element != null) {
                }
            }
            sb.append(coreValue);
        }
        if (!(textNode instanceof CDataNode)) {
            StringUtil.appendNormalisedWhitespace(coreValue, sb, TextNode.lastCharIsWhitespace(sb));
            return;
        }
        sb.append(coreValue);
    }

    public final void appendChild(Node node) {
        Room.notNull(node);
        Element element = node.parentNode;
        if (element != null) {
            element.removeChild(node);
        }
        node.parentNode = this;
        ensureChildNodes();
        this.childNodes.add(node);
        node.siblingIndex = this.childNodes.size() - 1;
    }

    public final Element appendElement(String str) {
        String str2 = this.tag.namespace;
        Document ownerDocument = ownerDocument();
        Parser parser = ownerDocument != null ? ownerDocument.parser : new Parser(new HtmlTreeBuilder());
        TagSet tagSet = parser.tagSet;
        if (tagSet == null) {
            tagSet = new TagSet(TagSet.HtmlTagSet, null);
            parser.tagSet = tagSet;
        }
        Element element = new Element(tagSet.valueOf(str, null, str2, parser.settings.preserveTagCase), baseUri(), null);
        appendChild(element);
        return element;
    }

    @Override // org.jsoup.nodes.Node
    public final Attributes attributes() {
        Attributes attributes = this.attributes;
        if (attributes != null) {
            return attributes;
        }
        Attributes attributes2 = new Attributes();
        this.attributes = attributes2;
        return attributes2;
    }

    @Override // org.jsoup.nodes.Node
    public final String baseUri() {
        String str;
        while (true) {
            if (this == null) {
                str = null;
                break;
            }
            Attributes attributes = this.attributes;
            if (attributes != null) {
                String str2 = BaseUriKey;
                if (attributes.hasKey(str2)) {
                    str = this.attributes.get(str2);
                    break;
                }
            }
            this = this.parentNode;
        }
        return str != null ? str : "";
    }

    public final List cachedChildren() {
        List list;
        Integer num;
        Attributes attributes = this.attributes;
        if (attributes != null && attributes.hasKey("/jsoup.userdata")) {
            Map userData = this.attributes.userData();
            WeakReference weakReference = (WeakReference) userData.get("jsoup.childEls");
            if (weakReference != null && (list = (List) weakReference.get()) != null && (num = (Integer) userData.get("jsoup.childElsMod")) != null && num.intValue() == this.childNodes.modCount()) {
                return list;
            }
        }
        return null;
    }

    public final List childElementsList() {
        List cachedChildren;
        if (this.childNodes.size() == 0) {
            return EmptyChildren;
        }
        synchronized (this.childNodes) {
            try {
                cachedChildren = cachedChildren();
                if (cachedChildren == null) {
                    cachedChildren = filterNodes(Element.class);
                    Map userData = attributes().userData();
                    userData.put("jsoup.childEls", new WeakReference(cachedChildren));
                    userData.put("jsoup.childElsMod", Integer.valueOf(this.childNodes.modCount()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cachedChildren;
    }

    @Override // org.jsoup.nodes.Node
    public final int childNodeSize() {
        return this.childNodes.size();
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public Element mo886clone() {
        return (Element) super.mo886clone();
    }

    @Override // org.jsoup.nodes.Node
    public final Node doClone(Node node) {
        Element element = (Element) super.doClone(node);
        NodeList nodeList = new NodeList(this.childNodes.size());
        element.childNodes = nodeList;
        nodeList.addAll(this.childNodes);
        Attributes attributes = this.attributes;
        if (attributes != null) {
            Attributes clone = attributes.clone();
            element.attributes = clone;
            if (clone.hasKey("/jsoup.userdata")) {
                clone.userData().remove("jsoup.childEls");
            }
        }
        return element;
    }

    public final void doSetBaseUri(String str) {
        attributes().put(BaseUriKey, str);
    }

    public final int elementSiblingIndex() {
        Element element = this.parentNode;
        if (element == null) {
            return 0;
        }
        List childElementsList = element.childElementsList();
        int size = childElementsList.size();
        for (int i = 0; i < size; i++) {
            if (childElementsList.get(i) == this) {
                return i;
            }
        }
        return 0;
    }

    @Override // org.jsoup.nodes.Node
    public final List ensureChildNodes() {
        NodeList nodeList = this.childNodes;
        if (nodeList != EmptyNodeList) {
            return nodeList;
        }
        NodeList nodeList2 = new NodeList(4);
        this.childNodes = nodeList2;
        return nodeList2;
    }

    public final List filterNodes(final Class cls) {
        return (List) Collection.EL.stream(this.childNodes).filter(new Element$$ExternalSyntheticLambda1(0, cls)).map(new Function() { // from class: org.jsoup.nodes.Element$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo800andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return cls.cast((Node) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).collect(Collectors.collectingAndThen(Collectors.toList(), new Nodes$$ExternalSyntheticLambda0(4)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Element firstElementChild() {
        int size = this.childNodes.size();
        for (int i = 0; i < size; i++) {
            Node node = (Node) this.childNodes.get(i);
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

    public final boolean isBlock() {
        return (this.tag.options & 4) != 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new NodeIterator(this, Element.class);
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return this.tag.tagName;
    }

    @Override // org.jsoup.nodes.Node
    public final String nodeValue() {
        return wholeOwnText();
    }

    @Override // org.jsoup.nodes.Node
    public final String normalName() {
        return this.tag.normalName;
    }

    @Override // org.jsoup.nodes.Node
    public void outerHtmlHead(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        Document.OutputSettings.Syntax syntax = outputSettings.syntax;
        Document.OutputSettings.Syntax syntax2 = Document.OutputSettings.Syntax.xml;
        Tag tag = this.tag;
        String validKey = syntax == syntax2 ? Attribute.getValidKey(tag.tagName, syntax2) : tag.tagName;
        quietAppendable$BaseAppendable.append('<').append(validKey);
        Attributes attributes = this.attributes;
        if (attributes != null) {
            attributes.html(quietAppendable$BaseAppendable, outputSettings);
        }
        if (!this.childNodes.isEmpty()) {
            quietAppendable$BaseAppendable.append('>');
            return;
        }
        boolean z = syntax == syntax2 || !tag.namespace.equals("http://www.w3.org/1999/xhtml");
        if (z && (tag.is(32) || ((1 & tag.options) != 0 && (tag.isEmpty() || tag.isSelfClosing())))) {
            quietAppendable$BaseAppendable.append(" />");
        } else if (z || !tag.isEmpty()) {
            quietAppendable$BaseAppendable.append("></").append(validKey).append('>');
        } else {
            quietAppendable$BaseAppendable.append('>');
        }
    }

    public void outerHtmlTail(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings) {
        if (this.childNodes.isEmpty()) {
            return;
        }
        QuietAppendable$BaseAppendable append = quietAppendable$BaseAppendable.append("</");
        Document.OutputSettings.Syntax syntax = outputSettings.syntax;
        Document.OutputSettings.Syntax syntax2 = Document.OutputSettings.Syntax.xml;
        Tag tag = this.tag;
        append.append(syntax == syntax2 ? Attribute.getValidKey(tag.tagName, syntax2) : tag.tagName).append('>');
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String ownText() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        for (int i = 0; i < this.childNodes.size(); i++) {
            Node node = (Node) this.childNodes.get(i);
            if (node instanceof TextNode) {
                appendNormalisedText(borrowBuilder, (TextNode) node);
            } else if (node.nameIs("br") && !TextNode.lastCharIsWhitespace(borrowBuilder)) {
                borrowBuilder.append(" ");
            }
        }
        return StringUtil.releaseBuilder(borrowBuilder).trim();
    }

    @Override // org.jsoup.nodes.Node
    public final Element parent() {
        return this.parentNode;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public final String wholeOwnText() {
        Stream map = Collection.EL.stream(this.childNodes).map(new Nodes$$ExternalSyntheticLambda0(3));
        String[] strArr = StringUtil.padding;
        return (String) map.collect(Collector.CC.of(new StringUtil$$ExternalSyntheticLambda1(""), new StringUtil$$ExternalSyntheticLambda2(), new StringUtil$$ExternalSyntheticLambda3(), new Nodes$$ExternalSyntheticLambda0(2), new Collector.Characteristics[0]));
    }

    @Override // java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public /* synthetic */ j$.util.Spliterator spliterator() {
        j$.util.Spliterator spliteratorUnknownSize;
        spliteratorUnknownSize = Spliterators.spliteratorUnknownSize(iterator(), 0);
        return spliteratorUnknownSize;
    }
}
