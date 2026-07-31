package org.jsoup.nodes;

import androidx.compose.runtime.Latch;
import androidx.room.Room;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.NodeTraversor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Node implements Cloneable {
    public static final List EmptyNodes = Collections.EMPTY_LIST;
    public Element parentNode;
    public int siblingIndex;

    public String absUrl(String str) {
        Room.notEmpty(str);
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

    public String attr(String str) {
        Room.notNull(str);
        if (!hasAttributes()) {
            return "";
        }
        String ignoreCase = attributes().getIgnoreCase(str);
        return ignoreCase.length() > 0 ? ignoreCase : str.startsWith("abs:") ? absUrl(str.substring(4)) : "";
    }

    public abstract Attributes attributes();

    public abstract String baseUri();

    public final Node childNode(int i) {
        return (Node) ensureChildNodes().get(i);
    }

    public abstract int childNodeSize();

    @Override // 
    /* renamed from: clone */
    public Node mo886clone() {
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
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
        Room.notNull(str);
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

    public String outerHtml() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        QuietAppendable$BaseAppendable wrap = QuietAppendable$BaseAppendable.wrap(borrowBuilder);
        Document ownerDocument = ownerDocument();
        if (ownerDocument == null) {
            ownerDocument = new Document();
        }
        Document.OutputSettings outputSettings = ownerDocument.outputSettings;
        outputSettings.getClass();
        Latch latch = new Latch(this, wrap, outputSettings);
        latch._isOpen = false;
        Node node = this;
        while (true) {
            if (node != null) {
                if ((node instanceof Element) && ((Element) node).tag.is(64)) {
                    latch._isOpen = true;
                    break;
                }
                node = node.parentNode;
            } else {
                break;
            }
        }
        NodeTraversor.traverse(latch, this);
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

    public abstract Element parent();

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
        Room.isTrue(node.parentNode == this);
        Element element = (Element) this;
        if (element.childNodes.validChildren) {
            ((ArrayList) ensureChildNodes()).remove(node.siblingIndex);
        } else {
            ((ArrayList) ensureChildNodes()).remove(node);
        }
        element.childNodes.validChildren = false;
        node.parentNode = null;
    }

    public final void replaceWith(Node node) {
        Room.notNull(node);
        Element element = this.parentNode;
        if (element == null) {
            element = node.parentNode;
            this.parentNode = element;
        }
        Room.notNull(element);
        Element element2 = this.parentNode;
        element2.getClass();
        Room.isTrue(this.parentNode == element2);
        if (this == node) {
            return;
        }
        Element element3 = node.parentNode;
        if (element3 != null) {
            element3.removeChild(node);
        }
        int siblingIndex = siblingIndex();
        ((ArrayList) element2.ensureChildNodes()).set(siblingIndex, node);
        node.parentNode = element2;
        node.siblingIndex = siblingIndex;
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
}
