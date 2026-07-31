package org.jsoup.nodes;

import androidx.sqlite.SQLite;
import com.android.tools.r8.RecordTag;
import j$.util.DesugarCollections;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.helper.ValidationException;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.ParseSettings;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Node implements Cloneable {
    public static final List EmptyNodes = Collections.EMPTY_LIST;
    public Element parentNode;
    public int siblingIndex;

    public String absUrl(String str) {
        SQLite.notEmpty(str);
        if (!hasAttributes() || attributes().indexOfKeyIgnoreCase(str) == -1) {
            return "";
        }
        String baseUri = baseUri();
        String ignoreCase = attributes().getIgnoreCase(str);
        Pattern pattern = StringUtil.controlChars;
        String replaceAll = pattern.matcher(baseUri).replaceAll("");
        String replaceAll2 = pattern.matcher(ignoreCase).replaceAll("");
        try {
            try {
                return StringUtil.resolve(new URL(replaceAll), replaceAll2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(replaceAll2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return StringUtil.validUriScheme.matcher(replaceAll2).find() ? replaceAll2 : "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void addChildren(int i, Node... nodeArr) {
        Element.NodeList nodeList;
        SQLite.notNull(nodeArr);
        if (nodeArr.length == 0) {
            return;
        }
        List ensureChildNodes = ensureChildNodes();
        Element parent$1 = nodeArr[0].parent$1();
        if (parent$1 != null && parent$1.childNodes.size() == nodeArr.length) {
            List ensureChildNodes2 = parent$1.ensureChildNodes();
            int length = nodeArr.length;
            while (true) {
                int i2 = length - 1;
                if (length <= 0) {
                    int size = parent$1.childNodes.size();
                    int i3 = 0;
                    while (true) {
                        nodeList = parent$1.childNodes;
                        if (i3 >= size) {
                            break;
                        }
                        ((Node) nodeList.get(i3)).parentNode = null;
                        i3++;
                    }
                    nodeList.clear();
                    ensureChildNodes.addAll(i, Arrays.asList(nodeArr));
                    int length2 = nodeArr.length;
                    while (true) {
                        int i4 = length2 - 1;
                        if (length2 <= 0) {
                            ((Element) this).childNodes.validChildren = false;
                            return;
                        } else {
                            nodeArr[i4].parentNode = (Element) this;
                            length2 = i4;
                        }
                    }
                } else if (nodeArr[i2] != ((ArrayList) ensureChildNodes2).get(i2)) {
                    break;
                } else {
                    length = i2;
                }
            }
        }
        for (Node node : nodeArr) {
            if (node == null) {
                throw new ValidationException("Array must not contain any null objects");
            }
        }
        for (Node node2 : nodeArr) {
            node2.getClass();
            Element element = node2.parentNode;
            if (element != null) {
                element.removeChild(node2);
            }
            node2.parentNode = (Element) this;
        }
        ensureChildNodes.addAll(i, Arrays.asList(nodeArr));
        ((Element) this).childNodes.validChildren = false;
    }

    public void attr(String str, String str2) {
        Document ownerDocument = ownerDocument();
        ParseSettings parseSettings = ownerDocument != null ? ownerDocument.parser.settings : ParseSettings.htmlDefault;
        parseSettings.getClass();
        String trim = str.trim();
        if (!parseSettings.preserveAttributeCase) {
            trim = QuietAppendable$BaseAppendable.lowerCase(trim);
        }
        Attributes attributes = attributes();
        int indexOfKeyIgnoreCase = attributes.indexOfKeyIgnoreCase(trim);
        if (indexOfKeyIgnoreCase == -1) {
            attributes.addObject(trim, str2);
            return;
        }
        attributes.vals[indexOfKeyIgnoreCase] = str2;
        if (attributes.keys[indexOfKeyIgnoreCase].equals(trim)) {
            return;
        }
        attributes.keys[indexOfKeyIgnoreCase] = trim;
    }

    public abstract Attributes attributes();

    public abstract String baseUri();

    public final Node childNode(int i) {
        return (Node) ensureChildNodes().get(i);
    }

    public abstract int childNodeSize();

    public final List childNodes() {
        if (childNodeSize() == 0) {
            return EmptyNodes;
        }
        List ensureChildNodes = ensureChildNodes();
        ArrayList arrayList = new ArrayList(ensureChildNodes.size());
        arrayList.addAll(ensureChildNodes);
        return DesugarCollections.unmodifiableList(arrayList);
    }

    @Override // 
    public Node clone() {
        Node doClone = doClone(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(doClone);
        while (!linkedList.isEmpty()) {
            Node node = (Node) linkedList.remove();
            int childNodeSize = node.childNodeSize();
            for (int i = 0; i < childNodeSize; i++) {
                List ensureChildNodes = node.ensureChildNodes();
                Node doClone2 = ((Node) ensureChildNodes.get(i)).doClone(node);
                ensureChildNodes.set(i, doClone2);
                linkedList.add(doClone2);
            }
        }
        return doClone;
    }

    public Node doClone(Node node) {
        Document ownerDocument;
        try {
            Node node2 = (Node) super.clone();
            node2.parentNode = (Element) node;
            node2.siblingIndex = node == null ? 0 : siblingIndex();
            if (node == null && !(this instanceof Document) && (ownerDocument = ownerDocument()) != null) {
                Document document = new Document(ownerDocument.tag.namespace, ownerDocument.baseUri(), ownerDocument.parser);
                Attributes attributes = ownerDocument.attributes;
                if (attributes != null) {
                    document.attributes = attributes.clone();
                }
                document.outputSettings = ownerDocument.outputSettings.clone();
                node2.parentNode = document;
                ((ArrayList) document.ensureChildNodes()).add(node2);
            }
            return node2;
        } catch (CloneNotSupportedException e) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m((Throwable) e);
            return null;
        }
    }

    public abstract List ensureChildNodes();

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final Node firstChild() {
        if (childNodeSize() == 0) {
            return null;
        }
        return (Node) ensureChildNodes().get(0);
    }

    public final boolean hasAttr(String str) {
        SQLite.notNull(str);
        if (!hasAttributes()) {
            return false;
        }
        if (str.startsWith("abs:")) {
            String substring = str.substring(4);
            if (attributes().indexOfKeyIgnoreCase(substring) != -1 && !absUrl(substring).isEmpty()) {
                return true;
            }
        }
        return attributes().indexOfKeyIgnoreCase(str) != -1;
    }

    public abstract boolean hasAttributes();

    public final boolean nameIs(String str) {
        return normalName().equals(str);
    }

    public final Element nextElementSibling() {
        do {
            this = this.nextSibling();
            if (this == null) {
                return null;
            }
        } while (!(this instanceof Element));
        return (Element) this;
    }

    public final Node nextSibling() {
        Element element = this.parentNode;
        if (element == null) {
            return null;
        }
        List ensureChildNodes = element.ensureChildNodes();
        int siblingIndex = siblingIndex() + 1;
        ArrayList arrayList = (ArrayList) ensureChildNodes;
        if (arrayList.size() > siblingIndex) {
            return (Node) arrayList.get(siblingIndex);
        }
        return null;
    }

    public abstract String nodeName();

    public abstract String nodeValue();

    public String normalName() {
        return nodeName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.jsoup.nodes.Printer] */
    /* JADX WARN: Type inference failed for: r3v3, types: [org.jsoup.select.NodeVisitor] */
    /* JADX WARN: Type inference failed for: r3v4, types: [org.jsoup.nodes.Printer, org.jsoup.nodes.Printer$Pretty] */
    public String outerHtml() {
        ?? printer;
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        QuietAppendable$BaseAppendable wrap = QuietAppendable$BaseAppendable.wrap(borrowBuilder);
        Document ownerDocument = ownerDocument();
        if (ownerDocument == null) {
            ownerDocument = new Document("http://www.w3.org/1999/xhtml");
        }
        Document.OutputSettings outputSettings = ownerDocument.outputSettings;
        outputSettings.getClass();
        int i = 0;
        if (outputSettings.prettyPrint) {
            printer = new Printer.Pretty(i, this, wrap, outputSettings);
            printer.preserveWhitespace = false;
            Node node = this;
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
            printer = new Printer(i, this, wrap, outputSettings);
        }
        RecordTag.$default$traverse(printer, this);
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public abstract void outerHtmlHead(QuietAppendable$BaseAppendable quietAppendable$BaseAppendable, Document.OutputSettings outputSettings);

    public final Document ownerDocument() {
        while (this != null) {
            if (this instanceof Document) {
                return (Document) this;
            }
            this = this.parentNode;
        }
        return null;
    }

    public abstract Element parent$1();

    public final Node previousSibling() {
        if (this.parentNode == null || siblingIndex() <= 0) {
            return null;
        }
        return (Node) ((ArrayList) this.parentNode.ensureChildNodes()).get(this.siblingIndex - 1);
    }

    public final void remove() {
        Element element = this.parentNode;
        if (element != null) {
            element.removeChild(this);
        }
    }

    public void removeChild(Node node) {
        SQLite.isTrue(node.parentNode == this);
        Element element = (Element) this;
        if (element.childNodes.validChildren) {
            ((ArrayList) ensureChildNodes()).remove(node.siblingIndex);
        } else {
            ((ArrayList) ensureChildNodes()).remove(node);
        }
        element.childNodes.validChildren = false;
        node.parentNode = null;
    }

    public final void replaceWith(Element element) {
        SQLite.notNull(element);
        if (this.parentNode == null) {
            this.parentNode = element.parentNode;
        }
        SQLite.notNull(this.parentNode);
        Element element2 = this.parentNode;
        element2.getClass();
        SQLite.isTrue(this.parentNode == element2);
        if (this == element) {
            return;
        }
        Element element3 = element.parentNode;
        if (element3 != null) {
            element3.removeChild(element);
        }
        int siblingIndex = siblingIndex();
        ((ArrayList) element2.ensureChildNodes()).set(siblingIndex, element);
        element.parentNode = element2;
        element.siblingIndex = siblingIndex;
        this.parentNode = null;
        element2.childNodes.incrementMod();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int siblingIndex() {
        Element.NodeList nodeList;
        Element element = this.parentNode;
        if (element != null) {
            Element.NodeList nodeList2 = element.childNodes;
            if (!nodeList2.validChildren) {
                int size = nodeList2.size();
                int i = 0;
                while (true) {
                    nodeList = element.childNodes;
                    if (i >= size) {
                        break;
                    }
                    ((Node) nodeList.get(i)).siblingIndex = i;
                    i++;
                }
                nodeList.validChildren = true;
            }
        }
        return this.siblingIndex;
    }

    public String toString() {
        return outerHtml();
    }

    public String attr(String str) {
        SQLite.notNull(str);
        if (hasAttributes()) {
            String ignoreCase = attributes().getIgnoreCase(str);
            if (ignoreCase.length() > 0) {
                return ignoreCase;
            }
            if (str.startsWith("abs:")) {
                return absUrl(str.substring(4));
            }
            return "";
        }
        return "";
    }
}
