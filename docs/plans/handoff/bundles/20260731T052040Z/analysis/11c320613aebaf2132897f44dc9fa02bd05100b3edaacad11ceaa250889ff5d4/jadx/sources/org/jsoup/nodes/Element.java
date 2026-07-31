package org.jsoup.nodes;

import androidx.sqlite.SQLite;
import com.android.tools.r8.RecordTag;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Collectors;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.regex.Pattern;
import kotlin.ranges.RangesKt;
import okhttp3.ConnectionPool;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;
import org.jsoup.parser.TagSet;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.jsoup.select.QueryParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Element extends Node implements Iterable, Iterable {
    public static final String BaseUriKey;
    public static final List EmptyChildren = Collections.EMPTY_LIST;
    public static final NodeList EmptyNodeList = new NodeList(0);
    public Attributes attributes;
    public NodeList childNodes;
    public final Tag tag;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NodeList extends ArrayList {
        boolean validChildren;

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
        SQLite.notNull(tag);
        this.childNodes = EmptyNodeList;
        this.attributes = attributes;
        this.tag = tag;
        if (StringUtil.isBlank(str)) {
            return;
        }
        SQLite.notNull(str);
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
            StringUtil.appendNormalisedWhitespace(sb, coreValue, TextNode.lastCharIsWhitespace(sb));
            return;
        }
        sb.append(coreValue);
    }

    public final void appendChild(Node node) {
        SQLite.notNull(node);
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
        TagSet tagSet = parser.tagSet();
        ParseSettings parseSettings = parser.settings;
        tagSet.getClass();
        Element element = new Element(tagSet.valueOf(str, null, str2, parseSettings.preserveTagCase), baseUri(), null);
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
    public Element clone() {
        return (Element) super.clone();
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
            clone.userData(null, "jsoup.childEls");
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
        if (this.childNodes == EmptyNodeList) {
            this.childNodes = new NodeList(4);
        }
        return this.childNodes;
    }

    public final List filterNodes(Class cls) {
        int i = 0;
        return (List) Collection.EL.stream(this.childNodes).filter(new Element$$ExternalSyntheticLambda1(i, cls)).map(new Element$$ExternalSyntheticLambda2(i, cls)).collect(Collectors.collectingAndThen(Collectors.toList(), new Nodes$$ExternalSyntheticLambda0(8)));
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
        RangesKt.stream(this, Element.class).forEach(consumer);
    }

    public final Elements getElementsByClass(String str) {
        SQLite.notEmpty(str);
        return SQLite.collect(new Evaluator.Id(3, str, false), this);
    }

    public final Elements getElementsByTag(String str) {
        SQLite.notEmpty(str);
        return SQLite.collect(new Evaluator.Id(9, QuietAppendable$BaseAppendable.normalize(str), false), this);
    }

    @Override // org.jsoup.nodes.Node
    public final boolean hasAttributes() {
        return this.attributes != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [org.jsoup.nodes.Printer] */
    /* JADX WARN: Type inference failed for: r5v2, types: [org.jsoup.select.NodeVisitor] */
    /* JADX WARN: Type inference failed for: r5v3, types: [org.jsoup.nodes.Printer, org.jsoup.nodes.Printer$Pretty] */
    public final String html() {
        ?? printer;
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        Node firstChild = firstChild();
        if (firstChild != null) {
            QuietAppendable$BaseAppendable wrap = QuietAppendable$BaseAppendable.wrap(borrowBuilder);
            Document ownerDocument = firstChild.ownerDocument();
            if (ownerDocument == null) {
                ownerDocument = new Document("http://www.w3.org/1999/xhtml");
            }
            Document.OutputSettings outputSettings = ownerDocument.outputSettings;
            outputSettings.getClass();
            int i = 0;
            if (outputSettings.prettyPrint) {
                printer = new Printer.Pretty(i, firstChild, wrap, outputSettings);
                printer.preserveWhitespace = false;
                Node node = firstChild;
                while (true) {
                    if (node != null) {
                        if ((node instanceof Element) && ((Element) node).tag.is(64)) {
                            printer.preserveWhitespace = true;
                            break;
                        }
                        node = node.parentNode;
                    } else {
                        break;
                    }
                }
            } else {
                printer = new Printer(i, firstChild, wrap, outputSettings);
            }
            while (firstChild != null) {
                RecordTag.$default$traverse(printer, firstChild);
                firstChild = firstChild.nextSibling();
            }
        }
        String releaseBuilder = StringUtil.releaseBuilder(borrowBuilder);
        Document ownerDocument2 = ownerDocument();
        if (ownerDocument2 == null) {
            ownerDocument2 = new Document("http://www.w3.org/1999/xhtml");
        }
        return ownerDocument2.outputSettings.prettyPrint ? releaseBuilder.trim() : releaseBuilder;
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
        int i = outputSettings.syntax;
        Tag tag = this.tag;
        String validKey = i == 2 ? Attribute.getValidKey(2, tag.tagName) : tag.tagName;
        quietAppendable$BaseAppendable.append('<').append(validKey);
        Attributes attributes = this.attributes;
        if (attributes != null) {
            attributes.html(quietAppendable$BaseAppendable, outputSettings);
        }
        if (!this.childNodes.isEmpty()) {
            quietAppendable$BaseAppendable.append('>');
            return;
        }
        boolean z = outputSettings.syntax == 2 || !tag.namespace.equals("http://www.w3.org/1999/xhtml");
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
        int i = outputSettings.syntax;
        Tag tag = this.tag;
        append.append(i == 2 ? Attribute.getValidKey(2, tag.tagName) : tag.tagName).append('>');
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
    public final Element parent$1() {
        return this.parentNode;
    }

    public final Elements select(String str) {
        SQLite.notEmpty(str);
        return SQLite.collect(QueryParser.parse(str), this);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public final String text() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        RecordTag.$default$traverse(new ConnectionPool(borrowBuilder, 25), this);
        return StringUtil.releaseBuilder(borrowBuilder).trim();
    }

    public final String wholeOwnText() {
        return (String) Collection.EL.stream(this.childNodes).map(new Nodes$$ExternalSyntheticLambda0(7)).collect(StringUtil.joining(""));
    }

    @Override // java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public /* synthetic */ j$.util.Spliterator spliterator() {
        j$.util.Spliterator spliteratorUnknownSize;
        spliteratorUnknownSize = Spliterators.spliteratorUnknownSize(iterator(), 0);
        return spliteratorUnknownSize;
    }
}
