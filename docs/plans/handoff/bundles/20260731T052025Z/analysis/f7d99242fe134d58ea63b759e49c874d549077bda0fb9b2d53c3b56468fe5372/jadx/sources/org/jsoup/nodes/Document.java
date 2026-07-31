package org.jsoup.nodes;

import java.nio.charset.Charset;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.DataUtil;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Document extends Element {
    public OutputSettings outputSettings;
    public Parser parser;
    public int quirksMode;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OutputSettings implements Cloneable {
        public Charset charset;
        public Entities.EscapeMode escapeMode;
        public int indentAmount;
        public int maxPaddingWidth;
        public boolean prettyPrint;
        public int syntax;

        public final OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                String name = this.charset.name();
                outputSettings.getClass();
                outputSettings.charset = Charset.forName(name);
                outputSettings.escapeMode = Entities.EscapeMode.valueOf(this.escapeMode.name());
                return outputSettings;
            } catch (CloneNotSupportedException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            }
        }
    }

    public Document(String str, String str2) {
        super(Tag.valueOf("#root", str, ParseSettings.htmlDefault), str2, null);
        OutputSettings outputSettings = new OutputSettings();
        outputSettings.escapeMode = Entities.EscapeMode.base;
        outputSettings.charset = DataUtil.UTF_8;
        outputSettings.prettyPrint = true;
        outputSettings.indentAmount = 1;
        outputSettings.maxPaddingWidth = 30;
        outputSettings.syntax = 1;
        this.outputSettings = outputSettings;
        this.quirksMode = 1;
        this.parser = new Parser(new HtmlTreeBuilder());
    }

    public final Element body() {
        Element firstElementChild = firstElementChild();
        while (true) {
            if (firstElementChild == null) {
                firstElementChild = appendElement("html");
                break;
            }
            if (firstElementChild.nameIs("html")) {
                break;
            }
            firstElementChild = firstElementChild.nextElementSibling();
        }
        for (Element firstElementChild2 = firstElementChild.firstElementChild(); firstElementChild2 != null; firstElementChild2 = firstElementChild2.nextElementSibling()) {
            if (firstElementChild2.nameIs("body") || firstElementChild2.nameIs("frameset")) {
                return firstElementChild2;
            }
        }
        return firstElementChild.appendElement("body");
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public final Document clone() {
        Document document = (Document) super.clone();
        document.outputSettings = this.outputSettings.clone();
        document.parser = this.parser.clone();
        return document;
    }

    public final Element head() {
        Element firstElementChild = firstElementChild();
        while (true) {
            if (firstElementChild == null) {
                firstElementChild = appendElement("html");
                break;
            }
            if (firstElementChild.nameIs("html")) {
                break;
            }
            firstElementChild = firstElementChild.nextElementSibling();
        }
        for (Element firstElementChild2 = firstElementChild.firstElementChild(); firstElementChild2 != null; firstElementChild2 = firstElementChild2.nextElementSibling()) {
            if (firstElementChild2.nameIs("head")) {
                return firstElementChild2;
            }
        }
        Element element = new Element(Tag.valueOf("head", firstElementChild.tag.namespace, NodeUtils.parser(firstElementChild).settings), firstElementChild.baseUri(), null);
        firstElementChild.addChildren(0, element);
        return element;
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public final String nodeName() {
        return "#document";
    }

    @Override // org.jsoup.nodes.Node
    public final String outerHtml() {
        return html();
    }

    @Override // org.jsoup.nodes.Element
    public final Document shallowClone() {
        Document document = new Document(this.tag.namespace, baseUri());
        Attributes attributes = this.attributes;
        if (attributes != null) {
            document.attributes = attributes.clone();
        }
        document.outputSettings = this.outputSettings.clone();
        return document;
    }

    public Document(String str) {
        this("http://www.w3.org/1999/xhtml", str);
    }
}
