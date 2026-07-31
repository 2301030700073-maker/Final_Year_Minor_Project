package org.jsoup.nodes;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.nio.charset.Charset;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.helper.DataUtil;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Document extends Element {
    public OutputSettings outputSettings;
    public Parser parser;
    public int quirksMode;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class OutputSettings implements Cloneable {
        public Entities.EscapeMode escapeMode = Entities.EscapeMode.base;
        public Charset charset = DataUtil.UTF_8;
        public boolean prettyPrint = true;
        public final int indentAmount = 1;
        public final int maxPaddingWidth = 30;
        public int syntax = 1;

        public final OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                String name = this.charset.name();
                outputSettings.getClass();
                outputSettings.charset = Charset.forName(name);
                outputSettings.escapeMode = Entities.EscapeMode.valueOf(this.escapeMode.name());
                return outputSettings;
            } catch (CloneNotSupportedException e) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m((Throwable) e);
                return null;
            }
        }
    }

    public Document(String str, String str2, Parser parser) {
        super(new Tag("#root", QuietAppendable$BaseAppendable.normalize("#root"), str), str2, null);
        this.outputSettings = new OutputSettings();
        this.quirksMode = 1;
        this.parser = parser;
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
            if (firstElementChild2.nameIs(TtmlNode.TAG_BODY) || firstElementChild2.nameIs("frameset")) {
                return firstElementChild2;
            }
        }
        return firstElementChild.appendElement(TtmlNode.TAG_BODY);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ea, code lost:
    
        if (r10.coreValue().equals("xml") != false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void charset(java.nio.charset.Charset r10) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.Document.charset(java.nio.charset.Charset):void");
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public final Document clone() {
        Document document = (Document) super.clone();
        Attributes attributes = this.attributes;
        if (attributes != null) {
            document.attributes = attributes.clone();
        }
        document.outputSettings = this.outputSettings.clone();
        return document;
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public final String nodeName() {
        return "#document";
    }

    @Override // org.jsoup.nodes.Node
    public final String outerHtml() {
        return html();
    }

    public Document(String str) {
        this(str, "", new Parser(new HtmlTreeBuilder()));
    }
}
