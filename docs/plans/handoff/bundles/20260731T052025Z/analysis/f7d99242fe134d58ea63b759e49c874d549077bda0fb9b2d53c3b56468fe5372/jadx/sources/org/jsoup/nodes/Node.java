package org.jsoup.nodes;

import j$.util.DesugarCollections;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.jsoup.helper.ValidationException;
import org.jsoup.internal.SoftPool;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Node implements Cloneable {
    public static final List EmptyNodes = Collections.EMPTY_LIST;
    public Node parentNode;
    public int siblingIndex;

    public static void indent(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        String valueOf;
        Appendable append = appendable.append('\n');
        int i2 = i * outputSettings.indentAmount;
        int i3 = outputSettings.maxPaddingWidth;
        String[] strArr = StringUtil.padding;
        Validate.isTrue("width must be >= 0", i2 >= 0);
        Validate.isTrue(i3 >= -1);
        if (i3 != -1) {
            i2 = Math.min(i2, i3);
        }
        String[] strArr2 = StringUtil.padding;
        if (i2 < 21) {
            valueOf = strArr2[i2];
        } else {
            char[] cArr = new char[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                cArr[i4] = ' ';
            }
            valueOf = String.valueOf(cArr);
        }
        append.append(valueOf);
    }

    public String absUrl(String str) {
        Validate.notEmpty(str);
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

    public final void addChildren(int i, Node... nodeArr) {
        Validate.notNull(nodeArr);
        if (nodeArr.length == 0) {
            return;
        }
        List ensureChildNodes = ensureChildNodes();
        Node parent = nodeArr[0].parent();
        if (parent != null && parent.childNodeSize() == nodeArr.length) {
            List ensureChildNodes2 = parent.ensureChildNodes();
            int length = nodeArr.length;
            while (true) {
                int i2 = length - 1;
                if (length <= 0) {
                    boolean z = childNodeSize() == 0;
                    parent.empty();
                    ensureChildNodes.addAll(i, Arrays.asList(nodeArr));
                    int length2 = nodeArr.length;
                    while (true) {
                        int i3 = length2 - 1;
                        if (length2 <= 0) {
                            break;
                        }
                        nodeArr[i3].parentNode = this;
                        length2 = i3;
                    }
                    if (z && nodeArr[0].siblingIndex == 0) {
                        return;
                    }
                    reindexChildren(i);
                    return;
                }
                if (nodeArr[i2] != ensureChildNodes2.get(i2)) {
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
            Node node3 = node2.parentNode;
            if (node3 != null) {
                node3.removeChild(node2);
            }
            node2.parentNode = this;
        }
        ensureChildNodes.addAll(i, Arrays.asList(nodeArr));
        reindexChildren(i);
    }

    public String attr(String str) {
        Validate.notNull(str);
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
            node2.parentNode = node;
            node2.siblingIndex = node == null ? 0 : this.siblingIndex;
            if (node == null && !(this instanceof Document) && (ownerDocument = ownerDocument()) != null) {
                Document shallowClone = ownerDocument.shallowClone();
                node2.parentNode = shallowClone;
                shallowClone.ensureChildNodes().add(node2);
            }
            return node2;
        } catch (CloneNotSupportedException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    public abstract Node empty();

    public abstract List ensureChildNodes();

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public boolean hasAttr(String str) {
        Validate.notNull(str);
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

    public final Node nextSibling() {
        Node node = this.parentNode;
        if (node == null) {
            return null;
        }
        List ensureChildNodes = node.ensureChildNodes();
        int i = this.siblingIndex + 1;
        if (ensureChildNodes.size() > i) {
            return (Node) ensureChildNodes.get(i);
        }
        return null;
    }

    public abstract String nodeName();

    public String normalName() {
        return nodeName();
    }

    public String outerHtml() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        Document ownerDocument = ownerDocument();
        if (ownerDocument == null) {
            ownerDocument = new Document("");
        }
        UuidKt.traverse(new SoftPool(7, borrowBuilder, ownerDocument.outputSettings), this);
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public abstract void outerHtmlHead(Appendable appendable, int i, Document.OutputSettings outputSettings);

    public abstract void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings);

    public final Document ownerDocument() {
        Node root = root();
        if (root instanceof Document) {
            return (Document) root;
        }
        return null;
    }

    public Node parent() {
        return this.parentNode;
    }

    public final Node previousSibling() {
        Node node = this.parentNode;
        if (node != null && this.siblingIndex > 0) {
            return (Node) node.ensureChildNodes().get(this.siblingIndex - 1);
        }
        return null;
    }

    public final void reindexChildren(int i) {
        int childNodeSize = childNodeSize();
        if (childNodeSize == 0) {
            return;
        }
        List ensureChildNodes = ensureChildNodes();
        while (i < childNodeSize) {
            ((Node) ensureChildNodes.get(i)).siblingIndex = i;
            i++;
        }
    }

    public final void remove() {
        Node node = this.parentNode;
        if (node != null) {
            node.removeChild(this);
        }
    }

    public void removeChild(Node node) {
        Validate.isTrue(node.parentNode == this);
        int i = node.siblingIndex;
        ensureChildNodes().remove(i);
        reindexChildren(i);
        node.parentNode = null;
    }

    public final void replaceWith(Element element) {
        Validate.notNull(element);
        if (this.parentNode == null) {
            this.parentNode = element.parentNode;
        }
        Validate.notNull(this.parentNode);
        Node node = this.parentNode;
        node.getClass();
        Validate.isTrue(this.parentNode == node);
        if (this == element) {
            return;
        }
        Node node2 = element.parentNode;
        if (node2 != null) {
            node2.removeChild(element);
        }
        int i = this.siblingIndex;
        node.ensureChildNodes().set(i, element);
        element.parentNode = node;
        element.siblingIndex = i;
        this.parentNode = null;
    }

    public Node root() {
        while (true) {
            Node node = this.parentNode;
            if (node == null) {
                return this;
            }
            this = node;
        }
    }

    public String toString() {
        return outerHtml();
    }
}
